; Disassembly of roms/Room of Doom.bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Room of Doom.bin
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
CTRLPF  =  $0A
REFP0   =  $0B
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: LDY    INTIM   
       BNE    LF000   
       STY    WSYNC   
       STY    VBLANK  
       LDY    #$07    
       LDA    #$D6    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF017: STY    WSYNC   
       LDA    ($89),Y 
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDX    #$04    
LF023: DEX            
       BNE    LF023   
       NOP            
       LDA    ($8F),Y 
       TAX            
       LDA    ($8D),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LF017   
       STY    WSYNC   
       INY            
       STY    GRP0    
       STY    GRP1    
       LDX    #$02    
       NOP            
       NOP            
LF03E: DEX            
       BNE    LF03E   
       STY    RESP0   
       STY    RESP1   
       JMP    LF2BD   
LF048: LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BNE    LF062   
       LDA    LFE3C,X 
       AND    $A1     
       STA    GRP1    
       CPY    $E6     
       BNE    LF05F   
       LDA    $BD     
       STA    $EC     
LF05F: JMP    LF06F   
LF062: LDA    ($F7),Y 
       STA    GRP0    
       LDA    LFE3C,X 
       AND    $A1     
       STA    GRP1    
       INC    $EC     
LF06F: LDA    $D3     
       STA    PF0     
       RTS            

LF074: STY    WSYNC   
LF076: LDA    $EC     
       BEQ    LF083   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF08B   
LF083: CPY    $E6     
       BNE    LF08B   
       LDA    $BD     
       STA    $EC     
LF08B: DEY            
       STY    WSYNC   
LF08E: LDA    $EC     
       BEQ    LF09B   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF0A3   
LF09B: CPY    $E6     
       BNE    LF0A3   
       LDA    $BD     
       STA    $EC     
LF0A3: LDA    #$00    
       CPY    $F0     
       BCS    LF0AD   
       STA    $F0     
       LDA    #$02    
LF0AD: STA    ENAM0   
       DEY            
       STY    WSYNC   
       LDA    $EC     
       BEQ    LF0BF   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF0C7   
LF0BF: CPY    $E6     
       BNE    LF0C7   
       LDA    $BD     
       STA    $EC     
LF0C7: CPX    #$00    
       BNE    LF0E3   
       LDA    $B3     
       STA    $B1     
       LDA    $B4     
       STA    $B2     
       LDA    $B5     
       STA    $B3     
       LDA    $B6     
       STA    $B4     
       LDA    $BB     
       STA    $B5     
       LDA    $BC     
       STA    $B6     
LF0E3: DEY            
       STY    WSYNC   
       LDA    $EC     
       BNE    LF0F5   
       CPY    $E6     
       BNE    LF0F2   
       LDA    $BD     
       STA    $EC     
LF0F2: JMP    LF0FB   
LF0F5: LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
LF0FB: LDA    #$00    
       CPY    $F1     
       BCS    LF105   
       STA    $F1     
       LDA    #$02    
LF105: STA    ENABL   
       DEY            
       DEX            
       BMI    LF10E   
       JMP    LF074   
LF10E: RTS            

LF10F: LDA    LFFA5,X 
       STY    WSYNC   
       AND    $A1     
       STA    GRP1    
       LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BEQ    LF129   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF131   
LF129: CPY    $E6     
       BNE    LF131   
       LDA    $BD     
       STA    $EC     
LF131: LDA    #$00    
       CPY    $F0     
       BCS    LF13B   
       STA    $F0     
       LDA    #$02    
LF13B: STA    ENAM0   
       LDA    $D3     
       STA    PF0     
       LDA    LFFB6,X 
       AND    $A2     
       STA    GRP1    
       DEY            
       DEX            
       LDA    LFFA5,X 
       STY    WSYNC   
       AND    $A1     
       STA    GRP1    
       LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BEQ    LF164   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF16C   
LF164: CPY    $E6     
       BNE    LF16C   
       LDA    $BD     
       STA    $EC     
LF16C: LDA    #$00    
       CPY    $B1     
       BNE    LF174   
       STA    $D2     
LF174: LDA    $D3     
       STA    PF0     
       LDA    LFFB6,X 
       AND    $A2     
       STA    GRP1    
       DEY            
       DEX            
       LDA    LFFA5,X 
       STY    WSYNC   
       AND    $A1     
       STA    GRP1    
       LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BEQ    LF19B   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF1A3   
LF19B: CPY    $E6     
       BNE    LF1A3   
       LDA    $BD     
       STA    $EC     
LF1A3: LDA    #$00    
       CPY    $F1     
       BCS    LF1AD   
       STA    $F1     
       LDA    #$02    
LF1AD: STA    ENABL   
       LDA    $D3     
       STA    PF0     
       LDA    LFFB6,X 
       AND    $A2     
       STA    GRP1    
       DEY            
       DEX            
LF1BC: LDA    LFFA5,X 
       STY    WSYNC   
       AND    $A1     
       STA    GRP1    
       LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BEQ    LF1D6   
       LDA    ($F7),Y 
       STA    GRP0    
       INC    $EC     
       JMP    LF1DE   
LF1D6: CPY    $E6     
       BNE    LF1DE   
       LDA    $BD     
       STA    $EC     
LF1DE: LDA    #$00    
       CPY    $B2     
       BNE    LF1E6   
       STA    $D3     
LF1E6: LDA    $D3     
       STA    PF0     
       LDA    LFFB6,X 
       AND    $A2     
       STA    GRP1    
       DEY            
       DEX            
       BMI    LF1F8   
       JMP    LF10F   
LF1F8: LDA    #$80    
       STY    WSYNC   
       STA    PF0     
       STA    $D2     
       STA    $D3     
       LDX    #$04    
       JMP    LF08E   
LF207: STY    WSYNC   
       JSR    LF048   
       LDA    #$00    
       CPY    $F0     
       BCS    LF216   
       STA    $F0     
       LDA    #$02    
LF216: STA    ENAM0   
       DEY            
       DEX            
       STY    WSYNC   
       JSR    LF048   
       LDA    #$00    
       CPY    $B1     
       BNE    LF227   
       STA    $D2     
