; Disassembly of roms/Boom Bang.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Boom Bang.bin
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
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
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
LF246   =   $F246
LF5A5   =   $F5A5
LF646   =   $F646
LF6B7   =   $F6B7
LF7D3   =   $F7D3
LF831   =   $F831
LF9FE   =   $F9FE
LFCB7   =   $FCB7
LFFD3   =   $FFD3

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
       JSR    LFC7F   
       LDX    $81     
       BNE    LF019   
       INX            
       STX    $81     
       JMP    LF918   
LF019: LDX    #$05    
LF01B: LDA    $AE,X   
       JSR    LFC95   
       DEX            
       BPL    LF01B   
       JSR    LFB8E   
LF026: LDA    INTIM   
       BNE    LF026   
       STA    WSYNC   
       STA    HMOVE   
       BIT    $C4     
       BPL    LF035   
       LDA    #$02    
LF035: STA    VBLANK  
       LDX    #$84    
       JSR    LFBC0   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDA    $E0     
       BNE    LF048   
       LDA    #$0F    
LF048: STA    COLUP0  
       STA    COLUP1  
       STA    VDELP0  
       STA    VDELP1  
       STA    HMCLR   
       JSR    LFC40   
       STA    VDELP0  
       LDA    #$90    
       SBC    $BE     
       STA    $83     
       LDY    #$31    
       LDA    #$13    
       SBC    $C2     
       STA    $FC     
       STY    CTRLPF  
       LDA    #$04    
       STA    $87     
       LDA    $B9     
       CLC            
       ADC    #$07    
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       STA    $89     
       STA    $8B     
       LDA    $CF     
       STA    HMP1    
       LDX    $C7     
LF080: DEX            
       BPL    LF080   
       STA    RESP0   
       STA    RESP1   
       STA    HMP0    
       STY    HMBL    
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$70    
       LDA    #$84    
       STA    COLUBK  
       INX            
       STX    NUSIZ0  
       STX    COLUP1  
       STX    NUSIZ1  
       LDX    #$0A    
       LDA    #$12    
       STA    COLUPF  
       STA    HMCLR   
       STY    HMP1    
       LDA    #$E0    
       STA    HMP0    
       LDA    #$2C    
       STA    COLUP0  
       LDY    $FC     
LF0B0: CPY    #$14    
       BCS    LF0BC   
       LDA    ($A8),Y 
       CMP    #$FF    
       BEQ    LF0DC   
       STA    GRP1    
LF0BC: LDA    #$84    
       NOP            
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       BMI    LF0D1   
       STA    COLUBK  
       LDA    LFE16,X 
       STA    PF0     
       STA    PF1     
       STA    PF2     
LF0D1: BCS    LF0D7   
       LDA    ($A6),Y 
       STA    GRP0    
LF0D7: DEY            
       STA    HMCLR   
       BPL    LF0B0   
LF0DC: JMP    LFFC8   
LF0DF: .byte $FE
LF0E0: STA    WSYNC   
       STX    ENABL   
       STY    GRP0    
       STY    COLUP0  
       STX    GRP1    
       LDX.w  $00CD   
LF0ED: DEX            
       BPL    LF0ED   
       STA    RESP0   
       STA    WSYNC   
       STY    COLUBK  
       STY    GRP1    
       LDX    $CE     
LF0FA: DEX            
       BPL    LF0FA   
       LDA    $D5     
       STA.w  $0020   
       STA    RESP1   
       LDA    $D6     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    $AC     
       STA    NUSIZ0  
       LDA    $AD     
       STA    NUSIZ1  
       LDA    #$08    
       STA    COLUBK  
       ASL    $94     
       STA    HMCLR   
       LDY    #$0A    
       DEC    $8B     
       LDA    $D7     
       AND    #$01    
       BNE    LF17B   
LF126: LDA    ($9A),Y 
       STA    $FD     
       LDA    ($9C),Y 
       STA    WSYNC   
       TAX            
       LDA    ($98),Y 
       STA    GRP0    
       BCC    LF142   
       STA    GRP1    
       LDA    ($9E),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($A0),Y 
       JMP    LF14F   
LF142: LDA    $FD     
       STX    GRP1    
       LDA    ($9E),Y 
       STA    COLUP0  
       LDA    LFDCF,Y 
       STA    COLUP1  
LF14F: STA    COLUP0  
       LDA    $FD     
       STA    GRP0    
       LDA    ($A2),Y 
       STA    COLUP0  
       STX    GRP0    
       DEY            
       BNE    LF126   
       BEQ    LF179   
LF160: STA.w  $001B   
       LDA    ($9E),Y 
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($A0),Y 
       STA.w  $0007   
       LDA    $FD     
       STA    GRP1    
       LDA    ($A2),Y 
       STA    COLUP1  
       STX    GRP1    
LF178: DEY            
LF179: BEQ    LF19F   
LF17B: LDA    ($9C),Y 
       TAX            
       STA    WSYNC   
       LDA    ($9A),Y 
       STA    $FD     
       LDA    ($98),Y 
       STA    GRP1    
       BCS    LF160   
       STX    GRP0    
       NOP            
       LDX    LFDCF,Y 
       STX    COLUP0  
       LDA    ($9E),Y 
       STA    COLUP1  
       STX.w  $0007   
       LDA    $FD     
       STA    GRP1    
       BCC    LF178   
LF19F: STY    $94     
       LDA    #$10    
       STA    WSYNC   
       STA    COLUBK  
       STY    GRP0    
       STY    GRP1    
       STY    NUSIZ0  
       STY    NUSIZ1  
       LDY    $D7     
       LDA    LFFEC,Y 
       LDX    LFEF8,Y 
LF1B7: DEX            
       BPL    LF1B7   
       STA    RESP0   
       STA    HMP0    
       LDA    #$06    
       LDX    $83     
       CPX    #$23    
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       NOP            
       NOP            
       LDA    #$00    
       STA    $83     
       BCS    LF1DA   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
