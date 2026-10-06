; Disassembly of roms/Dishastr.bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dishastr.bin
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$20    
       STA    TIM64T  
       JSR    $7928   
LF013: JSR    $798F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $84     
       CMP    #$88    
       BCS    LF05B   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF066   
       LDA    #$00    
       STA    $EA     
       LDX    $85     
       INX            
       CPX    #$05    
       BCC    LF036   
       LDX    #$01    
LF036: STX    $85     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $87     
       STA    $88     
       STA    $89     
       STA    $8A     
       STA    $8C     
       STA    $8E     
       STA    $90     
       STA    $92     
       LDA    $85     
       JSR    $784F   
       STA    $94     
       LDA    #$88    
       STA    $84     
       BNE    LF0AC   
LF05B: LDA    SWCHB   
       AND    #$02    
       BEQ    LF066   
       LDA    #$80    
       STA    $84     
LF066: LDA    $84     
       BNE    LF0AC   
       JSR    $75C1   
       DEC    $82     
       BEQ    LF09A   
       BPL    LF0AC   
       LDX    $83     
       BNE    LF079   
       LDX    #$C3    
LF079: DEX            
       STX    $83     
       LDA    $80     
       STA    $82     
       LDA    #$02    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $7B7F,X 
       TAX            
       LDA    $79B0,X 
       STA    AUDF1   
       BNE    LF0AC   
       STA    AUDV0   
       STA    AUDV1   
       JMP    $70AC   
LF09A: LDX    $83     
       LDA    $7B7F,X 
       CMP    #$FF    
       BNE    LF0AC   
       LDA    #$00    
       STA    HMP0    
       DEX            
       STX    $83     
       BEQ    LF0AC   
LF0AC: LDA    $E8     
       AND    #$01    
       BEQ    LF11D   
       LDA    #$04    
       LDX    #$00    
       JSR    $7965   
       LDA    #$42    
       LDX    #$01    
       JSR    $7965   
       LDA    #$09    
       LDX    #$02    
       JSR    $7965   
       LDA    #$47    
       LDX    #$03    
       JSR    $7965   
       LDA    $B6     
       STA    $D4     
       JSR    $7115   
       STA    $EB     
       LDA    $AA     
       STA    $D6     
       JSR    $7115   
       STA    $EC     
       LDA    $9E     
       STA    $D8     
       LDA    $A7     
       STA    $DA     
       BEQ    LF0EE   
       CMP    $9E     
       BCC    LF0F0   
LF0EE: LDA    $9E     
LF0F0: JSR    $7115   
       STA    $ED     
       LDA    $B3     
       STA    $DC     
       JSR    $7115   
       STA    $EE     
       LDA    $B7     
       STA    $DE     
       LDA    $AB     
       STA    $E0     
       LDA    $9F     
       STA    $E2     
       LDA    $A8     
       STA    $E4     
       LDA    $B4     
       STA    $E6     
       JMP    $717E   
LF115: STA    $D3     
       LSR            
       ADC    $D3     
       ORA    #$0A    
       RTS            

LF11D: LDA    #$13    
       LDX    #$00    
       JSR    $7965   
       LDA    #$50    
       LDX    #$01    
       JSR    $7965   
       LDA    #$18    
       LDX    #$02    
       JSR    $7965   
       LDA    #$55    
       LDX    #$03    
       JSR    $7965   
       LDA    $B0     
       STA    $D4     
       JSR    $7115   
       STA    $EB     
       LDA    $A4     
       STA    $D6     
       JSR    $7115   
       STA    $EC     
       LDA    $A1     
       STA    $D8     
       JSR    $7115   
       STA    $ED     
       LDA    $AD     
       STA    $DA     
       LDA    $B9     
       STA    $DC     
       BEQ    LF162   
       CMP    $AD     
       BCC    LF165   
LF162: LDA.w  $00AD   
LF165: JSR    $7115   
       STA    $EE     
       LDA    $B1     
       STA    $DE     
       LDA    $A5     
       STA    $E0     
       LDA    $A2     
       STA    $E2     
       LDA    $AE     
       STA    $E4     
       LDA    $BA     
       STA    $E6     
LF17E: STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$06    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMCLR   
LF18E: LDA    INTIM   
       BNE    LF18E   
       LDA    #$01    
       STA    CTRLPF  
       LDX    #$1D    