LF227: DEY            
       DEX            
       STY    WSYNC   
       JSR    LF048   
       LDA    #$00    
       CPY    $F1     
       BCS    LF238   
       STA    $F1     
       LDA    #$02    
LF238: STA    ENABL   
       DEY            
       DEX            
LF23C: STY    WSYNC   
       LDA    $D2     
       STA    PF0     
       LDA    $EC     
       BNE    LF258   
       LDA    LFE3C,X 
       AND    $A1     
       STA    GRP1    
       CPY    $E6     
       BNE    LF255   
       LDA    $BD     
       STA    $EC     
LF255: JMP    LF265   
LF258: LDA    ($F7),Y 
       STA    GRP0    
       LDA    LFE3C,X 
       AND    $A1     
       STA    GRP1    
       INC    $EC     
LF265: LDA    $D3     
       STA    PF0     
       LDA    #$00    
       CPY    $B2     
       BNE    LF271   
       STA    $D3     
LF271: DEY            
       DEX            
       CPX    $FA     
       BEQ    LF1F8   
       JMP    LF207   
LF27A: LDY    INTIM   
       BNE    LF27A   
       STY    WSYNC   
       STY    VBLANK  
       STY    WSYNC   
       LDA    #$07    
       STA    $EE     
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$0A    
       STA    COLUP0  
       STA    COLUP1  
LF293: LDY    $EE     
       LDA    ($93),Y 
       STA    $EF     
       LDA    ($91),Y 
       TAX            
       LDA    ($89),Y 
       STA    WSYNC   
       NOP            
       STA    GRP0    
       LDA    ($8B),Y 
       STA    GRP1    
       LDA    ($8D),Y 
       STA    GRP0    
       LDA    ($8F),Y 
       LDY    $EF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $EE     
       BPL    LF293   
       STA    HMCLR   
LF2BD: LDA    #$80    
       STA    HMP1    
       LDA    #$00    
       STY    WSYNC   
       STA    HMOVE   
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       LDA    #$56    
       STA    COLUP0  
       STA    COLUP1  
       LDY    $83     
       LDX    LFF81,Y 
       STX    $EE     
       LDA    LFF80,Y 
       STA    $EF     
       STA    NUSIZ1  
       LDY    #$07    
LF2E5: STY    WSYNC   
       STX    NUSIZ0  
       LDA    LFF87,Y 
       BIT    $EE     
       BMI    LF2F2   
       STA    GRP0    
LF2F2: BIT    $EF     
       BMI    LF2F8   
       STA    GRP1    
LF2F8: DEY            
       BNE    LF2E5   
       STY    WSYNC   
       STA    HMCLR   
       STY    GRP0    
       STY    GRP1    
       LDY    #$10    
       DEC    $DD     
       LDA    $80     
       BEQ    LF30D   
       LDY    #$17    
LF30D: STY    NUSIZ0  
       LDA    #$88    
       STA    COLUP1  
       LDA    $E9     
       STA    COLUP0  
       STY    WSYNC   
       NOP            
       NOP            
       LDX    $DE     
LF31D: DEX            
       BNE    LF31D   
       STX    RESM0   
       STY    WSYNC   
       NOP            
       NOP            
       LDX    $DF     
LF328: DEX            
       BNE    LF328   
       STX    RESBL   
       STY    WSYNC   
       LDX    $DD     
       LDA    $80     
       BEQ    LF336   
       DEX            
LF336: LDA    #$06    
LF338: DEX            
       BNE    LF338   
       STX    RESP0   
       STY    WSYNC   
       LDY    $DB     
       STY    HMM0    
       LDX    #$05    
LF345: DEX            
       BNE    LF345   
       STX    RESP1   
       STA    NUSIZ1  
       LDA    $DC     
       STA    HMBL    
       LDA    $DA     
       STA    HMP0    
       LDA    #$E0    
       STA    HMP1    
       LDX    #$10    
       STY    WSYNC   
       STY    HMOVE   
       BNE    LF365   
LF360: STY    WSYNC   
       NOP            
       NOP            
       NOP            
LF365: LDA    LFFC7,X 
       AND    $95     
       STA    GRP1    
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFFC7,X 
       AND    $96     
       STA    GRP1    
       LDA    LFFC7,X 
       AND    $97     
       STA    GRP1    
       DEX            
       BPL    LF360   
       LDY    #$87    
       LDA    $F0     
       CMP    #$80    
       BCC    LF391   
       LDA    #$02    
       STA    ENAM0   
LF391: STY    WSYNC   
       LDA    $C6     
       STA    PF0     
       LDA    $C7     
       STA    PF1     
       LDA    $C8     
       STA    PF2     
       LDX    #$04    
LF3A1: DEX            
       BNE    LF3A1   
       LDA    $C9     
       STA    PF0     
       LDA    $CA     
       STA    PF1     
       LDA    $CB     
       STA    PF2     
       DEY            
       CPY    #$80    
       BNE    LF391   
       STY    WSYNC   
       LDA    #$11    
       STA    ENAM0   
       STA    CTRLPF  
       LDA    #$80    
       STA    PF0     
       STX    PF1     
       STX    PF2     
       STX    $80     
       RTS            

LF3C8: LDX    #$07    
       STY    WSYNC   
       STY    CTRLPF  
       BNE    LF3D6   
LF3D0: STY    WSYNC   
       LDY    $CC     
       STY    PF0     
LF3D6: LDA    $CD     
       STA    PF1     
       LDY    $CE     
       STY    PF2     
       LDY    #$88    
       STY    COLUP1  
       LDY    #$03    
LF3E4: DEY            
       BNE    LF3E4   
       LDY    $CF     
       STY    PF0     
       LDY    $D0     
       STY    PF1     
       LDY    $D1     
       STY    PF2     
       DEX            
       BNE    LF3D0   
       STX    PF0     
       STX    ENAM0   
       STX    PF1     
       STY    WSYNC   
       STX    PF2     
       STX    GRP0    
       LDY    #$05    
LF404: DEY            
       BNE    LF404   
       STY    RESP1   
       STY    ENABL   
       LDA    #$06    
       STA    NUSIZ1  
       LDX    #$10    
       LDA    #$E0    
       STA    HMP1    
       STY    WSYNC   
       STY    HMOVE   
       BNE    LF420   