LF1DA: STA    GRP0    
       LDY    #$06    
       NOP            
       NOP            
       DEY            
       STY    $95     
       LDY    #$98    
       STA    HMCLR   
       STY    VDELP1  
       STY    $FB     
       DEX            
       JMP    LF26B   
LF1EF: STY    $FB     
       LDY    $FC     
       CPY    #$08    
       BCS    LF1FB   
       LDA    ($A4),Y 
       STA    GRP1    
LF1FB: DEC    $FC     
       LDY    $FB     
       CPY    #$7A    
       BEQ    LF223   
LF203: LDA    #$00    
       CPX    #$23    
       BCS    LF20F   
       LDY    LFDB7,X 
       LDA    LFD86,X 
LF20F: STY    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       STA    GRP0    
       LDY    $FB     
       LDA    #$84    
       NOP            
       STA    COLUPF  
       DEY            
       JMP    LF1EF   
LF223: STA    WSYNC   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       NOP            
       NOP            
       BNE    LF241   
LF22F: STY    $FB     
       LDY    $FC     
       CPY    #$11    
       BCS    LF23D   
       LDA    ($A4),Y 
       STA    GRP1    
       BEQ    LF26B   
LF23D: DEC    $FC     
LF23F: LDY    $FB     
LF241: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       CPX    #$23    
       BCS    LF255   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
       BEQ    LF265   
LF255: STA    GRP0    
       LDA    LFD14,Y 
       STA    PF2     
       DEX            
       DEY            
       CPY    $B9     
       BNE    LF22F   
       JMP    LF3ED   
LF265: JMP    LF31F   
LF268: JMP    LF3C1   
LF26B: LDY    $FB     
       LDA    LFD14,Y 
       DEC    $95     
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       LDA    #$00    
       CPX    #$23    
       BCS    LF286   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
LF286: STA    GRP0    
       DEX            
       CPY    $8B     
       BCC    LF268   
       LDA    LFD13,Y 
       STA    $FC     
       LDY    $95     
       LDA.wy $008F,Y 
       STA    $A4     
       LDA    #$00    
       CPX    #$23    
       BCS    LF2A7   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
LF2A7: DEX            
       SEC            
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDA    $FC     
       STA    PF2     
       LDA.wy $00C8,Y 
LF2B6: SBC    #$01    
       BCS    LF2B6   
       LDA.wy $00D0,Y 
       STA    RESP1   
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       CPX    #$23    
       BCS    LF2D3   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
       STA    GRP0    
LF2D3: LDY    $FB     
       DEY            
       DEY            
       LDA    LFD14,Y 
       STA    PF2     
       DEY            
       STY    $FB     
       TYA            
       LDY    $95     
       SEC            
       SBC.wy $00B4,Y 
LF2E6: STA    $FC     
       LDA.wy $00EC,Y 
       STA    COLUP1  
       STA    HMCLR   
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       CPX    #$23    
       BCS    LF302   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
       STA    GRP0    
LF302: LDY    $FB     
       LDA    LFD14,Y 
       STA    PF2     
       DEX            
       DEC    $FB     
       LDA    $83     
       BEQ    LF313   
       JMP    LF23F   
LF313: JMP    LFE21   
LF316: .byte $0F
LF317: STA    $83     
       JMP    LF203   
LF31C: JMP    LF3E5   
LF31F: STA    GRP0    
       LDA    LFD14,Y 
       STA    PF2     
       CPY    $89     
       BCC    LF31C   
       DEY            
       STY    $FB     
       LDY    $FC     
       CPY    #$11    
       BCS    LF337   
       LDA    ($A4),Y 
       STA    GRP1    
LF337: INC    $94     
       LDX    $94     
       DEC    $FC     
       STA    WSYNC   
       STA    HMOVE   
       LDY    $FB     
       LDA    #$00    
       STA    GRP0    
       LDA    LFD14,Y 
       STA    PF2     
       CPY    $89     
       BCC    LF31C   
       DEC    $FB     
       LDA    $D7,X   
       TAX            
       LDY    $FC     
       CPY    #$11    
       BCS    LF35F   
       LDA    ($A4),Y 
       STA    GRP1    
LF35F: DEC    $FC     
       LDY    $FB     
       DEC    $FB     
       LDA    LFD14,Y 
       LDY    $FC     
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       SEC            
       LDA    LFEF8,X 
LF378: SBC    #$01    
       BCS    LF378   
       CPY    #$11    
       LDA    LFFEC,X 
       STA    HMP0    
       STA    RESP0   
       BCS    LF38B   
       LDA    ($A4),Y 
       STA    GRP1    
LF38B: DEC    $FC     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    GRP0    
       LDY    $FB     
       LDA    LFD14,Y 
       STA    PF2     
       DEY            
       LDX    $94     
       TYA            
       SEC            
       SBC    $BE,X   
       TAX            
       STA    HMCLR   
       JMP    LF22F   
LF3A9: LDA    LFD14,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    PF2     
       CPX    #$23    
       BCS    LF3C0   
       LDA    LFDB7,X 
       STA    COLUP0  
       LDA    LFD86,X 
       STA    GRP0    
LF3C0: DEX            
LF3C1: DEY            
       CPY    $B9     
       BNE    LF3A9   
       BEQ    LF3EA   
LF3C8: STY    $FB     
       LDY    $FC     
       CPY    #$11    
       BCS    LF3D4   
       LDA    ($A4),Y 
       STA    GRP1    
LF3D4: STA    WSYNC   
       STA    HMOVE   
       DEC    $FC     
       LDA    #$00    
       STA    GRP0    
       LDY    $FB     
       LDA    LFD14,Y 
       STA    PF2     
LF3E5: DEY            
       CPY    $B9     
       BNE    LF3C8   