LF199: STA    WSYNC   
       LDA    $7C9E,X 
       STA    PF0     
       LDA    $7C80,X 
       STA    COLUPF  
       LDA    $7CBC,X 
       STA    PF1     
       LDA    $7CDA,X 
       STA    PF2     
       CPX    #$0B    
       BCS    LF1B7   
       LDA    #$50    
       STA    COLUBK  
LF1B7: DEX            
       BPL    LF199   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$07    
       LDX    #$68    
       LDA    $E8     
       AND    #$01    
       BEQ    LF20F   
LF1E0: LDA    $EB     
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $EC     
       STA    COLUP0  
       LDA    $ED     
       STA    COLUP1  
       LDA    ($DA),Y 
       STA.w  $001C   
       NOP            
       LDA    ($DC),Y 
       STA    GRP1    
       LDA    $EE     
       STA    COLUP1  
       DEY            
       BPL    LF1E0   
       LDY    #$07    
       BPL    LF250   
LF20F: LDA    #$0D    
       STA    TIM64T  
       LDA    $84     
       BNE    LF21B   
       JSR    $76C4   
LF21B: LDA    INTIM   
       BNE    LF21B   
       LDX    #$5E    
LF222: STA    WSYNC   
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    $EB     
       STA    COLUP0  
       LDA    ($D4),Y 
       STA    GRP0    
       NOP            
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $EC     
       STA    COLUP0  
       LDA    $ED     
       STA    COLUP1  
       LDA    ($DA),Y 
       STA    GRP1    
       LDA    $EE     
       STA    COLUP1  
       LDA    ($DC),Y 
       STA    GRP1    
       DEY            
       BPL    LF222   
       LDY    #$07    
LF24E: STA    WSYNC   
LF250: LDA    #$55    
       STA    COLUP0  
       STA.w  $0007   
       LDA    ($DE),Y 
       STA    GRP0    
       LDA    #$00    
       STA.w  $001C   
       NOP            
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($E2),Y 
       STA    GRP1    
       DEX            
       NOP            
       LDA    ($E4),Y 
       STA.w  $001C   
       LDA    ($E6),Y 
       STA.w  $001C   
       DEY            
       BPL    LF24E   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    CXCLR   
       STY    ENAM0   
       STY    ENAM1   
       STY    $CF     
       LDA    $97     
       STA    REFP0   
       LDA    #$0C    
       STA    $D0     
       LDA    #$30    
       STA    CTRLPF  
       LDA    #$A8    
       STA    COLUPF  
       LDA    #$04    
       STA    TIM64T  
       LDA    $CA     
       STX    $D1     
       LDX    #$00    
       JSR    $7965   
LF2A4: LDA    INTIM   
       BNE    LF2A4   
       LDX    $D1     
LF2AB: LDA    #$00    
       STA    ENABL   
       STA    $D2     
       LDY    $D0     
       BMI    LF2D3   
       LDA.wy $00BC,Y 
       STA    $D2     
       LDA.wy $00BB,Y 
       STX    $D1     
       LDX    #$04    
       JSR    $7965   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $D1     
       DEX            
       DEX            
       DEX            
       DEC    $D0     
       DEC    $D0     
       DEC    $D0     
LF2D3: DEX            
       BEQ    LF310   
       STA    WSYNC   
       STA    HMCLR   
       CPX    #$15    
       BCS    LF2FC   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    NUSIZ0  
       TXA            
       TAY            
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    #$36    
       CPX    #$10    
       BCS    LF2FA   
       LDA    #$AA    
       CPX    #$08    
       BCS    LF2FA   
       LDA    #$36    
LF2FA: STA    COLUP0  
LF2FC: LDA    $CF     
       DEC    $CF     
       BEQ    LF2AB   
       CPX    $D2     
       BNE    LF30E   
       LDA    #$08    
       STA    $CF     
       LDA    #$FF    
       STA    ENABL   
LF30E: BNE    LF2D3   
LF310: STX    ENABL   
       STX    GRP0    
       STX    ENAM0   
       STX    ENAM1   
       LDA    #$18    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$0C    
       STA    TIM64T  
       LDA    #$00    
       LDY    #$04    
       LDX    $86     
       BEQ    LF341   
       CPX    #$08    
       BCC    LF333   
       LDX    #$08    
       STX    $86     