LF41B: STY    WSYNC   
       NOP            
       NOP            
       NOP            
LF420: LDA    LFFD8,X 
       AND    $98     
       STA    GRP1    
       STY    REFP0   
       NOP            
       NOP            
       STA    RESP0   
       STA    GRP1    
       NOP            
       LDA    LFFD8,X 
       AND    $99     
       STA    GRP1    
       LDA    LFFD8,X 
       AND    $9A     
       STA    GRP1    
       DEX            
       BPL    LF41B   
       STY    WSYNC   
       STY    HMCLR   
       LDX    #$04    
       LDX    #$04    
LF449: DEX            
       BNE    LF449   
       STY    RESP1   
       LDA    #$22    
       STA    TIM64T  
       RTS            

LF454: LDA    $84     
       STA    $BE     
       LDA    $85     
       STA    $BF     
       LDA    $86     
       STA    $C0     
       LDA    #$E0    
       STA    $84     
       LDA    #$0C    
       STA    $85     
       LDY    $C3     
       LDA    LFE64,Y 
       STA    $86     
       RTS            

LF470: LDA    #$30    
       STA    $E0     
       LDA    #$88    
       STA    $E1     
       LDA    #$60    
       STA    $E7     
       STA    $E8     
       LDX    #$03    
LF480: LDA    $E2,X   
       BEQ    LF48C   
       LDA    #$00    
       STA    $D6,X   
       STA    $F2,X   
       STA    $E2,X   
LF48C: DEX            
       BPL    LF480   
       RTS            

LF490: .byte $5A,$58,$36,$34,$12,$10,$EF

START:
       SEI            
       LDY    #$00    
       CLD            
       LDA    #$00    
       TAX            
LF49E: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF49E   
       DEX            
       LDY    #$0A    
LF4A7: STX    $8A,Y   
       DEY            
       BPL    LF4A7   
       STX    $88     
       LDA    #$70    
       STA    $C1     
       JMP    LF4D8   
LF4B5: LDA    #$FF    
       STA    $82     
       LDA    #$AB    
       STA    $84     
       LDA    #$CD    
       STA    $85     
       LDA    $F6     
       AND    #$3F    
       TAY            
       LDA    #$00    
       STA    AUDV1   
       STA    AUDV0   
       STA    $C4     
       CLC            
LF4CF: SED            
       ADC    #$01    
       CLD            
       DEY            
       BPL    LF4CF   
       STA    $86     
LF4D8: LDA    #$02    
       STA    $83     
       LDA    #$FF    
       STA    $C3     
LF4E0: INC    $C3     
LF4E2: JSR    LF470   
       LDA    #$80    
       STA    $CC     
       STA    $C6     
       LDA    #$FF    
       STA    $C5     
       LDX    #$04    
       STX    AUDC1   
LF4F3: STA    $CC,X   
       STA    $C6,X   
       DEX            
       BNE    LF4F3   
       LDA    #$1F    
       STA    $D1     
       STA    $CB     
       LDX    #$06    
LF502: LDA    LF490,X 
       STA    $B7,X   
       DEX            
       BPL    LF502   
       LDY    $83     
       CPY    #$06    
       BEQ    LF512   
       INC    $83     
LF512: LDY    $82     
       BMI    LF56D   
LF516: JSR    LF454   
       LDA    #$81    
       STA    $C4     
       LDA    #$02    
       STA    $EA     
       LDA    #$00    
       STA    $EB     
       STA    $D7     
       STA    $D8     
       STA    $D9     
       LDX    #$0B    
       STX    AUDV1   
LF52F: STA    $A5,X   
       STA    $95,X   
       DEC    $95,X   
       DEX            
       BPL    LF52F   
       LDA    #$01    
       BIT    $F6     
       BEQ    LF545   
       LDX    #$0B    
LF540: STA    $A5,X   
       DEX            
       BPL    LF540   
LF545: LDX    $C3     
       LDA    LFEA4,X 
       ROL            
       ROL            
       ROL            
       BCC    LF56D   
       INC    $95     
       INC    $97     
       INC    $98     
       INC    $9A     
       INC    $9E     
       INC    $9D     
       LDA    #$01    
       BIT    $F6     
       BEQ    LF56D   
       DEC    $A5     
       DEC    $A7     
       DEC    $A8     
       DEC    $AA     
       DEC    $AE     
       DEC    $AD     
LF56D: LDA    SWCHB   
       STA    $ED     
LF572: LDA    SWCHB   
       EOR    $ED     
       AND    $ED     
       STA    $EE     
       AND    #$01    
       BEQ    LF5A6   
       LDY    $82     
       BMI    LF586   
LF583: JMP    LF4B5   
LF586: INY            
       STY    $84     
       STY    $85     
       STY    $86     
       INY            
       STY    $82     
       BIT    SWCHB   
       BPL    LF599   
       INC    $C3     
       INC    $C3     
LF599: BVC    LF5A3   
       INC    $C3     
       INC    $C3     
       INC    $C3     
       INC    $C3     
LF5A3: JMP    LF516   
LF5A6: LDA    $EE     
       AND    #$08    
       BEQ    LF5C5   
       LDA    $C4     
       BNE    LF5C5   
       LDA    $C5     
       BEQ    LF5C5   
       INC    $C5     
       LDA    #$02    
       STA    $83     
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       JMP    LF4E2   
LF5C5: LDA    $EE     
       AND    #$02    
       BEQ    LF5E8   
       LDX    $82     
       BPL    LF583   
       LDA    $F6     
       AND    #$3F    
       TAX            
       INX            
       CPX    #$40    
       BNE    LF5DD   
       LDX    #$00    
       STX    $86     
LF5DD: STX    $F6     
       SED            
       CLC            
       LDA    #$01    
       ADC    $86     
       STA    $86     
       CLD            