LF3EA: JMP    LF444   
LF3ED: LDA    $E1     
       BPL    LF444   
       LDA    #$84    
       STA    VDELP1  
       STA    WSYNC   
       STA    COLUPF  
       LDA    $D1     
       LDX    $C9     
       STA    HMP1    
       STY    $FB     
LF401: DEX            
       BPL    LF401   
       STA.w  $0011   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $BA     
       LDX    #$84    
       BNE    LF439   
LF411: LDA    ($A4),Y 
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       STX    COLUPF  
       LDA    $BD     
       LDA    $BD     
       LDA    $E7     
       STA    PF1     
       LDA    $E8     
       STA    PF2     
       LDA    $EB     
       LDA    $EB     
       LDA    $EA     
       STA    PF1     
       STA    PF1     
       LDA    $E9     
       STA    PF2     
       DEC    $FB     
LF439: LDA    #$00    
       DEY            
       BPL    LF411   
       BMI    LF44E   
LF440: NOP            
       NOP            
       BCS    LF48F   
LF444: LDY    $FC     
       LDA    #$00    
       CPY    #$11    
       BCS    LF44E   
       LDA    ($A4),Y 
LF44E: LDY    $87     
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       LDA    LFE12,Y 
       STA    COLUBK  
       STA    COLUPF  
       LDA    ($AA),Y 
       STA    GRP0    
       LDA    LFDD4,Y 
       STA    COLUP0  
       DEC    $FC     
       DEC    $87     
       BPL    LF444   
       LDX    #$08    
       LDA    $E1     
       AND    #$20    
       BEQ    LF477   
       DEX            
LF477: STY    VDELP1  
       STY    COLUP0  
       STA    WSYNC   
       STA    HMOVE   
       STY    COLUBK  
       STY    PF0     
       STY    COLUPF  
       LDY    $FC     
       CPY    #$11    
       BCS    LF440   
       LDA    ($A4),Y 
       STA    GRP1    
LF48F: LDA    #$05    
       DEY            
       STA    RESP0   
       STA    NUSIZ0  
       LDA    #$00    
       STA    PF1     
       STA    PF2     
LF49C: CPY    #$11    
       BCS    LF4A4   
       LDA    ($A4),Y 
       STA    GRP1    
LF4A4: STA    WSYNC   
       STA    HMOVE   
       LDA    LFFE3,X 
       STA    COLUPF  
       LDA    LFD34,X 
       STA    GRP0    
       LDA    LFFDA,X 
       STA    COLUBK  
       JSR    LFCA9   
       DEY            
       DEX            
       STA    COLUPF  
       BNE    LF49C   
       STX    PF1     
       STX    PF2     
       STX    GRP0    
       STX    GRP1    
       JSR    LFBC0   
       LDY    #$40    
       STY    HMBL    
       LDX    $BC     
       BPL    LF4D5   
       LDX    #$00    
LF4D5: LDA    LFE40,X 
       STA    NUSIZ0  
       STA    WSYNC   
       STA    HMOVE   
       STA    $FB     
       LDA    LFE3F,X 
       STA    NUSIZ1  
       STA    $FC     
       LDX    #$08    
       LDA    #$04    
       STA    COLUBK  
       STA    HMCLR   
LF4EF: STA    WSYNC   
       STA    HMOVE   
       LDA    LFF50,X 
       BIT    $FB     
       BMI    LF4FC   
       STA    GRP0    
LF4FC: BIT    $FC     
       BMI    LF502   
       STA    GRP1    
LF502: DEX            
       BPL    LF4EF   
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDY    #$07    
       LDA    $C6     
       AND    #$1F    
       CMP    #$00    
       BCS    LF51C   
       LDY    #$00    
       SBC    #$0B    
       BCC    LF51C   
       TAY            
LF51C: STY    $FC     
       TYA            
       EOR    #$07    
       STA    $FD     
       LDA    #$85    
       INX            
       SEC            
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDX    #$0A    
LF52F: STA    $83,X   
       SBC    #$08    
       DEX            
       DEX            
       BNE    LF52F   
       STA    $83     
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUPF  
       DEX            
       STX    $84     
       STX    $86     
       STX    VDELP0  
       STX    VDELP1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       JSR    LFC44   
       ROL            
       STA    NUSIZ1  
       LDA    #$1C    
       STA    PF2     
       LDY    #$30    
       STY    CTRLPF  
       STA    HMCLR   
       STA    HMBL    
       LDY    #$07    
       STY    ENABL   
LF56A: LDA    LFFAD,Y 
       STA    WSYNC   
       STA    HMOVE   
       TAX            
       LDA    LFFD3,Y 
       NOP            
       NOP            
       LDA    LFF8D,Y 
       STA    GRP0    
       LDA    LFF95,Y 
       STA    GRP1    
       LDA    $FB     
       LDA    LFF9D,Y 
       STA    GRP0    
       NOP            
       LDA    LFFA5,Y 
       DEY            
       STA    GRP1    
       STX    GRP0    
       STA    GRP1    
       LDA    #$00    
       STA    COLUPF  
       DEC    $FD     
       BPL    LF56A   
       JSR    LFC73   
       STA    PF2     
       STA    ENABL   
       STA    VDELP1  
       STA    VDELP0  
       LDA    #$1F    
       STA    WSYNC   
       STA    TIM64T  
       STA    VBLANK  
       LDA    $97     
       BNE    LF5B6   
       JMP    LF89D   
LF5B6: LDA    $BE     
       CMP    #$79    
       BEQ    LF5C0   
       CMP    #$66    
       BCS    LF5F6   
LF5C0: LDY    $AE     
       BIT    $C5     
       BPL    LF5D8   
       LDA    $B3     
       CMP    #$90    
       BCC    LF5CE   
       LDA    $B2     
LF5CE: SBC    #$05    
       CMP    $AE     
       BCC    LF5F0   
       BEQ    LF601   
       BCS    LF5E2   