LF333: SEC            
       ROR            
       ROR            
       DEX            
       BEQ    LF341   
       DEY            
       BNE    LF333   
       TAY            
       LDA    #$00    
       BEQ    LF346   
LF341: TAY            
       LDA    #$00    
       BEQ    LF34C   
LF346: SEC            
       ROL            
       ROL            
       DEX            
       BNE    LF346   
LF34C: TAX            
       LDA    #$06    
       STA    $D3     
LF351: STA    WSYNC   
       DEC.w  $00D3   
       BEQ    LF375   
       LDA    #$00    
       STA.w  $000D   
       STY.w  $000E   
       STX.w  $000F   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA.w  $000E   
       STA.w  $000F   
       JMP    $7351   
LF375: LDA    INTIM   
       BNE    LF375   
       JSR    $7856   
       LDA    #$20    
       LDX    #$00    
       JSR    $7965   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$28    
       LDX    #$01    
       JSR    $7965   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
       LDA    $EA     
       CMP    #$99    
       BEQ    LF3ED   
LF3B7: STA    WSYNC   
       LDA    $7F58,X 
       STA    GRP0    
       LDA    $7F61,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $7F73,X 
       TAY            
       LDA    $7F6A,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF3B7   
LF3D8: LDA    #$20    
       STA    TIM64T  
       INC    $E8     
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF426   
       LDA    $84     
       BEQ    LF3FB   
       JMP    $74BD   
LF3ED: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       DEX            
       BPL    LF3ED   
       JMP    $73D8   
LF3FB: JSR    $752E   
       JSR    $78DE   
       LDA    $E8     
       AND    #$07    
       BNE    LF40D   
       JSR    $77EC   
       JMP    $7013   
LF40D: CMP    #$01    
       BNE    LF420   
       JSR    $790F   
       LDA    $85     
       CMP    #$04    
       BNE    LF41D   
       JSR    $76C4   
LF41D: JMP    $7013   
LF420: JSR    $769F   
       JMP    $7013   
LF426: LDA    SWCHB   
       AND    #$01    
       BNE    LF48B   
       JSR    $751D   
       LDA    #$99    
       STA    $EA     
       STA    $87     
       STA    $88     
       LDA    #$90    
       STA    $89     
       JSR    $77EC   
       LDA    #$04    
       STA    $86     
       LDA    $85     
       CMP    #$02    
       BCC    LF473   
       BEQ    LF467   
       CMP    #$03    
       BEQ    LF45B   
       LDA    #$80    
       STA    $A6     
       LDA    #$60    
       STA    $A7     
       LDA    #$60    
       STA    $A8     
LF45B: LDA    #$A0    
       STA    $A3     
       LDA    #$70    
       STA    $A4     
       LDA    #$70    
       STA    $A5     
LF467: LDA    #$C0    
       STA    $A0     
       LDA    #$70    
       STA    $A1     
       LDA    #$70    
       STA    $A2     
LF473: LDA    #$E0    
       STA    $9D     
       LDA    #$80    
       STA    $9E     
       LDA    #$30    
       STA    $9F     
       LDA    #$01    
       STA    $82     
       LDA    #$00    
       STA    $83     
       LDA    #$48    
       STA    $84     
LF48B: JMP    $7013   
LF48E: LDA    $E9     
       BEQ    LF49B   
       STA    HMP0    
       STA    AUDV0   
       DEC    $E9     
       JMP    $7013   
LF49B: LDA    #$28    
       STA    $84     
       JMP    $7013   
LF4A2: LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$13    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV0   
       STA    HMP0    
       STA    $E9     
       LDA    #$18    
       STA    $84     
       JMP    $7013   
LF4BD: CMP    #$28    
       BEQ    LF4D0   
       CMP    #$48    
       BEQ    LF4E8   
       CMP    #$01    
       BEQ    LF4A2   
       CMP    #$18    
       BEQ    LF48E   
       JMP    $7013   
LF4D0: LDA    #$00    
       STA    $84     
       DEC    $86     
       BEQ    LF4DB   
       JMP    $7013   
LF4DB: LDA    #$40    
       STA    $84     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    $7013   