LF5E8: JSR    LF7C6   
       LDA    SWCHB   
       STA    $ED     
       LDX    #$00    
       LDA    $E0     
       JSR    LF7AD   
       INX            
       LDA    $E2     
       JSR    LF7AD   
       JSR    LFD93   
       INX            
       LDA    $E4     
       JSR    LF7AD   
       LDA    #$56    
       STA    $E9     
       LDX    $C3     
       LDA    LFEA4,X 
       STA    $A2     
       LDA    $C1     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFF85,X 
       LDY    LFF86,X 
       LDX    $C4     
       BPL    LF626   
       JSR    LF79A   
LF626: JSR    LFA03   
       STA    CXCLR   
       LDA    #$10    
       BIT    $C2     
       BNE    LF635   
       LDY    #$FF    
       BNE    LF639   
LF635: LDA    #$1D    
       LDY    #$0C    
LF639: STA    $FB     
       STY    $FA     
       JSR    LF27A   
       LDA    #$26    
       STA    COLUP1  
       STX    WSYNC   
       STX    HMCLR   
       LDX    #$04    
       JSR    LF076   
       LDA    #$FF    
       BIT    $A2     
       BMI    LF655   
       LDA    #$00    
LF655: STA    $A1     
       LDX    $FB     
       JSR    LF23C   
       LDA    #$FF    
       BIT    $A2     
       BVS    LF664   
       LDA    #$00    
LF664: STA    $A1     
       LDX    $FB     
       JSR    LF23C   
       LDA    #$FF    
       BIT    $A2     
       BMI    LF673   
       LDA    #$00    
LF673: STA    $A1     
       LDX    $FB     
       JSR    LF23C   
       JSR    LF3C8   
       LDA    $C5     
       BMI    LF688   
       BIT    COLUP1  
       BPL    LF688   
       JSR    LFC2E   
LF688: LDX    #$00    
       JSR    LF781   
       LDA    #$04    
       BIT    $F6     
       BEQ    LF696   
       JSR    LF7C6   
LF696: LDX    #$00    
       LDA    $E1     
       JSR    LF7AD   
       INX            
       LDA    $E3     
       JSR    LF7AD   
       INX            
       LDA    $E5     
       JSR    LF7AD   
       JSR    LFD93   
       LDY    $C3     
       LDA    LFE94,Y 
       LDX    $EB     
       BNE    LF6BC   
       LDX    $EA     
       BNE    LF6BC   
       CLC            
       ADC    $C2     
LF6BC: STA    $E9     
       LDA    LFE74,Y 
       AND    #$07    
       TAX            
       LDA    LFEF7,X 
       LDY    LFEF8,X 
       LDX    $A3     
       BPL    LF6D1   
       JSR    LF79A   
LF6D1: STY    WSYNC   
       LDX    #$09    
LF6D5: DEX            
       BNE    LF6D5   
       STA    RESP0   
       STA    RESP1   
       JSR    LFA03   
       STA    CXCLR   
       LDX    #$01    
LF6E3: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $EA,X   
       AND    #$F0    
       LSR            
       STA    $0189,Y 
       LDA    $EA,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $018B,Y 
       DEX            
       BPL    LF6E3   
       JSR    LF000   
       LDA    $E0     
       CMP    $E1     
       LDA    #$08    
       BCC    LF709   
       BCS    LF70A   
LF709: TXA            
LF70A: STA    REFP0   
       LDA    #$11    
       STA    NUSIZ1  
       NOP            
       LDX    #$03    
LF713: DEX            
       BNE    LF713   
       STX    RESP1   
       STX    WSYNC   
       STX    HMCLR   
       LDX    #$04    
       JSR    LF076   
       LDA    $9B     
       STA    $A1     
       LDA    $9C     
       STA    $A2     
       LDX    #$10    
       JSR    LF1BC   
       LDA    $9D     
       STA    $A1     
       LDA    $9E     
       STA    $A2     
       LDX    #$10    
       JSR    LF1BC   
       LDA    $9F     
       STA    $A1     
       LDA    $A0     
       STA    $A2     
       LDX    #$10    
       JSR    LF1BC   
       JSR    LF3C8   
       LDX    #$01    
       JSR    LF781   
       LDX    $82     
       BMI    LF75F   
       LDX    #$0B    
       LDA    #$00    
LF758: ORA    $95,X   
       DEX            
       BPL    LF758   
       CMP    #$00    
LF75F: BNE    LF77E   
       LDA    $C3     
       CMP    #$0F    
       BEQ    LF76A   
       JMP    LF4E0   
LF76A: LDA    #$FF    
       STA    $C5     
       LDA    #$A0    
       STA    $84     
       LDA    #$0E    
       STA    $85     
       LDA    #$AB    
       STA    $EA     
       LDA    #$CD    
       STA    $EB     
LF77E: JMP    LF572   
LF781: LDA    #$00    
       BIT    NUSIZ0  
       BPL    LF78D   
       STA    $D6,X   
       STA    $E2,X   
       STA    $F2,X   
LF78D: INX            
       INX            
       BIT    COLUP0  
       BPL    LF799   
       STA    $D6,X   
       STA    $E2,X   
       STA    $F2,X   
LF799: RTS            

LF79A: TAX            
       LDA    $E9     
       ADC    $C2     
       STA    $E9     
       LDA    $C2     
       ROR            
       ROR            
       ROR            
       ROR            
       TXA            
       BCC    LF7AC   
       STY    $80     
LF7AC: RTS            

LF7AD: LDY    #$01    
       SEC            
LF7B0: INY            
       SBC    #$0F    
       BCS    LF7B0   
       ADC    #$0F    
       STY    $DD,X   
       TAY            
       INY            
       LDA    #$80    
LF7BD: SEC            
       SBC    #$10    
       DEY            
       BNE    LF7BD   
       STA    $DA,X   
       RTS            

LF7C6: LDA    SWCHA   
       LDY    $82     
       BNE    LF7CF   
       LDA    $C1     
LF7CF: STA    $EE     
       AND    #$F0    
       CMP    #$F0    
       BEQ    LF7EF   
       STA    $EF     
       LDA    $C1     
       AND    #$F0    
       CMP    $EF     
       BEQ    LF7EF   
       LDA    $C1     
       AND    #$0F    
       BNE    LF7ED   
       LDA    $EF     
       ORA    #$02    
       STA    $C1     