LF5D8: LDX    $E0     
       LDA    LFEFE,X 
       BIT    SWCHA   
       BNE    LF5E8   
LF5E2: CPY    #$87    
       BCS    LF5E8   
       INC    $AE     
LF5E8: LDA    LFFF9,X 
       BIT    SWCHA   
       BNE    LF5F6   
LF5F0: CPY    #$2D    
       BCC    LF5F6   
       DEC    $AE     
LF5F6: LDA    REFP1,X 
       BMI    LF646   
       BIT    $E2     
       BMI    LF648   
       SEC            
       ROR    $E2     
LF601: LDA    $C1     
       BMI    LF648   
       LDA    $BC     
       BEQ    LF648   
       LDY    #$FF    
       JSR    LFB73   
       BEQ    LF648   
       LDX    #$05    
LF612: LDY    LFD0E,X 
       DEY            
       TYA            
       SBC    $AE     
       CMP    #$0A    
       BCC    LF622   
       DEX            
       BPL    LF612   
       BMI    LF648   
LF622: TXA            
       ADC    LFE04,X 
       BIT    $E5     
       BNE    LF648   
       ORA    $E5     
       STA    $E5     
       LDY    #$01    
LF630: LDA.wy $00BE,Y 
       STA.wy $00BF,Y 
       LDA.wy $00D7,Y 
       STA.wy $00D8,Y 
       DEY            
       BPL    LF630   
       STX    $D7     
       LDA    #$79    
       STA    $BE     
       BIT    $E246   
LF648: LDA    #$BD    
       STA    $A6     
       LDA    #$95    
       STA    $A8     
       LDX    $E0     
       LDA    $E3,X   
       CLC            
       ADC    #$0C    
       STA    $87     
       SBC    #$05    
       STA    $83     
       LDY    #$05    
       LDX    #$00    
LF661: TYA            
       CLC            
       ADC    LFE04,Y 
       BIT    $E5     
       BNE    LF675   
       BEQ    LF66F   
LF66C: INX            
       LDY    $FD     
LF66F: DEY            
       BPL    LF661   
       JMP    LF6F1   
LF675: STY    $FD     
       LDA    $BE,X   
       CMP    $87     
       BCC    LF6DA   
       DEC    $BE,X   
       CMP    #$64    
       BCS    LF69C   
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFB1,Y 
       CPY    #$0C    
       BCC    LF694   
       AND    $80     
       BNE    LF69C   
       BEQ    LF69A   
LF694: DEC    $BE,X   
       AND    $80     
       BNE    LF69C   
LF69A: DEC    $BE,X   
LF69C: LDA    $BE,X   
       CMP    #$6D    
       BEQ    LF6A6   
       BCS    LF6AB   
       BCC    LF66C   
LF6A6: JSR    LFCAA   
       BNE    LF66C   
LF6AB: LDY    #$00    
       CMP    #$74    
       BCS    LF6B9   
       CMP    #$71    
       BCC    LF6B7   
       INY            
       BIT    $02A0   
LF6B9: LDA    LFC22,Y 
       STA    $A6     
       LDA    LFC25,Y 
       STA    $A8     
       LDA    $D7,X   
       AND    #$FE    
       TAY            
       LDA    #$79    
       SEC            
       SBC    $BE,X   
       ADC    #$9D    
       STA.wy $0098,Y 
       ADC    #$31    
       STA.wy $009E,Y 
LF6D7: JMP    LF66C   
LF6DA: CMP    $83     
       BCC    LF6D7   
       DEC    $BE,X   
       STX    $BB     
       LDA    $E6     
       BNE    LF6D7   
       LDA    #$01    
       JSR    LFFF2   
       LDA    #$28    
       STA    $AA     
       BNE    LF6D7   
LF6F1: LDA    $BB     
       BMI    LF739   
       LDY    $E6     
       LDA    $80     
       AND    #$03    
       BNE    LF739   
       INY            
       LDA    LFC28,Y 
       STA    $AA     
       CPY    #$04    
       BCC    LF737   
       LDX    #$02    
LF709: LDA    $BE,X   
       CMP    #$79    
       BEQ    LF713   
       CMP    #$6D    
       BCS    LF739   
LF713: DEX            
       BPL    LF709   
       LDX    #$03    
LF718: DEX            
       LDA    $BE,X   
       CMP    $83     
       BCS    LF718   
       LDA    #$79    
       STA    $BE,X   
       LDA    $D7,X   
       TAY            
       ADC    LFE04,Y 
       EOR    #$FF    
       AND    $E5     
       STA    $E5     
       JSR    LFCAA   
       LDY    #$FF    
       STY    $BB     
       INY            
LF737: STY    $E6     
LF739: LDX    $E0     
       LDY    $F1,X   
       LDA    LFFC1,Y 
       CLC            
       ADC    $F7     
       STA    $F7     
       LDA    #$00    
       BCC    LF751   
       LDA    #$01    
       CPY    #$04    
       BCC    LF751   
       ADC    #$00    
LF751: STA    $FC     
       LDA    #$1C    
       ADC    $E3,X   
       STA    $83     
       ADC    #$01    
       STA    $85     
       LDX    #$04    
LF75F: LDA    $80     
       AND    #$03    
       BNE    LF77F   
       LDA    $EC,X   
       CMP    #$0F    
       BCS    LF77F   
       CMP    #$07    
       BCC    LF77F   
       SBC    #$02    
       STA    $EC,X   
       CMP    #$06    
       BNE    LF77F   
       LDA    #$90    
       STA    $AF,X   
       LDA    #$A9    
       STA    $8F,X   
LF77F: LDA    $B4,X   
       LDY    $E0     
       CMP    $83     
       BEQ    LF7E4   
       CMP    #$75    
       BCC    LF78E   
       JMP    LF85A   
LF78E: CMP    $C3     
       BNE    LF798   