LF4E8: LDA    #$7F    
       STA    $CB     
       LDA    #$40    
       STA    $CA     
       LDA    $85     
       CMP    #$02    
       BCC    LF502   
       BEQ    LF508   
       CMP    #$03    
       BEQ    LF50E   
       LDA    #$1D    
       LDX    #$06    
       BNE    LF512   
LF502: LDA    #$11    
       LDX    #$04    
       BNE    LF512   
LF508: LDA    #$17    
       LDX    #$05    
       BNE    LF512   
LF50E: LDA    #$1D    
       LDX    #$05    
LF512: STA    $81     
       STX    $9C     
       LDA    #$00    
       STA    $84     
       JMP    $7013   
LF51D: LDA    #$00    
       LDX    #$1D    
LF521: STA    $9D,X   
       DEX            
       BPL    LF521   
       LDX    #$0E    
LF528: STA    $BB,X   
       DEX            
       BPL    LF528   
       RTS            

LF52E: LDA    $82     
       BNE    LF557   
       LDA    $83     
       CMP    #$78    
       BEQ    LF53C   
       CMP    #$1C    
       BNE    LF557   
LF53C: LDX    #$00    
LF53E: LDA    $9F,X   
       BEQ    LF54B   
       INX            
       INX            
       INX            
       CPX    $81     
       BCS    LF557   
       BCC    LF53E   
LF54B: LDA    #$FF    
       STA    $9D,X   
       LDA    #$80    
       STA    $9E,X   
       LDA    #$30    
       STA    $9F,X   
LF557: RTS            

LF558: SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF568   
       LDA    #$40    
       STA    $9E,X   
       JMP    $75C0   
LF568: LDA    $9E,X   
       CMP    #$68    
       BEQ    LF580   
       CMP    #$60    
       BEQ    LF586   
       CMP    #$58    
       BEQ    LF58C   
       CMP    #$50    
       BEQ    LF592   
       LDY    #$68    
       LDA    #$68    
       BNE    LF5BB   
LF580: LDY    #$60    
       LDA    #$60    
       BNE    LF5BB   
LF586: LDY    #$58    
       LDA    #$58    
       BNE    LF5BB   
LF58C: LDY    #$50    
       LDA    #$50    
       BNE    LF5BB   
LF592: LDY    #$48    
       LDA    #$48    
       BNE    LF5BB   
LF598: BCC    LF558   
LF59A: SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF5AA   
       LDA    #$68    
       STA    $9E,X   
       JMP    $75C0   
LF5AA: LDA.wx $009E,X 
       CMP    #$78    
       BEQ    LF5B7   
       LDY    #$68    
       LDA    #$78    
       BNE    LF5BB   
LF5B7: LDY    #$70    
       LDA    #$70    
LF5BB: STA    $9E,X   
       TYA            
       STA    $9F,X   
LF5C0: RTS            

LF5C1: LDX    $9B     
       DEX            
       DEX            
       DEX            
       BPL    LF5CA   
       LDX    #$1B    
LF5CA: STX    $9B     
       LDA    $9F,X   
       BEQ    LF5C0   
       CMP    #$08    
       BEQ    LF5C0   
       LDA    $9E,X   
       CMP    #$48    
       BCC    LF5F9   
       CMP    #$70    
       BCC    LF598   
       CMP    #$80    
       BCC    LF59A   
       SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF5F0   
       LDA    #$78    
       STA    $9E,X   
       RTS            

LF5F0: LDA    #$80    
       STA    $9E,X   
       LDA    #$30    
       STA    $9F,X   
       RTS            

LF5F9: SEC            
       LDA    $9D,X   
       SBC    $9C     
       BCC    LF646   
LF600: STA    $9D,X   
       LDA    $9E,X   
       CMP    #$40    
       BEQ    LF622   
       CMP    #$38    
       BEQ    LF628   
       CMP    #$30    
       BEQ    LF62E   
       CMP    #$28    
       BEQ    LF634   
       CMP    #$20    
       BEQ    LF63A   
       CMP    #$18    
       BEQ    LF640   
       LDY    #$40    
       LDA    #$40    
       BEQ    LF5BB   
LF622: LDY    #$38    
       LDA    #$38    
LF626: BNE    LF5BB   
LF628: LDY    #$30    
       LDA    #$30    
       BNE    LF5BB   
LF62E: LDY    #$28    
       LDA    #$28    
       BNE    LF5BB   