LF7ED: DEC    $C1     
LF7EF: LDA    #$88    
       AND    $F6     
       CMP    #$08    
       BNE    LF7FB   
       LDA    #$00    
       STA    $EE     
LF7FB: LDA    $A3     
       BPL    LF817   
       INC    $A3     
       BPL    LF807   
       STA    AUDF0   
       BMI    LF86C   
LF807: LDY    #$90    
       LDA    $E0     
       CMP    #$5C    
       BMI    LF811   
       LDY    #$20    
LF811: STY    $E1     
       LDY    #$00    
       STY    AUDV0   
LF817: DEC    $A3     
       BPL    LF859   
       LDA    ($87),Y 
       AND    #$7F    
       STA    $A3     
       LDY    #$01    
       LDA    $E1     
       CMP    $E0     
       JSR    LFE5A   
       TAY            
       INY            
       LDA    $E7     
       CMP    $E8     
       JSR    LFE5A   
       STY    $A4     
       LDY    $82     
       BNE    LF859   
       LDY    #$01    
       LDA    $C2     
       LSR            
       AND    #$03    
       BNE    LF844   
       LDA    #$05    
LF844: TAX            
       LDA    $E0     
       CMP    $E2,X   
       JSR    LFE5A   
       TAY            
       INY            
       LDA    $F2,X   
       CMP    $E7     
       JSR    LFE5A   
       ASL            
       ASL            
       STA    $C1     
LF859: LDX    $C3     
       LDA    LFEA4,X 
       AND    #$0F    
       BIT    $A3     
       BNE    LF86C   
       LDA    $EE     
       AND    #$F0    
       ORA    $A4     
       BNE    LF870   
LF86C: LDA    $EE     
       ORA    #$0F    
LF870: LDX    #$00    
       LDY    $C5     
       BPL    LF878   
       LDA    #$FF    
LF878: ROL            
       BCS    LF884   
       LDY    $E0,X   
       CPY    #$97    
       BEQ    LF884   
       INY            
       STY    $E0,X   
LF884: ROL            
       BCS    LF890   
       LDY    $E0,X   
       CPY    #$20    
       BEQ    LF890   
       DEY            
       STY    $E0,X   
LF890: ROL            
       BCS    LF89C   
       LDY    $E7,X   
       DEY            
       CPY    #$12    
       BEQ    LF89C   
       STY    $E7,X   
LF89C: ROL            
       BCS    LF8A8   
       LDY    $E7,X   
       INY            
       CPY    #$81    
       BEQ    LF8A8   
       STY    $E7,X   
LF8A8: INX            
       CPX    #$02    
       BNE    LF878   
LF8AD: TXA            
       ASL            
       ASL            
       TAY            
       LDA    $84,X   
       AND    #$F0    
       LSR            
       STA    $0189,Y 
       LDA    $84,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $018B,Y 
       DEX            
       BPL    LF8AD   
       LDA    $C5     
       BPL    LF8CB   
       RTS            

LF8CB: LDA    #$08    
       BIT    $F6     
       BEQ    LF8E1   
       BMI    LF8E1   
       LDA    $D6     
       AND    #$0F    
       STA    $EE     
       LDA    $C1     
       AND    #$F0    
       ORA    $EE     
       STA    $D6     
LF8E1: LDX    #$03    
LF8E3: LDA    $D6,X   
       STA    $EF     
       AND    #$0F    
       BEQ    LF931   
       STA    $EE     
       ROL    $EF     
       BCS    LF8FE   
       LDY    $EE     
LF8F3: INC    $E2,X   
       DEY            
       BNE    LF8F3   
       LDA    $E2,X   
       CMP    #$A4    
       BCS    LF93D   
LF8FE: ROL    $EF     
       BCS    LF90F   
       LDY    $EE     
LF904: DEC    $E2,X   
       DEY            
       BNE    LF904   
       LDA    $E2,X   
       CMP    #$18    
       BCC    LF939   
LF90F: ROL    $EF     
       BCS    LF920   
       LDY    $EE     
LF915: DEC    $F2,X   
       DEY            
       BNE    LF915   
       LDA    $F2,X   
       CMP    #$F0    
       BCS    LF963   
LF920: ROL    $EF     
       BCS    LF931   
       LDY    $EE     
LF926: INC    $F2,X   
       DEY            
       BNE    LF926   
       LDA    $F2,X   
       CMP    #$86    
       BCS    LF935   
LF931: DEX            
       BPL    LF8E3   
       RTS            

LF935: LDY    #$00    
       BEQ    LF965   
LF939: LDY    #$0A    
       BNE    LF93F   
LF93D: LDY    #$0B    
LF93F: CPX    #$00    
       BNE    LF967   
       LDA    $F2     
       CMP    #$16    
       BMI    LF9C5   
       CMP    #$26    
       BMI    LF985   
       DEY            
       DEY            
       CMP    #$39    
       BMI    LF9C5   
       CMP    #$49    
       BMI    LF985   
       DEY            
       DEY            
       CMP    #$5C    
       BMI    LF9C5   
       CMP    #$6C    
       BPL    LF9C5   
       BMI    LF985   
LF963: LDY    #$03    
LF965: CPX    #$00    
LF967: BNE    LF9C5   
       LDA    $E2     
       CMP    #$38    
       BMI    LF9C5   
       CMP    #$41    
       BMI    LF985   
       INY            
       CMP    #$58    
       BMI    LF9C5   
       CMP    #$61    
       BMI    LF985   
       INY            
       CMP    #$78    
       BMI    LF9C5   
       CMP    #$81    
       BPL    LF9C5   
LF985: LDA    $0195,Y 
       CMP    #$FF    
       BNE    LF9C5   
       LDA    #$75    
       JSR    LF9D0   
       LDA    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDV0   
       LDX    #$AA    
       STX    $95,Y   
       LDX    #$86    
       STX    $A5,Y   
       LDX    #$03    
       INY            
LF9A6: LDA    $D6,X   
       AND    #$0F    
       BNE    LF9BA   
       LDA    $D6,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       STA    $EE     
       CPY    $EE     
       BEQ    LF9BF   
LF9BA: DEX            
       BNE    LF9A6   
       BEQ    LF9C3   