LF792: DEX            
       BPL    LF75F   
       JMP    LF89D   
LF798: LDA    $FC     
       CLC            
       ADC    $B4,X   
       STA    $B4,X   
       LDY    $EC,X   
       CPY    #$06    
       BNE    LF7AB   
       CMP    #$60    
       BCS    LF7DD   
       BCC    LF792   
LF7AB: LDY    $E0     
       LDA.wy $00F3,Y 
       BEQ    LF7D5   
       TAY            
       LDA    $FC     
       BEQ    LF7D5   
       LDA    $B4,X   
       ROR            
       BCS    LF7D5   
       ROL            
       CMP    $85     
       BCC    LF7D5   
       CPY    #$02    
       BNE    LF7CB   
       LDA    $E7,X   
       BMI    LF7D3   
       BPL    LF7D0   
LF7CB: AND    LFE91,Y 
       BEQ    LF7D3   
LF7D0: INC    $AF,X   
       BIT    $AFD6   
LF7D5: LDY    #$BE    
       LDA    $B4,X   
       AND    #$02    
       BNE    LF7DF   
LF7DD: LDY    #$AD    
LF7DF: STY    $8F,X   
       JMP    LF792   
LF7E4: LDA    #$FE    
       LDY    $BD     
       CPY    #$37    
       BEQ    LF7EE   
       LDA    #$00    
LF7EE: ADC    $AF,X   
       STA    $AF,X   
       LDY    $EC,X   
       CPY    #$06    
       BEQ    LF837   
       LDY    #$DA    
       AND    #$04    
       BNE    LF800   
       LDY    #$EB    
LF800: STY    $8F,X   
       LDY    $E0     
       LDA.wy $00F3,Y 
       BEQ    LF831   
       TAY            
       CPY    #$02    
       BEQ    LF80F   
       CLC            
LF80F: LDA    LFC3C,Y 
       STA    $83     
       LDA    #$FC    
       STA    $84     
       LDY    $E0     
       LDA.wy $00F8,Y 
       TAY            
       LDA    ($83),Y 
       BCC    LF828   
       LDY    $E7,X   
       BPL    LF828   
       EOR    #$FF    
LF828: ADC    $BD     
       CMP    #$8D    
       BNE    LF833   
       LDA    #$7D    
       BIT    $BDA5   
LF833: CMP    $AF,X   
       BNE    LF857   
LF837: INC    $B4,X   
       INC    $B4,X   
       LDA    $BC     
       BEQ    LF857   
       LDA    $C1     
       BEQ    LF857   
       DEC    $C1     
       INC    $B3,X   
       INC    $B3,X   
       LDA    $81     
       AND    #$07    
       TAY            
       LDA    LFD0E,Y 
       STA    $BD     
       CPY    #$03    
       ROR    $E6,X   
LF857: JMP    LF792   
LF85A: STX    $FB     
       LDX    #$03    
       LDA    $F0     
       BEQ    LF866   
       CMP    #$0F    
       BCC    LF871   
LF866: LDA    $BC     
       BEQ    LF871   
       DEC    $BC     
       LDA    #$06    
       JSR    LFFF2   
LF871: LDA    $B4,X   
       STA    $B5,X   
       LDA    $8F,X   
       STA    $90,X   
       LDA    $AF,X   
       STA    $B0,X   
       LDA    $EC,X   
       STA    $ED,X   
       LDA    $C8,X   
       STA    $C9,X   
       LDA    $D0,X   
       STA    $D1,X   
       LDA    $E7,X   
       STA    $E8,X   
       DEX            
       BPL    LF871   
       LDA    #$3F    
       STA    $AF     
       LDX    $FB     
       INX            
       LDA    $C3     
       STA    $B4     
       BNE    LF857   
LF89D: LDX    INTIM   
       BNE    LF89D   
       STX    WSYNC   
       LDA    #$C7    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       INC    $80     
       BNE    LF8C5   
       INC    $C5     
       AND    $C5     
       STA    $C5     
       AND    #$07    
       BNE    LF8C5   
       INC    $C4     
       BNE    LF8C5   
       SEC            
       ROR    $C4     
LF8C5: LDA    #$31    
       STA    WSYNC   
       STA    TIM64T  
       LDY    SWCHA   
       LDA    $80     
       AND    #$07    
       BNE    LF8ED   
       LDA    $C6     
       BEQ    LF8ED   
       LDY    #$FF    
       DEC    $C6     
       BNE    LF8ED   
       DEC    $C6     
       LDA    $C5     
       BMI    LF8ED   
       ORA    #$80    
       STA    $C5     
       LDX    #$E1    
       BNE    LF902   
LF8ED: INY            
       BEQ    LF8F2   
       STX    $C4     
LF8F2: LDA    SWCHB   
       LSR            
       BCS    LF907   
       STX    AUDV1   
       STX    AUDC1   
       STX    AUDV0   
       STX    AUDC0   
       LDX    #$98    
LF902: INC    $97     
       JMP    LF004   
LF907: LSR            
       BCS    LF933   
       LDA    $82     
       BEQ    LF912   
       DEC    $82     
       BPL    LF935   
LF912: INC    $96     
       STX    $F5     
       STX    $97     
LF918: LDA    $96     
       AND    #$01    
       STA    $96     
       STA    $C4     
       STA    $C5     
       ORA    #$B0    
       TAY            
       INY            
       STY    $DC     
       LDY    #$00    
       STY    $DB     
       STY    $DA     
       DEY            
       STY    $C6     
       LDY    #$1E    
LF933: STY    $82     
LF935: LDA    $97     
       BNE    LF940   
       STA    AUDV1   
       STA    AUDC1   
       JMP    LFB17   