LF634: LDY    #$20    
       LDA    #$20    
       BNE    LF5BB   
LF63A: LDY    #$18    
       LDA    #$18    
       BNE    LF626   
LF640: LDY    #$10    
       LDA    #$10    
       BNE    LF626   
LF646: LDY    #$56    
       LDA    $9B     
       AND    #$01    
       BEQ    LF650   
       LDY    #$4D    
LF650: TYA            
       SEC            
       SBC    #$0C    
       CMP.w  $00C8   
       BCS    LF65D   
LF659: LDA    #$04    
       BNE    LF600   
LF65D: LDA.w  $00BC   
       BNE    LF659   
       LDX    #$00    
LF664: LDA    $BE,X   
       STA    $BB,X   
       INX            
       CPX    #$0C    
       BNE    LF664   
       LDX    $9B     
       STY    $C8     
       STX    $C9     
       LDA    $7683,X 
       STA    $C7     
       LDA    #$08    
       STA    $9E,X   
       LDA    #$08    
       STA    $9F,X   
       RTS            

LF681: .byte $40
LF682: .byte $44
LF683: .byte $42,$4E,$52,$50,$32,$36,$34,$60,$64,$62,$22,$26,$24,$6E,$72,$70
       .byte $12,$16,$14,$80,$84,$82,$02,$06,$04,$8E,$92,$90
LF69F: LDX    #$0D    
LF6A1: LDA    $BB,X   
       BEQ    LF6BE   
       CMP    #$11    
       BCS    LF6BC   
       LDA    #$01    
       STA    $84     
       STA    $BB,X   
       LDA    $BC,X   
       STX    $D3     
       TAX            
       LDA    #$00    
       STA    $9E,X   
       STA    $9F,X   
       LDX    $D3     
LF6BC: DEC    $BB,X   
LF6BE: DEX            
       DEX            
       DEX            
       BPL    LF6A1   
       RTS            

LF6C4: LDA    $9A     
       CMP    #$07    
       BNE    LF6CB   
       RTS            

LF6CB: INC    $99     
       JSR    $77B7   
       LDX    $CA     
       LDA    SWCHA   
       ASL            
       BCS    LF719   
       LDA    #$00    
       STA    $97     
       INX            
LF6DD: LDA    $CB     
       CMP    #$BB    
       BEQ    LF713   
       CMP    #$CF    
       BEQ    LF713   
       LDA    $99     
       AND    #$01    
       BNE    LF70D   
       LDA    $CB     
       CMP    #$93    
       BNE    LF709   
       LDA    $98     
       BNE    LF700   
       LDA    #$01    
       STA    $98     
       LDA    #$7F    
       JMP    $770B   
LF700: LDA    #$00    
       STA    $98     
       LDA    #$A7    
       JMP    $770B   
LF709: LDA    #$93    
LF70B: STA    $CB     
LF70D: JSR    $77AA   
LF710: JMP    $7724   
LF713: JSR    $77CE   
       JMP    $7724   
LF719: ASL            
       BCS    LF710   
       DEX            
       LDA    #$08    
       STA    $97     
       JMP    $76DD   
LF724: CPX    #$01    
       BCC    LF730   
       CPX    #$98    
       BCC    LF732   
       LDX    #$98    
       BNE    LF732   
LF730: LDX    #$01    
LF732: STX    $CA     
       TXA            
       LDX    #$00    
LF737: CMP    $7681,X 
       BCC    LF741   
       CMP    $7682,X 
       BCC    LF758   
LF741: INX            
       INX            
       INX            
       CPX    #$1E    
       BCC    LF737   
       LDA    $CB     
       CMP    #$BB    
       BEQ    LF753   
       CMP    #$CF    
       BEQ    LF753   
       RTS            

LF753: LDA    #$93    
       STA    $CB     
       RTS            

LF758: LDA    $E8     
       AND    #$08    
       BEQ    LF763   
       LDA    #$BB    
       JMP    $7765   
LF763: LDA    #$CF    
LF765: STA    $CB     
       LDA.w  $000C   
       AND    #$80    
       BEQ    LF76F   
       RTS            