LF9BF: LDA    #$00    
       STA    $D6,X   
LF9C3: LDX    #$00    
LF9C5: LDA    #$00    
       STA    $D6,X   
       STA    $F2,X   
       STA    $E2,X   
       JMP    LF931   
LF9D0: SED            
       CLC            
       LDX    #$02    
LF9D4: ADC    $84,X   
       STA    $84,X   
       LDA    #$00    
       DEX            
       BPL    LF9D4   
       CLD            
       RTS            

LF9DF: LDA    $E0,X   
       CLC            
       ADC    #$04    
       SEC            
       SBC    $01E2,Y 
       BCC    LFA00   
       SBC    #$08    
       BCS    LFA00   
       LDA    $E7,X   
       CLC            
       ADC    #$04    
       SEC            
       SBC    $01F2,Y 
       BCC    LFA00   
       SBC    #$10    
       BCS    LFA00   
       LDA    #$01    
       RTS            

LFA00: LDA    #$00    
       RTS            

LFA03: SEC            
       SBC    $E6     
       BCS    LFA09   
       DEY            
LFA09: STA    $F7     
       STY    $F8     
LFA0D: LDY    INTIM   
       BNE    LFA0D   
       DEY            
       STA    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       INY            
       LDA    #$F0    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       STY    WSYNC   
       STY    VSYNC   
       LDA    #$24    
       STA    TIM64T  
       LDA    $B7     
       STA    $B3     
       LDA    $B9     
       STA    $B5     
       LDA    $B8     
       STA    $B4     
       LDA    $BA     
       STA    $B6     
       INC    $C2     
       INC    $C2     
       LDX    $F9     
       BEQ    LFA48   
       DEX            
       STX    $F9     
       STX    AUDV1   
LFA48: LDA    #$03    
       LDY    $82     
       BMI    LFA8C   
       LDY    $C4     
       BEQ    LFA8C   
       DEY            
       STY    $C4     
       BPL    LFA59   
       LDA    #$01    
LFA59: STA    $EE     
       CPY    #$80    
       BNE    LFA6B   
       LDX    $C5     
       INX            
       BMI    LFA67   
       JSR    LF470   
LFA67: LDX    #$F0    
       STX    $84     
LFA6B: TYA            
       AND    #$07    
       BNE    LFA76   
       TYA            
       LSR            
       LSR            
       LSR            
       STA    AUDF1   
LFA76: LDA    $EE     
       CPY    #$00    
       BNE    LFA8C   
       STY    AUDV1   
       LDY    $BE     
       STY    $84     
       LDY    $BF     
       STY    $85     
       LDY    $C0     
       STY    $86     
       INC    $C5     
LFA8C: LDY    #$A0    
       CPY    $84     
       BNE    LFA94   
       LDA    #$01    
LFA94: STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$D8    
       STA    COLUPF  
       LDY    $C5     
       BPL    LFAA1   
       RTS            

LFAA1: SED            
       LDA    $C2     
       CMP    #$80    
       BNE    LFAC4   
       LDA    #$00    
       STA    $C2     
       LDA    $EB     
       BNE    LFABD   
       LDA    $EA     
       BEQ    LFAC4   
       SEC            
       SBC    #$01    
       STA    $EA     
       LDA    #$60    
       STA    $EB     
LFABD: LDA    $EB     
       SEC            
       SBC    #$01    
       STA    $EB     
LFAC4: CLD            
       LDY    $C3     
       LDA    LFE84,Y 
       STA    COLUPF  
       INC    $81     
       LDX    $C3     
       LDA    LFE74,X 
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    $81     
       BEQ    LFADE   
       JMP    LFC1F   
LFADE: LDX    #$0B    
LFAE0: LDY    $A5,X   
       BEQ    LFB04   
       LDA    #$01    
       BIT    $F6     
       BEQ    LFAF5   
       CPY    #$12    
       BNE    LFAF5   
       LDA    #$00    
       STA    $A5,X   
       JMP    LFB6A   
LFAF5: INY            
       STY    $A5,X   
       TYA            
       CMP    #$81    
       BMI    LFB00   
       JMP    LFBF9   
LFB00: AND    #$03    
       BEQ    LFB07   
LFB04: JMP    LFC16   
LFB07: CPX    #$06    
       BMI    LFB1E   
       LDA    $B1,X   
       CPY    #$11    
       BMI    LFB16   
       SEC            
       SBC    #$04    
       BNE    LFB19   
LFB16: CLC            
       ADC    #$04    
LFB19: STA    $B1,X   
       JMP    LFB5A   
LFB1E: TYA            
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       DEY            
       STY    $EE     
       TXA            
       CPX    #$03    
       BMI    LFB2F   
       SEC            
       SBC    #$03    
LFB2F: ASL            
       ASL            
       ASL            
       CLC            
       ADC    $EE     
       TAY            
       STX    $EE     
       LDA    LFE24,Y 
       STA    $EF     
       LDA    LFD7B,Y 
       LDY    $A5,X   
       CPX    #$03    
       BMI    LFB49   
       CLC            
       ADC    #$06    
LFB49: TAX            
       LDA    $C6,X   
       CPY    #$11    
       BMI    LFB54   
       ORA    $EF     
       BNE    LFB56   
LFB54: AND    $EF     
LFB56: STA    $C6,X   
       LDX    $EE     
LFB5A: CPY    #$10    
       BEQ    LFB61   
       JMP    LFBEE   
LFB61: LDA    #$01    
       BIT    $F6     
       BEQ    LFB6A   
       JMP    LFBF2   
LFB6A: TXA            
       TAY            
       INY            
       LDX    #$03    
LFB6F: LDA    $D6,X   
       AND    #$0F    
       BNE    LFB83   
       LDA    $D6,X   
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       STA    $EE     
       CPY    $EE     
       BEQ    LFB86   
LFB83: DEX            
       BNE    LFB6F   