LF940: LDA    $81     
       ASL            
       ASL            
       ASL            
       EOR    $81     
       ASL            
       ROL    $81     
       LDX    $E0     
       LDY    $F1,X   
       INC    $FA     
       LDA    LFE0A,Y 
       LDX    #$00    
       LDY    #$00    
       CMP    $FA     
       BCS    LF967   
       STX    $FA     
       BIT    $C5     
       BMI    LF967   
       LDY    #$00    
       STY    AUDF1   
       LDX    #$08    
LF967: STY    AUDV1   
       STX    AUDC1   
       LDA    $BC     
       BNE    LF9DB   
       LDA    $C1     
       BMI    LF9DB   
       LDY    $E1     
       BMI    LF9A1   
       LDA    #$FF    
       STA    $F7     
       JSR    LFB73   
       BNE    LF9DB   
       INX            
       LDY    #$07    
       STY    $E6     
       LDY    #$04    
LF987: STX    $E7,Y   
       DEY            
       BPL    LF987   
       LDA    $B9     
       ADC    #$09    
       STA    $B9     
       LDA    #$1F    
       STA    $B0     
       SEC            
       ROR    $E1     
       LDA    #$0F    
       STA    $BD     
       STA    $EB     
       BNE    LF9DB   
LF9A1: LDY    $B0     
       LDA    $80     
       AND    #$07    
       BNE    LF9C1   
       CPY    #$BF    
       BCS    LF9DE   
       LDA    #$03    
       JSR    LFFF2   
       SEC            
       ROL    $BD     
       ROR    $E7     
       ROL    $E8     
       ROR    $E9     
       ROL    $EA     
       BCC    LF9C1   
       ROR    $EB     
LF9C1: LDA    $BD     
       CMP    #$30    
       BCC    LF9DB   
       LDA    $80     
       LSR            
       BCS    LF9DB   
       CPY    #$BF    
       BCS    LF9DE   
       INC    $B0     
       LDY    #$1E    
       LSR            
       BCS    LF9D9   
       LDY    #$16    
LF9D9: STY    $93     
LF9DB: JMP    LFA44   
LF9DE: LDX    $E0     
       LDA    $E6     
       BMI    LF9EE   
       DEC    $BA     
       DEC    $E6     
       DEC    $C2     
       INC    $E3,X   
       BNE    LFA44   
LF9EE: CMP    #$F7    
       BEQ    LFA09   
       DEC    $E6     
       LSR            
       LDA    #$80    
       BCC    LF9FE   
       DEC    $C2     
       LDA    #$A0    
       BIT    $C2E6   
       STA    $E1     
       LDA    #$04    
       JSR    LFFF2   
       BNE    LFA44   
LFA09: DEC    $B9     
       DEC    $B9     
       INC    $F8,X   
       LDA    #$3F    
       STA    $B0     
       LDA    #$08    
       STA    $BA     
       ASL    $E1     
       LDA    $F1,X   
       BEQ    LFA1F   
       DEC    $F1,X   
LFA1F: LDY    #$00    
       STY    $E6     
       LDA    $96     
       BEQ    LFA33   
       JSR    LFBE2   
       LDA    $E3,X   
       CMP    #$30    
       BNE    LFA42   
       JSR    LFBE2   
LFA33: LDA    $E3,X   
       CMP    #$30    
       BNE    LFA42   
       LDY    #$00    
       STY    $97     
       STY    $C5     
       DEY            
       STY    $C6     
LFA42: BNE    LFA8C   
LFA44: LDA    $C1     
       BMI    LFA53   
       BNE    LFAA6   
       LDY    $E1     
       BMI    LFAA6   
       JSR    LFB73   
       BNE    LFAA6   
LFA53: LDA    $80     
       AND    #$0F    
       BNE    LFAA6   
       LDA    $BC     
       BEQ    LFA6F   
       DEC    $BC     
       LDA    #$05    
       JSR    LFFF2   
       LDX    #$01    
       LDA    #$02    
       JSR    LFCEF   
       DEC    $C1     
       BNE    LFAA6   
LFA6F: LDX    $E0     
       INC    $F3,X   
       LDY    $F3,X   
       CPY    #$04    
       BNE    LFA85   
       LDA    #$00    
       STA    $F3,X   
       LDA    $F1,X   
       CMP    #$07    
       BCS    LFA85   
       INC    $F1,X   
LFA85: LDA    $96     
       BEQ    LFA8C   
       JSR    LFBE2   
LFA8C: LDA    #$06    
       CLC            
       ADC    $E3,X   
       STA    $C3     
       LDY    $F3,X   
       TAX            
       LDA    LFE4E,Y 
       LDY    #$04    
LFA9B: STA.wy $00EC,Y 
       STX    $B4,Y   
       DEY            
       BPL    LFA9B   
       JSR    LFC0D   
LFAA6: LDY    #$04    
LFAA8: LDX    #$02    
LFAAA: LDA.wy $00B4,Y 
       SEC            
       SBC    #$0B    
       SBC    $BE,X   
       CMP    #$10    
       BCC    LFABE   
LFAB6: DEX            
       BPL    LFAAA   
       DEY            
       BPL    LFAA8   
       BMI    LFB17   
LFABE: STX    $FB     
       LDA    $D7,X   
       TAX            
       LDA    LFD0E,X 
       LDX    $FB     
       ADC    #$04    
       SEC            
       SBC.wy $00AF,Y 
       CMP    #$0B    
       BCS    LFB13   
       LDA    $BE,X   
       CMP    $87     
       BCS    LFADC   
       LDA    $E6     
       BNE    LFB13   
LFADC: LDA.wy $00B4,Y 
       LDX    $E0     
       SEC            
       SBC    $E3,X   
       CMP    #$1C    
       BCC    LFB13   
       LDA.wy $00EC,Y 
       BEQ    LFAF1   
       CMP    #$0F    
       BCC    LFB13   
LFAF1: LDA    #$0E    
       STA.wy $00EC,Y 
       STY    $FC     
       LDA    $F1,X   
       ASL            
       ADC    #$02    
       ASL            
       ASL            
       ASL            
       STA    $FD     
       LDY    $F3,X   