LF76F: LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       LDA    $E8     
       AND    #$04    
       LSR            
       STA    AUDV0   
       LDA    $9D,X   
       ADC    #$0A    
       STA    $9D,X   
       BCC    LF79A   
       LDA    $9E,X   
       BEQ    LF79A   
       CMP    #$48    
       BCC    LF79B   
       CMP    #$70    
       BCC    LF7A0   
       CMP    #$80    
       BCC    LF7A5   
       LDA    #$FF    
       STA    $9D,X   
LF79A: RTS            

LF79B: LDA    #$68    
       STA    $9E,X   
       RTS            

LF7A0: LDA    #$78    
       STA    $9E,X   
       RTS            

LF7A5: LDA    #$80    
       STA    $9E,X   
       RTS            

LF7AA: LDA    $99     
       AND    #$07    
       CMP    #$02    
       BEQ    LF7D7   
       CMP    #$06    
       BEQ    LF7DD   
       RTS            

LF7B7: DEC    $96     
       DEC    $96     
       DEC    $96     
       DEC    $96     
       DEC    $96     
       LDA    $96     
       CMP    #$80    
       BCC    LF7C9   
       LDA    #$00    
LF7C9: STA    AUDV0   
       STA    $96     
       RTS            

LF7CE: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       RTS            

LF7D7: LDA    #$1A    
       STA    AUDF0   
       BNE    LF7E1   
LF7DD: LDA    #$1B    
       STA    AUDF0   
LF7E1: LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDV0   
       STA    $96     
       RTS            

LF7EC: CLC            
       SED            
       LDA    $89     
       ADC    #$10    
       STA    $89     
       LDA    $88     
       ADC    #$00    
       STA    $88     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       CLD            
       LDA    $88     
       ORA    $89     
       BNE    LF809   
       INC    $86     
LF809: LDA    $87     
       BEQ    LF815   
       LDA    #$02    
       CMP    $9C     
       BNE    LF815   
       INC    $9C     
LF815: LDA    $87     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $8A     
       LDA    $87     
       AND    #$0F    
       JSR    $784F   
       STA    $8C     
       LDA    $88     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $8E     
       LDA    $88     
       AND    #$0F    
       JSR    $784F   
       STA    $90     
       LDA    $89     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $92     
       LDA    $89     
       AND    #$0F    
       JSR    $784F   
       STA    $94     
       RTS            

LF84F: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LF856: LDA    #$00    
       STA    REFP0   
       STA    COLUBK  
       LDA    #$18    
       LDX    #$00    
       JSR    $7965   
       LDA    #$48    
       LDX    #$01    
       JSR    $7965   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$8A    
       STA    COLUBK  
       LDA    #$02    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$00    
       LDA    $8A     
       CMP    #$08    
       BNE    LF8B0   
       STX    $8A     
       LDA    $8C     
       CMP    #$08    
       BNE    LF8B0   
       STX    $8C     
       LDA    $8E     
       CMP    #$08    
       BNE    LF8B0   
       STX    $8E     
       LDA    $90     
       CMP    #$08    
       BNE    LF8B0   
       STX    $90     
       LDA    $92     
       CMP    #$08    
       BNE    LF8B0   
       STX    $92     
LF8B0: STA    WSYNC   
       LDA    ($8A),Y 
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       TAX            
       LDA    ($8C),Y 
       STA    GRP0    
       NOP            
       STX    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    GRP1    
       DEY            
       BNE    LF8B0   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    COLUBK  
       RTS            

LF8DE: LDA    WSYNC   
       AND    #$40    
       BEQ    LF90E   
       LDX    #$00    
LF8E6: LDA    $BC,X   
       BNE    LF8F3   
       INX            
       INX            
       INX            
       CPX    #$0F    
       BCC    LF8E6   
       BCS    LF90E   
LF8F3: STX    $D3     
       LDA    $BD,X   
       TAX            
       LDA    #$80    
       STA    $9D,X   
       LDA    #$68    
       STA    $9E,X   
       LDA    #$68    
       STA    $9F,X   
       LDA    #$00    
       LDX    $D3     
       STA    $BB,X   
       STA    $BC,X   
       STA    $BD,X   
LF90E: RTS            

LF90F: LDX    $85     
       LDA    #$07    
       CPX    #$01    
       BEQ    LF925   
       LDA    #$06    
       CPX    #$02    
       BEQ    LF925   
       LDA    #$05    
       CPX    #$03    
       BEQ    LF925   
       LDA    #$04    