LFB86: DEY            
       JSR    LFD5C   
       LDA    LFE00,Y 
       STA    $E2,X   
       LDA    LFE0C,Y 
       STA    $F2,X   
       LDA    LFE18,Y 
       STA    $EF     
       LDA    #$02    
       BIT    $F6     
       BEQ    LFBDD   
       CPY    #$06    
       BMI    LFBC0   
       LDA    $F2,X   
       AND    #$F8    
       STA    $EE     
       LDA    $E7     
       AND    #$F8    
       SEC            
       SBC    $EE     
       BEQ    LFBDD   
       BMI    LFBBA   
       LDA    $EF     
       AND    #$E0    
       BNE    LFBDF   
LFBBA: LDA    $EF     
       AND    #$D0    
       BNE    LFBDF   
LFBC0: LDA    $E2,X   
       AND    #$F8    
       STA    $EE     
       LDA    $E0     
       AND    #$F8    
       SEC            
       SBC    $EE     
       BEQ    LFBDD   
       BMI    LFBD7   
       LDA    $EF     
       AND    #$70    
       BNE    LFBDF   
LFBD7: LDA    $EF     
       AND    #$B0    
       BNE    LFBDF   
LFBDD: LDA    $EF     
LFBDF: STX    $EE     
       LDX    $C3     
       AND    #$F0    
       ORA    LFEB4,X 
       LDX    $EE     
       STA    $D6,X   
       TYA            
       TAX            
LFBEE: CPY    #$20    
       BNE    LFBF6   
LFBF2: LDA    #$00    
       STA    $A5,X   
LFBF6: JMP    LFC16   
LFBF9: ROR            
       LDA    $95,X   
       BCS    LFC01   
       ASL            
       BCC    LFC02   
LFC01: LSR            
LFC02: STA    $95,X   
       TYA            
       SEC            
       SBC    #$80    
       STA    AUDF0   
       CPY    #$8D    
       BNE    LFC16   
       LDY    #$00    
       STY    AUDV0   
       STY    $95,X   
       STY    $A5,X   
LFC16: DEX            
       BMI    LFC1C   
       JMP    LFAE0   
LFC1C: INX            
       STX    $81     
LFC1F: LDX    #$00    
       LDY    #$03    
LFC23: JSR    LF9DF   
       BEQ    LFC5A   
       JSR    LFC2E   
       JMP    LFC5A   
LFC2E: LDA    $C5     
       BNE    LFC49   
       DEC    $C5     
       DEC    $C4     
       LDA    #$00    
       STA    $F9     
       STA    AUDV0   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$18    
       STA    AUDF1   
       STA    AUDV1   
       JSR    LF454   
LFC49: LDA    $82     
       BNE    LFC4F   
       INC    $83     
LFC4F: DEC    $83     
       BPL    LFC57   
       DEC    $C5     
       INC    $83     
LFC57: LDY    #$01    
       RTS            

LFC5A: DEY            
       BNE    LFC23   
       LDA    $E0     
       CLC            
       ADC    #$06    
       SEC            
       SBC    $E1     
       BCC    LFC7C   
       SBC    #$0C    
       BCS    LFC7C   
       LDA    $E7     
       CLC            
       ADC    #$0E    
       SEC            
       SBC    $E8     
       BCC    LFC7C   
       SBC    #$1C    
       BCS    LFC7C   
       JSR    LFC2E   
LFC7C: INX            
       BIT    $A3     
       BMI    LFCBD   
       LDA    $82     
       BNE    LFC95   
       LDA    $C1     
       CMP    #$B0    
       BCC    LFC8F   
       EOR    #$60    
       BCS    LFC91   
LFC8F: EOR    #$F0    
LFC91: STA    $C1     
       BNE    LFC9D   
LFC95: LDA    $EA     
       BNE    LFC9D   
       LDA    $EB     
       BEQ    LFCBD   
LFC9D: JSR    LF9DF   
       BEQ    LFCBD   
       LDA    #$00    
       STA    $D6     
       STA    $F2     
       LDA    #$50    
       JSR    LF9D0   
       LDA    #$01    
       STA    $A4     
       STA    AUDF0   
       LDA    #$C0    
       STA    $A3     
       LDA    #$0D    
       STA    AUDC0   
       STA    AUDV0   
LFCBD: LDA    INPT4   
       LDY    $82     
       BNE    LFCC6   
       LDA    $C2     
       ASL            
LFCC6: ASL            
       BCC    LFCD1   
       LDA    $F6     
       ORA    #$80    
       STA    $F6     
       BMI    LFD18   
LFCD1: LDA    #$10    
       BIT    $F6     
       BEQ    LFCDD   
       LDA    $D6     
       AND    #$0F    
       BNE    LFD18   
LFCDD: LDA    #$20    
       BIT    $F6     
       BNE    LFCE7   
       LDA    $C1     
       BNE    LFCF0   
LFCE7: LDA    SWCHA   
       AND    #$F0    
       CMP    #$F0    
       BEQ    LFD18   
LFCF0: TAX            
       LDA    $F6     
       BPL    LFD18   
       AND    #$7F    
       STA    $F6     
       TXA            
       AND    #$F0    
       ORA    #$03    
       STA    $D6     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFDAC,X 
       CLC            
       ADC    $E7     
       STA    $F2     
       LDA    LFDA0,X 
       CLC            
       ADC    $E0     
       STA    $E2     
       JSR    LFD60   
LFD18: LDX    #$03    
LFD1A: LDA    $D6,X   
       BNE    LFD58   
       INC    $87     
       BNE    LFD2A   
       INC    $88     
       BNE    LFD2A   
       LDA    #$F0    
       STA    $88     
LFD2A: LDA    ($87),Y 
       AND    #$0F    
       CMP    #$0C    
       BMI    LFD35   
       SEC            
       SBC    #$05    
LFD35: TAY            
       LDA    $0195,Y 
       CMP    #$FF    
       BNE    LFD5B   
       LDA    $01A5,Y 
       BNE    LFD5B   
       INY            
       TYA            
       DEY            
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $D6,X   
       LDX    #$01    
       LDA    #$01    
       BIT    $F6     
       BEQ    LFD55   
       LDX    #$12    
LFD55: STX    $A5,Y   
       RTS            

LFD58: DEX            
       BNE    LFD1A   
LFD5B: RTS            

LFD5C: LDA    #$03    
       BNE    LFD62   