LFB04: LDA    $FD     
       JSR    LFCED   
       DEY            
       BPL    LFB04   
       LDY    $FC     
       LDA    #$02    
       JSR    LFFF2   
LFB13: LDX    $FB     
       BPL    LFAB6   
LFB17: LDA    $D7     
       CMP    #$02    
       ROR    $94     
       LDY    $F5     
       BEQ    LFB55   
       BIT    $C5     
       BMI    LFB55   
       LDA    LFDFB,Y 
       STA    AUDC0   
       LDA    $F6     
       CPY    #$03    
       BNE    LFB3F   
       CMP    #$08    
       BCC    LFB36   
       EOR    #$0F    
LFB36: ASL            
       STA    AUDV0   
       EOR    #$FF    
       ADC    #$1F    
       BPL    LFB4F   
LFB3F: STA    AUDV0   
       AND    #$07    
       CPY    #$06    
       BNE    LFB49   
       AND    #$0E    
LFB49: CPY    #$01    
       BNE    LFB4F   
       LDA    #$03    
LFB4F: STA    AUDF0   
       DEC    $F6     
       BNE    LFB5D   
LFB55: LDA    #$00    
       STA    $F5     
       STA    AUDV0   
       STA    AUDC0   
LFB5D: LDA    #$30    
       CMP    $E3     
       BNE    LFB70   
       CMP    $E4     
       BNE    LFB70   
       LDA    $97     
       ORA    $80     
       BNE    LFB70   
       JSR    LFBE2   
LFB70: JMP    LF019   
LFB73: LDX    #$04    
LFB75: LDA    $B4,X   
       CMP    $C3     
       BNE    LFB8B   
       TYA            
       BMI    LFB88   
       CPX    #$03    
       BCS    LFB88   
       LDA    $BE,X   
       CMP    #$79    
       BNE    LFB8B   
LFB88: DEX            
       BPL    LFB75   
LFB8B: CPX    #$FF    
       RTS            

LFB8E: LDY    #$02    
LFB90: TYA            
       ASL            
       ASL            
       TAX            
       LDA.wy $00DA,Y 
       AND    #$F0    
       LSR            
       STA    $83,X   
       LDA.wy $00DA,Y 
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $85,X   
       LDA    #$FF    
       STA    $84,X   
       STA    $86,X   
       DEY            
       BPL    LFB90   
       INY            
       LDX    #$58    
LFBB2: LDA.wy $0083,Y 
       BNE    LFBBF   
       STX    $83,Y   
       INY            
       INY            
       CPY    #$0A    
       BCC    LFBB2   
LFBBF: RTS            

LFBC0: STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       STX    ENABL   
       LDY    $E0     
       LDX    $F3,Y   
       LDA    LFE4E,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$F3    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    HMP0    
       STA    RESP0   
       STA    RESP1   
       STA    RESBL   
       RTS            

LFBE2: LDA    $E0     
       EOR    #$01    
       TAX            
       LDA    $E3,X   
       LDY    $97     
       BEQ    LFBFB   
       CMP    #$30    
       BEQ    LFC0A   
       ADC    #$28    
       STA    $B9     
       LDA    #$01    
       SBC    $E3,X   
       STA    $C2     
LFBFB: STX    $E0     
       LDX    #$02    
LFBFF: LDA    $DA,X   
       LDY    $DD,X   
       STY    $DA,X   
       STA    $DD,X   
       DEX            
       BPL    LFBFF   
LFC0A: LDX    $E0     
       RTS            

LFC0D: LDY    $C3     
       INY            
       INY            
       STY    $B8     
       LDY    #$0B    
       STY    $C1     
       LDA    #$47    
       STA    $EB     
       STA    $BD     
       LDA    #$06    
       STA    $BC     
       RTS            

LFC22: .byte $BD,$D1,$E5
LFC25: .byte $95,$A9,$7E
LFC28: .byte $28,$2C,$30,$25,$A9,$06,$F9,$FD,$01,$05,$01,$FD,$01,$05,$01,$04
       .byte $F8,$FC,$01,$04
LFC3C: .byte $F8,$31,$37,$2D
LFC40: LDA    #$07    
       STA    $FC     
LFC44: LDY    $FC     
       LDA    ($83),Y 
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($8B),Y 
       STA    $FB     
       LDA    ($89),Y 
       TAX            
       LDA    ($85),Y 
       STA    GRP1    
       LDA    ($87),Y 
       STA    GRP0    
       LDA    ($8D),Y 
       LDY    $FB     
       STX    GRP1    
       STY    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $FC     
       BPL    LFC44   
       LDA    #$80    
       STA    HMP0    
       STA    HMP1    
LFC73: STA    WSYNC   
       STA    HMOVE   
       ASL            
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       RTS            

LFC7F: LDX    #$2B    
LFC81: LDA    LFE52,X 
       STA    $98,X   
       DEX            
       BPL    LFC81   
       LDY    #$02    
       STY    $CD     
       LDA    #$10    
       STA    $D5     
       INY            
       STY    $CE     
       RTS            

LFC95: LDY    #$FD    
       SEC            
LFC98: INY            
       SBC    #$0F    
       BCS    LFC98   
       STY    $C7,X   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA    $CF,X   
LFCA9: RTS            

LFCAA: LDA    $D7,X   
       AND    #$01    
       TAY            
       BEQ    LFCB7   
       LDA    $E5     
       LSR            
       LSR            
       LSR            
       BIT    $E5A5   
       AND    #$07    
       STX    $FC     
       TAX            
       LDA    LFE32,X 
       STA.wy $00AC,Y 
       LDA    LFE47,X 
       CPY    #$01    
       ADC    #$00    
       STA.wy $00CD,Y 
       LDA    LFDFC,X 
       CPY    #$01    
       BNE    LFCD8   
       LDA    LFE37,X 