LF925: STA    $80     
       RTS            

LF928: LDA    #$FD    
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       STA    $DD     
       LDA    #$FE    
       STA    $DF     
       STA    $E1     
       STA    $E3     
       STA    $E5     
       STA    $E7     
       STA    $CC     
       LDA    #$FF    
       STA    $8B     
       STA    $8D     
       STA    $8F     
       STA    $91     
       STA    $93     
       STA    $95     
       LDA    #$80    
       STA    $84     
       LDA    #$01    
       STA    $85     
       LDA    #$10    
       STA    $94     
       LDA    #$7F    
       STA    $CB     
       LDA    #$40    
       STA    $CA     
       RTS            

LF965: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00D3   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00D3   
       CMP    #$0F    
       BCC    LF97F   
       SBC    #$0F    
       INY            
LF97F: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF989: DEY            
       BPL    LF989   
       STA    RESP0,X 
       RTS            

LF98F: LDA    INTIM   
       BNE    LF98F   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$31    
       STA    TIM64T  
       RTS            

LF9B0: .byte $1D,$1A,$17,$14,$13,$11,$0F,$0E,$0C,$0B,$0A,$09,$08,$07,$0D,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
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
       .byte $06,$06,$0B,$0B,$0C,$0C,$0B,$0B,$0B,$0B,$0B,$0B,$0C,$0C,$0B,$0B
       .byte $0A,$0A,$0B,$0B,$0B,$0B,$04,$05,$07,$08,$09,$08,$07,$06,$08,$08
       .byte $0B,$0C,$0E,$0C,$0B,$08,$08,$07,$08,$08,$09,$09,$09,$09,$0A,$0A
       .byte $0A,$0A,$0B,$0B,$0B,$0B,$02,$02,$0A,$04,$05,$00,$00,$00,$04,$04
       .byte $05,$06,$07,$01,$02,$03,$04,$08,$08,$08,$08,$07,$07,$08,$08,$08
       .byte $09,$09,$07,$08,$08,$08,$08,$09,$09,$09,$09,$0A,$0A,$0A,$0A,$09
       .byte $09,$0A,$0A,$0A,$0B,$0B,$09,$0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B,$02
       .byte $02,$0A,$04,$05,$00,$00,$00,$04,$04,$05,$06,$07,$01,$01,$01
LFB7F: .byte $08,$08,$FF,$08,$08,$08,$08,$FF,$09,$09,$FF,$0A,$0A,$FF,$0B,$0B
       .byte $FF,$0C,$0C,$FF,$0B,$FF,$0A,$FF,$0B,$0B,$FF,$0B,$0B,$FF,$0B,$0B
       .byte $FF,$09,$09,$FF,$0E,$0E,$FF,$05,$FF,$05,$05,$05,$FF,$05,$05,$05
       .byte $05,$FF,$05,$05,$05,$05,$FF,$08,$08,$FF,$09,$09,$FF,$06,$06,$FF
       .byte $08,$08,$FF,$08,$FF,$08,$FF,$08,$08,$FF,$08,$08,$FF,$08,$08,$FF
       .byte $06,$06,$FF,$09,$09,$FF,$06,$06,$FF,$08,$08,$FF,$08,$FF,$08,$FF
       .byte $08,$08,$FF,$08,$08,$08,$08,$FF,$09,$09,$FF,$0A,$0A,$FF,$0B,$0B
       .byte $FF,$09,$09,$FF,$08,$FF,$07,$FF,$07,$07,$FF,$07,$07,$FF,$07,$07
       .byte $FF,$05,$05,$FF,$08,$08,$FF,$05,$05,$FF,$07,$07,$FF,$07,$FF,$07
       .byte $FF,$07,$07,$FF,$07,$07,$FF,$07,$07,$FF,$06,$06,$FF,$09,$09,$FF
       .byte $06,$06,$FF,$08,$08,$FF,$08,$FF,$08,$FF,$08,$08,$FF,$08,$08,$FF
       .byte $08,$08,$FF,$06,$06,$FF,$09,$09,$FF,$06,$06,$FF,$08,$08,$FF,$08
       .byte $FF,$08,$FF,$08,$08,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LFC80: .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$58,$78,$78,$78,$BA,$BA,$BA,$1C
       .byte $1C,$1C,$26,$26,$26,$34,$34,$34,$14,$14,$1A,$1A,$1A,$1A