LFD60: LDA    #$06    
LFD62: STA    AUDC1   
       STA    AUDF1   
       LDA    #$0F    
       STA    $F9     
       STA    AUDV1   
       RTS            

LFD6D: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFD7B: .byte $02,$02,$01,$01,$01,$01,$02,$02,$03,$03,$02,$02,$02,$02,$03,$03
       .byte $04,$04,$04,$04,$04,$04,$04,$04
LFD93: LDA    $E6,X   
       STA    $E6     
       LDA    $F1,X   
       STA    $F0     
       LDA    $F3,X   
       STA    $F1     
       RTS            

LFDA0: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFDAC: .byte $00,$03,$FF,$00,$00,$FF,$FD,$FE,$00,$FD,$00,$FE,$00,$00,$00,$00
       .byte $70,$70,$60,$60,$F1,$F1,$FA,$FA,$FC,$FC,$78,$78,$30,$48,$48,$30
       .byte $00,$70,$70,$60,$60,$F0,$F0,$F8,$F8,$FC,$FC,$7A,$7A,$31,$49,$48
       .byte $30,$00,$0E,$0E,$06,$06,$8F,$8F,$5F,$5F,$3F,$3F,$1E,$1E,$0C,$12
       .byte $12,$0C,$00,$0E,$0E,$06,$06,$0F,$0F,$1F,$1F,$3F,$3F,$5E,$5E,$8C
       .byte $92,$12,$0C,$00
LFE00: .byte $40,$60,$80,$3C,$5C,$7C,$1A,$9E,$1A,$9E,$1A,$9E
LFE0C: .byte $80,$80,$80,$09,$09,$09,$67,$67,$43,$43,$20,$20
LFE18: .byte $D1,$D1,$D1,$E1,$E1,$E1,$71,$B1,$71,$B1,$71,$B1
LFE24: .byte $FD,$FC,$FE,$FC,$02,$01,$01,$02,$D0,$C0,$7F,$3F,$40,$80,$D0,$F0
       .byte $FB,$F3,$E3,$C3,$E3,$F3,$FB,$FF
LFE3C: .byte $00,$00,$00,$00,$00,$A5,$42,$A5,$18,$18,$A5,$42,$A5,$00,$00,$00
       .byte $00,$00,$10,$38,$12,$5F,$FA,$48,$1C,$08,$00,$00,$00,$00
LFE5A: BNE    LFE5D   
       INY            
LFE5D: BCC    LFE60   
       INY            
LFE60: TYA            
       ASL            
       ASL            
       RTS            

LFE64: .byte $01,$02,$03,$04,$05,$06,$07,$08,$09,$10,$11,$12,$13,$14,$15,$16
LFE74: .byte $80,$82,$84,$86,$80,$82,$84,$86,$60,$62,$44,$46,$40,$42,$24,$26
LFE84: .byte $68,$B6,$04,$26,$68,$B6,$04,$26,$68,$B6,$04,$26,$68,$B6,$04,$26
LFE94: .byte $18,$36,$C8,$D8,$18,$36,$C8,$D8,$18,$36,$C8,$D8,$18,$36,$C8,$D8
LFEA4: .byte $23,$03,$63,$43,$61,$81,$A1,$81,$E1,$C1,$E1,$C1,$E0,$C0,$E0,$C0
LFEB4: .byte $01,$01,$02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04,$04,$04
       .byte $00,$92,$92,$54,$54,$38,$38,$B8,$FE,$D6,$92,$10,$28,$28,$44,$82
       .byte $82,$00,$00,$00,$22,$22,$3E,$FE,$FE,$BF,$D5,$15,$01,$01,$01,$06
       .byte $00,$00,$00,$28,$28,$2E,$3A,$3A,$38,$3C,$38,$3C,$F8,$3C,$38,$70
       .byte $F0,$B0,$60
LFEF7: .byte $F7
LFEF8: .byte $FE,$D5,$FE,$E6,$FE,$FA,$FF,$FF,$3C,$66,$66,$66,$66,$66,$66,$3C
       .byte $18,$18,$18,$18,$18,$18,$18,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C
       .byte $3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C
       .byte $3C,$46,$06,$06,$3C,$60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C
       .byte $30,$30,$18,$18,$0C,$06,$42,$3E,$3C,$66,$66,$66,$3C,$66,$66,$3C
       .byte $3C,$46,$06,$3E,$66,$66,$66,$3C,$FC,$84,$84,$9C,$80,$80,$80,$FC
       .byte $42,$42,$42,$7E,$42,$42,$66,$3C,$81,$81,$81,$81,$99,$99,$A5,$C3
       .byte $7C,$40,$40,$70,$70,$40,$40,$7C,$F8,$FC,$C6,$C2,$C2,$C6,$FC,$F8
       .byte $84,$88,$90,$A0,$F8,$84,$84,$F8
LFF80: .byte $80
LFF81: .byte $80,$00,$00,$02
LFF85: .byte $02
LFF86: .byte $06
LFF87: .byte $06,$24,$24,$18,$5A,$24,$18,$18,$CC,$FD,$DD,$FD,$B6,$FF,$C7,$FF
       .byte $EE,$FD,$FF,$FD,$C7,$FF,$00,$00,$D8,$FF,$E9,$FF,$B6,$FF
LFFA5: .byte $00,$70,$70,$60,$60,$F0,$F0,$F8,$F8,$FF,$FF,$78,$78,$30,$48,$48
       .byte $30
LFFB6: .byte $00,$0E,$0E,$06,$06,$0F,$0F,$1F,$1F,$FF,$FF,$1E,$1E,$0C,$12,$12
       .byte $0C
LFFC7: .byte $00,$70,$70,$62,$62,$F2,$F2,$FA,$FA,$FE,$FE,$78,$78,$30,$48,$48
       .byte $30
LFFD8: .byte $00,$0E,$0E,$06,$06,$0F,$0F,$1F,$1F,$7F,$7F,$5E,$5E,$4C,$52,$52
       .byte $0C,$00,$5A,$5A,$5A,$5A,$5A,$7E,$7E,$87,$87,$87,$FF,$AF,$AF,$7E
       .byte $7E,$3C,$97,$F4,$97,$F4,$97,$F4