LFCD8: STA.wy $00D5,Y 
       LDX    $FC     
       LDA    $D7,X   
       AND    #$FE    
       TAY            
       LDA    #$9E    
       STA.wy $0098,Y 
       LDA    #$CF    
       STA.wy $009E,Y 
       RTS            

LFCED: LDX    #$02    
LFCEF: BIT    $C5     
       BMI    LFD0D   
       SED            
       CLC            
LFCF5: ADC    $DA,X   
       STA    $DA,X   
       LDA    #$00    
       DEX            
       BPL    LFCF5   
       CLD            
       BCC    LFD0D   
       STA    $97     
       STX    $C6     
       LDA    #$AA    
       STA    $DA     
       STA    $DB     
       STA    $DC     
LFD0D: RTS            

LFD0E: .byte $37,$47,$57,$67,$77
LFD13: .byte $87
LFD14: .byte $67,$77,$A0,$50,$7E,$FC,$FC,$7E,$50,$A0,$28,$52,$7C,$FC,$FC,$7C
       .byte $52,$28,$04,$52,$00,$22,$1C,$1C,$14,$14,$2E,$36,$18,$36,$08,$14
LFD34: .byte $00,$FF,$FF,$7E,$7C,$F8,$FC,$78,$28,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00
LFD86: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$0E,$1F,$1F,$1F,$1F
LFDA5: .byte $0E,$0E,$0E,$0E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$01
LFDB7: .byte $02,$BC,$7C,$3E,$3D,$40,$A4,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $80,$40,$3D,$3E,$7C,$BC,$02,$25
LFDCF: .byte $00,$12,$12,$14,$12
LFDD4: .byte $12,$13,$12,$12,$12,$12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$21,$A1,$BE,$7C,$1D,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$84,$85,$7D,$3E,$B8
LFDFB: .byte $40
LFDFC: .byte $05,$04,$04,$08,$FC,$FC,$D0,$70
LFE04: .byte $04,$1F,$00,$0D,$FD,$03
LFE0A: .byte $40,$35,$30,$25,$20,$15,$10,$05
LFE12: .byte $0A,$0A,$0A,$0A
LFE16: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06
LFE21: STA    WSYNC   
       LDA    #$06    
       STA    PF1     
       LDA    #$66    
       STA    PF2     
       JMP    LF317   
LFE2E: .byte $88,$88,$88,$88
LFE32: .byte $06,$02,$04,$00,$02
LFE37: .byte $00,$00,$00,$00,$E0,$E0,$C0,$70
LFE3F: .byte $80
LFE40: .byte $80,$00,$00,$01,$01,$03,$03
LFE47: .byte $02,$02,$02,$02,$04,$04,$06
LFE4E: .byte $00,$82,$42,$C2
LFE52: .byte $9E,$FD,$9E,$FD,$9E,$FD,$CF,$FD,$CF,$FD,$CF,$FD,$AD,$FD,$BD,$FE
       .byte $95,$FE,$A9,$FD,$06,$06,$2C,$3F,$3F,$3F,$3F,$3F,$06,$06,$06,$06
       .byte $0D,$28,$08,$FF,$06,$57,$79,$79,$79,$0B,$00,$06,$FF,$7E,$7E,$7E
       .byte $3C,$3C,$3C,$3C,$3C,$3C,$FE,$C6,$92,$82,$82,$AA,$AA,$82,$FE
LFE91: .byte $7C,$10,$20,$20,$FF,$7E,$3C,$3C,$3C,$3C,$3C,$3C,$3C,$FE,$FE,$C6
       .byte $92,$82,$82,$AA,$AA,$82,$FE,$7C,$FF,$3C,$3C,$3C,$3C,$3C,$3C,$3C
       .byte $FE,$FE,$FE,$C6,$92,$82,$82,$AA,$AA,$82,$FE,$7C,$00,$00,$00,$00
       .byte $C3,$C3,$C3,$C3,$C3,$C3,$00,$38,$6C,$7C,$7C,$54,$54,$7C,$00,$00
       .byte $C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$00,$00,$38,$6C,$7C,$7C,$54
       .byte $54,$7C,$00,$00,$E7,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$00,$00,$00,$38
       .byte $6C,$7C,$7C,$54,$54,$7C,$00
LFEF8: .byte $00,$01,$02,$03,$04,$05
LFEFE: .byte $80,$08,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C
LFF50: .byte $00,$42,$3C,$18,$3C,$5A,$00,$24,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $F1,$4A,$72,$4A,$F1,$00,$00,$00,$8C,$52,$52,$52,$8C,$00,$00,$00
       .byte $88,$88,$A8,$D8,$88,$00,$00,$00,$3C,$12,$1C,$12,$3C,$00,$00,$00
       .byte $94,$F4,$95,$96,$64,$00,$00,$00,$9C,$A4,$AC,$A0,$9C
LFF8D: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF95: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF9D: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFA5: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFFAD: .byte $00,$00,$00,$00
LFFB1: .byte $00,$00,$00,$00,$00,$00,$01,$01,$03,$07,$0F,$1F,$00,$00,$01,$01
LFFC1: .byte $90,$B6,$DC,$FF,$94,$A7,$BA
LFFC8: STY    VDELP1  
       LDX    #$FE    
       STA    PF0     
       LDA    #$84    
       STA    COLUPF  
       JMP    LF0E0   
LFFD5: .byte $88
LFFD6: .byte $1A,$26,$26,$44
LFFDA: .byte $00,$14,$14,$14,$14,$14,$14,$16,$18
LFFE3: .byte $00,$04,$04,$04,$04,$04,$04,$00,$06
LFFEC: .byte $10,$00,$F0,$E0,$D0,$C0
LFFF2: STA    $F5     
       LDA    #$0F    
       STA    $F6     
       RTS            

LFFF9: .byte $40,$04,$EA,$00,$F0,$00,$F0