LFC9E: .byte $60,$60,$60,$60,$F0,$F0,$F0,$F0,$00,$F0,$F0,$F0,$F0,$F0,$F0,$90
       .byte $90,$90,$00,$00,$00,$00,$00,$00,$00,$00,$80,$00,$00,$00
LFCBC: .byte $66,$66,$66,$66,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FC
       .byte $FC,$FC,$F8,$F8,$F8,$70,$70,$70,$20,$20,$E0,$E0,$60,$20
LFCDA: .byte $66,$66,$66,$66,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$7F
       .byte $7F,$7F,$3E,$3E,$3E,$1C,$1C,$1C,$08,$08,$0F,$0E,$0C,$08,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$62,$7A,$FC,$FE,$7F,$7F,$3F,$1E,$06,$1E
       .byte $3F,$7F,$FE,$FE,$FC,$78,$27,$2F,$2F,$3E,$7C,$FC,$30,$00,$47,$4F
       .byte $5F,$7E,$7E,$FC,$F8,$38,$08,$3C,$7E,$FF,$FF,$FF,$7E,$3C,$D0,$F0
       .byte $F8,$7E,$7E,$3F,$1F,$1C,$E4,$F4,$34,$3C,$1E,$0F,$06,$00,$20,$38
       .byte $7C,$FE,$FF,$7E,$3C,$18,$30,$20,$26,$3F,$3E,$7C,$F0,$00,$20,$28
       .byte $3F,$7E,$FC,$F8,$30,$00,$04,$14,$FC,$7E,$3F,$1F,$0C,$00,$04,$04
       .byte $64,$FC,$7C,$3E,$0F,$00,$20,$20,$23,$26,$3E,$7C,$E0,$80,$06,$06
       .byte $C2,$62,$7E,$3E,$07,$01,$08,$08,$08,$08,$3C,$FF,$00,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$0C,$04,$04,$06,$08,$18
       .byte $10,$10,$10,$30,$20,$20,$08,$08,$08,$08,$08,$10,$10,$10,$08,$18
       .byte $10,$30,$20,$20,$60,$40,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$18,$10,$10,$10,$10,$08,$08,$08,$08,$0C,$0C,$04,$04,$08,$08
       .byte $18,$10,$10,$30,$20,$20,$08,$08,$08,$08,$10,$10,$10,$10,$08,$08
       .byte $08,$08,$08,$10,$30,$20,$08,$08,$08,$08,$08,$08,$0C,$04,$08,$08
       .byte $08,$08,$0C,$04,$04,$04,$08,$08,$08,$08,$18,$10,$10,$30,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$1C,$18,$18,$18,$18,$18,$98,$FC,$FC,$38
       .byte $38,$79,$3B,$7E,$2C,$10,$38,$BC,$78,$18,$6C,$48,$48,$48,$48,$48
       .byte $48,$7C,$6C,$34,$34,$6C,$5C,$78,$68,$10,$38,$BC,$78,$18,$03,$83
       .byte $C2,$42,$46,$64,$3C,$3C,$78,$78,$0C,$74,$D4,$FC,$6E,$13,$39,$BD
       .byte $F8,$18,$1C,$18,$18,$18,$18,$98,$FC,$FC,$3E,$7E,$FC,$BC,$F8,$6C
       .byte $16,$3A,$BE,$7B,$19,$03,$EE,$CC,$CC,$CC,$EC,$7C,$3C,$26,$1B,$37
       .byte $6E,$7C,$7C,$2E,$13,$39,$BD,$79,$1B,$06,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C
       .byte $66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18,$00,$7E
       .byte $60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C,$00,$0C
       .byte $0C,$7E,$6C,$3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E,$00,$3C
       .byte $66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E,$00,$3C
       .byte $66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
LFF58: .byte $00,$FC,$80,$40,$20,$10,$08,$04,$FC
LFF61: .byte $00,$90,$90,$90,$92,$97,$1D,$98,$90
LFF6A: .byte $00,$50,$50,$5F,$50,$50,$C9,$CF,$46
LFF73: .byte $00,$9D,$A3,$A3,$A7,$A0,$20,$21,$1E,$FF,$FF,$FF,$FF,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$F0
