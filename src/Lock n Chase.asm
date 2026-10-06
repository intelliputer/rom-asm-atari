; Disassembly of roms/Lock n Chase.bin
; Disassembled Tue Oct  6 15:21:51 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Lock n Chase.bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM1   =  $13
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
HMP0    =  $20
HMP1    =  $21
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
SWCHA   =  $0280
SWCHB   =  $0282
TIM64T  =  $0296
T1024T  =  $0297
LF9F2   =   $F9F2
LFA30   =   $FA30
LFA3B   =   $FA3B
LFA59   =   $FA59
LFA5B   =   $FA5B
LFA73   =   $FA73
LFA75   =   $FA75
LFA9F   =   $FA9F
LFADA   =   $FADA
LFAF7   =   $FAF7
LFB23   =   $FB23

       ORG $F000
LF000: STA    WSYNC   
       STA    HMOVE   
       LDA    $D3     
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
       LDA    $CD     
       STA    GRP1    
       LDA    $CF     
       STA    ENAM0   
       DEY            
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C8),Y 
       STA    $D3     
       STA    HMM1    
       LDA    #$00    
       STA    $CD     
       LDA    $E0,X   
       TAX            
       BEQ    LF087   
       LDA    $BA,X   
       STA    $F0     
       LDA    $EE     
       STA    WSYNC   
       SEC            
       SBC    $BA,X   
       STA    $C6     
       LDA    $B5,X   
       STA    HMP1    
       AND    #$0F    
LF03B: SBC    #$01    
       BPL    LF03B   
       STA    RESP1   
LF041: LDX    $D1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    $D3     
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
       LDA    $CD     
       STA    GRP1    
       DEY            
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    $CD     
       STA    HMCLR   
       LDA    $E1,X   
       TAX            
       BEQ    LF09D   
       LDA    #$00    
       STA    $D3     
       STA    ENAM1   
       STA    ENAM0   
       LDA    $BA,X   
       STA    $F1     
       LDA    $EF     
       STA    WSYNC   
       SEC            
       SBC    $BA,X   
       STA    $C8     
       LDA    $B5,X   
       STA    HMM1    
       AND    #$0F    
LF07E: SBC    #$01    
       BPL    LF07E   
       STA    RESM1   
       JMP    LF1D4   
LF087: STA    WSYNC   
       LDA    ($C6),Y 
       STA    $CD     
       CPY    $F0     
       BCS    LF09A   
       STY    $CB     
       LDA    #$B9    
       SEC            
       SBC    $CB     
       STA    $C6     
LF09A: JMP    LF041   
LF09D: STA    ENAM0   
       STA    WSYNC   
       LDA    ($C8),Y 
       STA    $D3     
       STA    HMM1    
       CPY    $F1     
       BCS    LF0B4   
       STY    $CB     
       LDA    #$B9    
       SEC            
       SBC    $CB     
       STA    $C8     
LF0B4: JMP    LF1D4   
LF0B7: LDA    $B5     
       LDX    #$00    
       JSR    LF894   
       LDA    #$C0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       LDA    #$7F    
       STA    PF2     
       LDA    #$00    
       STA    VDELP1  
       LDA    #$01    
       STA    VDELP0  
       LDX    $8B     
       LDA    LF168,X 
       STA    COLUP0  
       LDA    #$9A    
       STA    COLUP1  
       LDA    #$30    
       STA    NUSIZ0  
       LDA    #$FD    
       STA    $C9     
       STA    $C7     
       LDA    #$FE    
       STA    $C5     
       LDA    #$59    
       STA    $C8     
       STA    $C6     
       LDA    $ED     
       SEC            
       SBC    $BA     
       LDX    $BA     
       CPX    #$60    
       BCS    LF0FE   
       LDA    #$65    
LF0FE: STA    $C4     
       LDA    #$FF    
       STA    $F1     
       STA    $F0     
       STA    HMCLR   
       LDX    #$00    
       STX    $D3     
       STX    $CD     
       LDA    $8E     
       AND    #$40    
       BNE    LF116   
       LDX    #$FF    
LF116: STX    $CF     
       STA    WSYNC   
       LDX    #$0B    
       STX    $D1     
       LDY    #$60    
LF120: LDA    #$00    
       STA    $D5     
       STA    $D6     
       STA    $D7     
       STA    $D8     
       STA    $D9     
       STA    $DA     
       LDX    $D1     
       JSR    LF000   
       JSR    LF16A   
       JSR    LF1D4   
       JSR    LF19D   
       JSR    LF19D   
       JSR    LF1F4   
       JSR    LF19D   
       JSR    LF19D   
       JSR    LF19D   
       DEC    $D1     
       BEQ    LF165   
       JSR    LF16A   
       JSR    LF1D4   
       JSR    LF19D   
       JSR    LF19D   
       JSR    LF1F4   
       STA    WSYNC   
       DEC    $D1     
       JMP    LF120   
LF165: JMP    LF2A3   
LF168: .byte $34,$C8
LF16A: STA    WSYNC   
       LDA    #$00    
       STA    $CF     
       LDX    $D1     
       LDA    LFD00,X 
       STA    PF0     
       LDA    LFD0D,X 
       STA    PF1     
       LDA    LFD1A,X 
       STA    PF2     
       STY    $CB     
       TYA            
       SEC            
       SBC    $BA     
       BCC    LF195   
       CMP    #$0F    
       BCS    LF195   
       LDA    $ED     
       SEC            
       SBC    $BA     
       STA    $C4     
       RTS            

LF195: LDA    #$C5    
       SEC            
       SBC    $CB     
       STA    $C4     
       RTS            

LF19D: STA    WSYNC   
       LDA    $8E     
       AND    #$10    
       BEQ    LF1B3   
       LDA    #$00    
       CPY    #$37    
       BCC    LF1B1   
       CPY    #$3A    
       BCS    LF1B1   
       LDA    #$FF    
LF1B1: STA    ENAM0   
LF1B3: LDA    $8E     
       AND    #$20    
       BEQ    LF1D4   
       CPY    #$28    
       BEQ    LF1CC   
       CPY    #$26    
       BNE    LF1D4   
       LDA    #$00    
       STA    PF2     
       LDA    #$94    
       STA    COLUPF  
       JMP    LF1D4   
LF1CC: LDA    #$80    
       STA    PF2     
       LDA    #$58    
       STA    COLUPF  
LF1D4: STA    WSYNC   
       STA    HMOVE   
       LDA    $D3     
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
       LDA    $CD     
       STA    GRP1    
       DEY            
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    $CD     
       LDA    ($C8),Y 
       STA    $D3     
       STA    HMM1    
       RTS            

LF1F4: STA    WSYNC   
       LDA    $DB     
       ASL            
       AND    #$0F    
       CMP    $D1     
       BNE    LF209   
       LDA    $DB     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    #$5A    
       STA    $D4,X   
LF209: LDA    $DC     
       ASL            
       AND    #$0F    
       CMP    $D1     
       BNE    LF21C   
       LDA    $DC     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    #$5A    
       STA    $D4,X   
LF21C: LDA    $D3     
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM1   
       ASL            
       ASL            
       STA    NUSIZ1  
       LDA    $CD     
       STA    GRP1    
       LDX    $D8     
       LDA    $D5     
       STA    COLUBK  
       LDA    $D6     
       STA    COLUBK  
       DEY            
       LDA    $D7     
       STA    COLUBK  
       LDA    ($C4),Y 
       STX    COLUBK  
       LDX    $D9     
       STX    COLUBK  
       STA    GRP0    
       LDX    $DA     
       STX    COLUBK  
       LDA    #$00    
       NOP            
       STA    COLUBK  
       STA    WSYNC   
       LDX    $D1     
       LDA    $8F,X   
       AND    #$AA    
       STA    PF2     
       EOR    $8F,X   
       STA    PF1     
       NOP            
       NOP            
       LDA    #$2C    
       STA    COLUPF  
       LDA    ($C8),Y 
       STA    $D3     
       STA    HMM1    
       LDA    $9B,X   
       AND    #$AA    
       STA    PF2     
       EOR    $9B,X   
       STA    PF1     
       LDA    ($C6),Y 
       STA    $CD     
       NOP            
       LDA    #$94    
       STA    COLUPF  
       LDA    $D3     
       STA    ENAM1   
       STA    HMOVE   
       ASL            
       ASL            
       STA    NUSIZ1  
       LDA    $CD     
       STA    GRP1    
       LDA    LFD0D,X 
       STA    PF1     
       LDA    LFD1A,X 
       STA    PF2     
       DEY            
       LDA    ($C4),Y 
       STA    GRP0    
       LDA    ($C6),Y 
       STA    $CD     
       LDA    ($C8),Y 
       STA    $D3     
       STA    HMM1    
       RTS            

LF2A3: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$00    
       STA    GRP0    
       LDX    #$D0    
       LDA    #$E0    
       STA    RESP0   
       STA    RESP1   
       STA    HMP1    
       STX    HMP0    
       LDA    #$FE    
       STA    $CB     
       STA    $D1     
       STA    $CD     
       STA    $D3     
       STA    $CF     
       STA    $D5     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    $8B     
       LDA    LF347,X 
       STA    COLUP0  
       STA    COLUP1  
       LDA    $8E     
       AND    #$02    
       BNE    LF2F4   
       LDA    #$CC    
       STA    COLUP0  
LF2F4: LDA    $AF     
       BNE    LF2FC   
       LDA    $88,X   
       BNE    LF309   
LF2FC: LDA    $AD     
       AND    #$08    
       BEQ    LF309   
       LDA    LF349,X 
       STA    COLUP0  
       STA    COLUP1  
LF309: LDY    #$06    
LF30B: STY    $D7     
       LDA    ($D4),Y 
       TAX            
       STA    WSYNC   
       LDA    ($CE),Y 
       STA    $D6     
       LDA    ($CA),Y 
       STA    GRP0    
       LDA    ($D0),Y 
       STA    GRP1    
       LDA    ($CC),Y 
       STA    GRP0    
       LDA    ($D2),Y 
       TAY            
       LDA    $D6     
       STY    GRP1    
       STA    GRP0    
       STX    GRP1    
       STA    GRP0    
       LDY    $D7     
       DEY            
       BPL    LF30B   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       RTS            

LF347: .byte $3C,$CC
LF349: .byte $08,$08
LF34B: LDY    $8A     
       BNE    LF353   

START:
       SEI            
       CLD            
       LDY    #$00    
LF353: LDA    #$00    
       TAX            
LF356: STA    VSYNC,X 
       DEX            
       BNE    LF356   
       STY    $8A     
       LDA    #$05    
       STA    $88     
       STA    $89     
       JMP    LF39B   
LF366: JSR    LF4EE   
       LDA    #$EE    
       STA    TIM64T  
       LDX    #$80    
       LDA    #$00    
LF372: DEX            
       STA    VSYNC,X 
       CPX    #$AB    
       BNE    LF372   
       LDX    $8B     
       LDA    $88,X   
       BEQ    LF385   
       LDA    $8E     
       AND    #$01    
       BEQ    LF38B   
LF385: LDA    $8A     
       EOR    $8B     
       STA    $8B     
LF38B: LDX    $8B     
       LDA    #$0A    
       LDY    $88,X   
       BNE    LF399   
       LDA    #$B4    
       STA    $AE     
       LDA    #$06    
LF399: STA    $8E     
LF39B: LDY    #$16    
LF39D: LDX    LF3E6,Y 
       LDA    LF3FC,Y 
       STA    $80,X   
       DEY            
       BNE    LF39D   
       LDA    $A8     
       ORA    #$40    
       STA    $A8     
       LDA    $8A     
       BNE    LF3B6   
       LDA    $8F     
       BNE    LF3CE   
LF3B6: LDX    #$0B    
LF3B8: LDA    LF3DB,X 
       STA    $8F,X   
       STA    $9B,X   
       DEX            
       BPL    LF3B8   
       LDA    #$04    
       STA    $9B     
       LDA    #$00    
       STA    $A9     
       LDA    #$68    
       STA    $8F     
LF3CE: LDX    #$FF    
       TXS            
       LDA    #$B4    
       LDX    #$02    
       JSR    LF894   
       JMP    LF413   
LF3DB: .byte $00,$7F,$61,$6B,$61,$7F,$61,$75,$61,$7F,$60
LF3E6: .byte $7F,$30,$31,$32,$33,$34,$35,$36,$37,$38,$39,$3A,$3B,$3C,$3D,$3E
       .byte $40,$41,$42,$43,$A5,$8A
LF3FC: .byte $2A,$4A,$08,$8C,$08,$8C,$C4,$10,$69,$10,$69,$62,$28,$28,$38,$38
       .byte $80,$40,$80,$40,$05,$01,$02
LF413: JSR    LF4EE   
       LDA    #$02    
       STA    VBLANK  
       LDA    #$19    
       STA    TIM64T  
       LDA    $AE     
       BEQ    LF425   
       DEC    $AE     
LF425: JSR    LF650   
       DEC    $AD     
       JSR    LFCF3   
       JSR    LF75F   
       JSR    LF5DE   
       JSR    LF998   
       JSR    LF571   
       JSR    LF4EE   
       LDA    #$2D    
       STA    TIM64T  
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    $8E     
       AND    #$02    
       BNE    LF475   
       LDY    #$80    
       LDA    SWCHB   
       ASL            
       BCC    LF45F   
       STY    $87     
LF45F: ASL            
       BCC    LF464   
       STY    $86     
LF464: LDA    REFP1   
       AND    PF0     
       BMI    LF4D4   
       LDA    #$0A    
       STA    $8E     
       LDA    #$1E    
       STA    $AE     
       JMP    LF4D4   
LF475: LDA    $8E     
       AND    #$04    
       BEQ    LF49E   
       LDA    $AE     
       BNE    LF4D4   
       LDA    $8A     
       ORA    $88     
       BEQ    LF4D4   
       LDA    $88     
       ORA    $89     
       BEQ    LF49B   
       LDA    $8E     
       AND    #$01    
       LDX    $8B     
       ORA    $88,X   
       BEQ    LF49B   
       LDA    REFP1   
       AND    PF0     
       BMI    LF4D4   
LF49B: JMP    LF366   
LF49E: LDA    $8E     
       AND    #$08    
       BEQ    LF4B9   
       LDA    #$58    
       STA    $BA     
       LDA    REFP1   
       AND    PF0     
       BPL    LF4D4   
       LDA    SWCHA   
       CMP    #$FF    
       BEQ    LF4D4   
       LDA    #$02    
       STA    $8E     
LF4B9: LDA    $AD     
       AND    #$01    
       BNE    LF4D1   
       JSR    LFCA8   
       JSR    LFC22   
       JSR    LF835   
       JSR    LF4FC   
       JSR    LF8AB   
       JMP    LF4D4   
LF4D1: JSR    LFAC5   
LF4D4: JSR    LF965   
       JSR    LF93D   
       JSR    LF4EE   
       LDA    #$00    
       STA    VBLANK  
       LDA    #$EE    
       STA    TIM64T  
       STA    WSYNC   
       JSR    LF0B7   
       JMP    LF413   
LF4EE: LDA    T1024T  
       BPL    LF4F4   
       NOP            
LF4F4: STA    WSYNC   
       LDA    T1024T  
       BPL    LF4F4   
       RTS            

LF4FC: LDA    $8E     
       AND    #$04    
       BNE    LF570   
       LDX    #$04    
LF504: LDA    $B0     
       CMP    $B0,X   
       BNE    LF514   
       LDA    $BA     
       SBC    $BA,X   
       ADC    #$04    
       CMP    #$0C    
       BCC    LF542   
LF514: LDA    $BA     
       CMP    $BA,X   
       BNE    LF524   
       LDA    $B0     
       SBC    $B0,X   
       ADC    #$05    
       CMP    #$0C    
       BCC    LF542   
LF524: DEX            
       BNE    LF504   
       LDA    $8F     
       BNE    LF570   
       LDA    $BA     
       CMP    #$5F    
       BEQ    LF538   
       LDA    $8E     
       ORA    #$40    
       STA    $8E     
       RTS            

LF538: LDA    #$08    
       JSR    LF5BC   
       LDA    #$06    
       JMP    LF550   
LF542: LDA    #$07    
       JSR    LF5BC   
       LDX    $8B     
       LDY    $88,X   
       DEY            
       STY    $88,X   
       LDA    #$07    
LF550: ORA    $8E     
       AND    #$BF    
       STA    $8E     
       LDA    #$1E    
       LDX    $8B     
       LDY    $88     
       BNE    LF560   
       LDA    #$B4    
LF560: STA    $AE     
       LDA    $8C,X   
       SEC            
       SBC    #$68    
       BCC    LF570   
       STA    $8C,X   
       LDY    $86,X   
       INY            
       STY    $86,X   
LF570: RTS            

LF571: LDA    SWCHB   
       LSR            
       BCS    LF57A   
       JMP    LF34B   
LF57A: LDA    $8E     
       AND    #$02    
       BNE    LF597   
       LDA    SWCHB   
       LSR            
       LSR            
       BCS    LF597   
       LDA    $AE     
       CMP    #$05    
       BCS    LF593   
       LDA    $8A     
       EOR    #$01    
       STA    $8A     
LF593: LDA    #$0A    
       STA    $AE     
LF597: RTS            

LF598: .byte $00,$05,$0F,$06,$00,$00,$0F,$0F,$06
LF5A1: .byte $00,$01,$02,$1F,$08,$08,$1F,$06,$1F
LF5AA: .byte $00,$01,$02,$0C,$0C,$0C,$04,$08,$04
LF5B3: .byte $00,$05,$03,$FF,$60,$6F,$6F,$38,$60
LF5BC: LDX    #$01    
LF5BE: CMP    $F5,X   
       BCC    LF5DA   
       TAY            
       STY    $F5,X   
       LDA    LF598,Y 
       STA    AUDV0,X 
       LDA    LF5A1,Y 
       STA    AUDF0,X 
       LDA    LF5AA,Y 
       STA    AUDC0,X 
       LDA    LF5B3,Y 
       STA    $F3,X   
       RTS            

LF5DA: DEX            
       BPL    LF5BE   
       RTS            

LF5DE: LDX    #$01    
LF5E0: LDY    $F3,X   
       BEQ    LF647   
       DEY            
       STY    $F3,X   
       TYA            
       LDY    $F5,X   
       CPY    #$02    
       BNE    LF5F2   
       ASL            
       ASL            
       STA    AUDV0,X 
LF5F2: CPY    #$04    
       BNE    LF5FA   
       AND    #$0F    
       STA    AUDV0,X 
LF5FA: CPY    #$05    
       BNE    LF603   
       ASL            
       AND    #$08    
       STA    AUDV0,X 
LF603: CPY    #$07    
       BNE    LF60B   
       LSR            
       LSR            
       STA    AUDV0,X 
LF60B: CPY    #$01    
       BNE    LF611   
       STA    AUDV0,X 
LF611: CPY    #$08    
       BNE    LF619   
       AND    #$1F    
       STA    AUDF0,X 
LF619: CPY    #$03    
       BNE    LF63A   
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    LF62A,Y 
       STA    AUDF0,X 
       JMP    LF643   
LF62A: .byte $08,$09,$0A,$0B,$0C,$0D,$0E,$0F,$10,$0F,$0E,$0D,$0C,$0B,$0A,$09
LF63A: CPY    #$06    
       BNE    LF643   
       LSR            
       AND    #$1F    
       STA    AUDF0,X 
LF643: DEX            
       BPL    LF5E0   
       RTS            

LF647: STY    AUDC0,X 
       STY    AUDV0,X 
       STY    $F5,X   
       JMP    LF643   
LF650: LDA    $8E     
       AND    #$08    
       BNE    LF6A8   
       LDA    $8E     
       AND    #$02    
       BEQ    LF6B3   
       LDX    $AF     
       BEQ    LF664   
       DEX            
       STX    $AF     
LF663: RTS            

LF664: LDX    $8B     
       LDA    $84,X   
       BEQ    LF687   
       AND    #$01    
       BNE    LF687   
       LDY    $AB     
       BEQ    LF68B   
       LDY    $88,X   
       INY            
       CPY    #$07    
       BCS    LF67B   
       STY    $88,X   
LF67B: LDA    #$00    
       STA    $AB     
       LDA    #$04    
       JSR    LF5BC   
       JMP    LF68B   
LF687: LDA    #$01    
       STA    $AB     
LF68B: LDX    $8B     
       LDY    #$04    
LF68F: LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $00D0,Y 
       LDA    $80,X   
       AND    #$F0    
       LSR            
       STA.wy $00CA,Y 
       INX            
       INX            
       DEY            
       DEY            
       BPL    LF68F   
       RTS            

LF6A8: LDX    $8B     
       LDY    $88,X   
       LDX    LF707,Y 
       LDY    #$0A    
       BNE    LF6F5   
LF6B3: LDY    $8A     
       LDX    LF70E,Y 
       LDY    #$0A    
       BNE    LF6F5   
LF6BC: SED            
       CLC            
       LDA    LF6E0,Y 
       LDX    $8B     
       ADC    $80,X   
       STA    $80,X   
       LDA    LF6E6,Y 
       ADC    $82,X   
       STA    $82,X   
       LDA    #$00    
       ADC    $84,X   
       STA    $84,X   
       CLD            
       BCC    LF663   
       LDA    #$99    
       STA    $80,X   
       STA    $82,X   
       STA    $84,X   
       RTS            

LF6E0: .byte $50,$00,$00,$00,$00,$20
LF6E6: .byte $02,$05,$10,$20,$40,$00
LF6EC: LDA    #$78    
       STA    $AF     
       LDX    LF701,Y 
       LDY    #$0A    
LF6F5: LDA    LF710,X 
       STA.wy $00CA,Y 
       DEX            
       DEY            
       DEY            
       BPL    LF6F5   
       RTS            

LF701: .byte $1D,$05,$0B,$11,$17,$1D
LF707: .byte $00,$23,$29,$2F,$35,$3B,$41
LF70E: .byte $47,$4D
LF710: .byte $50,$28,$00,$58,$00,$50,$58,$00,$00,$08,$00,$50,$58,$00,$00,$10
       .byte $00,$50,$58,$00,$00,$20,$00,$50,$50,$10,$00,$58,$28,$50,$50,$50
       .byte $50,$50,$50,$50,$50,$50,$60,$50,$50,$50,$50,$50,$60,$50,$60,$50
       .byte $50,$60,$60,$50,$60,$50,$50,$60,$60,$60,$60,$50,$50,$60,$60,$60
       .byte $60,$60,$50,$50,$50,$50,$50,$50,$50,$50,$60,$60,$50,$50
LF75E: RTS            

LF75F: LDA    $AF     
       BNE    LF75E   
       LDX    $8B     
       LDA    $86,X   
       AND    #$0F    
       CMP    #$04    
       BCC    LF76F   
       LDA    #$04    
LF76F: STA    $CF     
       LDX    #$01    
       LDA    $8E     
       AND    LF831,X 
       BNE    LF7DB   
       LDY    $9B     
       LDA    $8F     
       CMP    LF82A,Y 
       BCS    LF7D4   
       LDA    #$03    
       JSR    LF5BC   
       DEC    $9B     
       JMP    LF7B5   
LF78D: LDA    $8E     
       AND    LF831,X 
       BNE    LF7DB   
       LDA    $8E     
       BEQ    LF7D4   
       AND    #$0C    
       BNE    LF7D4   
       LDA    $BA     
       CMP    #$28    
       BEQ    LF7D7   
       LDA    $AD     
       AND    #$03    
       BNE    LF7D7   
       LDY    $A7,X   
       DEY            
       STY    $A7,X   
       BNE    LF7D7   
       LDA    $AA     
       BEQ    LF7D7   
       DEC    $AA     
LF7B5: LDA    $8E     
       ORA    LF831,X 
       STA    $8E     
       LDA    #$FF    
       STA    $A7,X   
       LDY    LF833,X 
       LDA.wy $008F,Y 
       ORA    #$80    
       STA.wy $008F,Y 
       LDA.wy $009B,Y 
       ORA    #$80    
       STA.wy $009B,Y 
       RTS            

LF7D4: JSR    LF816   
LF7D7: DEX            
       BPL    LF78D   
       RTS            

LF7DB: LDA    $BA     
       CMP    LF82F,X 
       BNE    LF804   
       LDA    $B0     
       CMP    #$4A    
       BNE    LF804   
       STX    $D3     
       LDY    $CF     
       TXA            
       BEQ    LF7F4   
       LDY    $A9     
       INY            
       STY    $A9     
LF7F4: JSR    LF6BC   
       JSR    LF6EC   
       LDA    #$06    
       JSR    LF5BC   
       LDX    $D3     
       JMP    LF80B   
LF804: LDY    $A7,X   
       DEY            
       STY    $A7,X   
       BNE    LF7D7   
LF80B: LDA    $8E     
       EOR    LF831,X 
       STA    $8E     
       LDA    #$FF    
       STA    $A7,X   
LF816: LDY    LF833,X 
       LDA.wy $008F,Y 
       AND    #$7F    
       STA.wy $008F,Y 
       LDA.wy $009B,Y 
       AND    #$7F    
       STA.wy $009B,Y 
       RTS            

LF82A: .byte $00,$05,$19,$37,$59
LF82F: .byte $28,$38
LF831: .byte $20,$10
LF833: .byte $05,$07
LF835: LDA    $BA     
       AND    #$07    
       BNE    LF883   
       LDA    $BA     
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    $B0     
       SEC            
       SBC    #$0C    
       BCC    LF883   
       CMP    #$79    
       BCS    LF883   
       CMP    #$3C    
       BCC    LF852   
       ADC    #$03    
LF852: LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF884,Y 
       CPY    #$08    
       BCS    LF868   
       AND    $8F,X   
       BEQ    LF883   
       EOR    $8F,X   
       STA    $8F,X   
       JMP    LF870   
LF868: AND    $9B,X   
       BEQ    LF883   
       EOR    $9B,X   
       STA    $9B,X   
LF870: LDA    #$01    
       JSR    LF5BC   
       LDY    #$05    
       JSR    LF6BC   
       DEC    $8F     
       LDX    $8B     
       LDY    $8C,X   
       INY            
       STY    $8C,X   
LF883: RTS            

LF884: .byte $40,$10,$04,$01,$02,$08,$20,$00,$00,$20,$08,$02,$01,$04,$10,$40
LF894: STA    WSYNC   
       STA    HMCLR   
       STA    HMP0,X  
       AND    #$0F    
       NOP            
       NOP            
       NOP            
       SEC            
LF8A0: SBC    #$01    
       BPL    LF8A0   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF8AB: LDA    $AF     
       BNE    LF91F   
       LDX    #$00    
       JSR    LFA6C   
       STA    $D3     
       LDA    $DB     
       BEQ    LF8C2   
       DEC    $DD     
       BNE    LF8C2   
       LDA    #$00    
       STA    $DB     
LF8C2: LDA    $DC     
       BEQ    LF8CE   
       DEC    $DE     
       BNE    LF8CE   
       LDA    #$00    
       STA    $DC     
LF8CE: LDA    REFP1   
       AND    PF0     
       BMI    LF910   
       LDA    $D3     
       CMP    $DF     
       BNE    LF8E5   
       LDA    $BA     
       CLC            
       ADC    #$04    
       AND    #$0F    
       CMP    #$08    
       BCC    LF910   
LF8E5: LDA    $DF     
       BEQ    LF910   
       CMP    $DB     
       BEQ    LF910   
       CMP    $DC     
       BEQ    LF910   
       LDX    $DB     
       BNE    LF8FD   
       STA    $DB     
       LDX    #$80    
       STX    $DD     
       BNE    LF907   
LF8FD: LDX    $DC     
       BNE    LF910   
       STA    $DC     
       LDX    #$80    
       STX    $DE     
LF907: LDA    #$00    
       STA    $DF     
       LDA    #$02    
       JSR    LF5BC   
LF910: LDA    $BA     
       AND    #$0F    
       BNE    LF91F   
       LDA    $D3     
       TAX            
       AND    #$F8    
       BEQ    LF91F   
       STX    $DF     
LF91F: RTS            

LF920: SEC            
       SBC    #$03    
       STA    $C5     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C6     
       LDA    $C5     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C6     
       CLC            
       ADC    $C5     
       AND    #$F0    
       ADC    $C6     
       EOR    #$70    
       RTS            

LF93D: LDX    #$0B    
       LDA    #$00    
LF941: STA    $E1,X   
       DEX            
       BPL    LF941   
       LDX    #$04    
LF948: LDY    $D5,X   
       LDA.wy $00BA,Y 
       CLC            
       ADC    #$07    
       LSR            
       LSR            
       LSR            
       AND    #$FE    
       TAY            
       TXA            
       AND    #$01    
       BEQ    LF95C   
       INY            
LF95C: LDA    $D5,X   
       STA.wy $00E1,Y 
       DEX            
       BNE    LF948   
       RTS            

LF965: JSR    LF969   
LF968: RTS            

LF969: LDX    #$01    
       STX    $D5     
       STX    $D6     
LF96F: INC    $D5     
       LDX    $D5     
       CPX    #$05    
       BEQ    LF968   
       LDA    $BA,X   
       LDX    #$01    
LF97B: LDY    $D5,X   
       CMP.wy $00BA,Y 
       BCC    LF987   
       INX            
       CPX    $D5     
       BNE    LF97B   
LF987: LDA    $D5     
       STA    $D5,X   
LF98B: CPX    $D5     
       BCS    LF96F   
       INX            
       LDA    $D5,X   
       STY    $D5,X   
       TAY            
       JMP    LF98B   
LF998: LDX    #$01    
       JSR    LF9A3   
       LDX    #$00    
       JSR    LF9A3   
       RTS            

LF9A3: LDA    $8E     
       AND    #$02    
       BEQ    LF9D4   
       LDA    $AD     
       LSR            
       LSR            
       LSR            
       AND    #$03    
       BEQ    LF9D4   
       CMP    #$01    
       BEQ    LF9C7   
       CMP    #$02    
       BEQ    LF9D4   
       LDA    #$A3    
       STA    $EE     
       LDA    #$E8    
       STA    $EF     
       LDA    #$AF    
       STA    $ED     
       RTS            

LF9C7: LDA    #$8C    
       STA    $EE     
       LDA    #$D1    
       STA    $EF     
       LDA    #$98    
       STA    $ED     
       RTS            

LF9D4: LDA    #$75    
       STA    $EE     
       LDA    #$BA    
       STA    $EF     
       LDA    #$81    
       STA    $ED     
       RTS            

LF9E1: CPX    #$00    
LF9E3: BNE    LF9FA   
       LDA    $8E     
       AND    #$40    
       BEQ    LF9FA   
       LDA    $B0     
       CMP    #$4A    
       BNE    LF9FA   
       LDA    $BA     
       CMP    #$58    
       BNE    LF9FA   
       LDA    #$D0    
       RTS            

LF9FA: JSR    LFA6C   
       TAY            
       LDA    #$F0    
       CPY    $DB     
       BEQ    LFA08   
       CPY    $DC     
       BNE    LFA14   
LFA08: LDA    $BA,X   
       AND    #$08    
       BEQ    LFA10   
       LDA    #$EF    
LFA10: BNE    LFA14   
       LDA    #$DF    
LFA14: STA    $CB     
       LDA    $BA,X   
       EOR    #$08    
       AND    #$0F    
       BNE    LFA2F   
       LDA    LFA34,Y 
       AND    $CB     
       DEY            
       CPY    $DB     
       BEQ    LFA2C   
       CPY    $DC     
LFA2A: BNE    LFA2E   
LFA2C: AND    #$DF    
LFA2E: RTS            

LFA2F: LDA    $CB     
LFA31: AND    #$30    
       RTS            

LFA34: .byte $C0,$C0,$C0,$C0
LFA38: CPY    #$C0    
       CPY    #$C0    
       CPY    #$90    
       BMI    LFA30   
LFA40: BEQ    LF9F2   
LFA42: LDY    #$00    
       CPY    #$D0    
       BCS    LFA38   
LFA48: BVS    LFA2A   
LFA4A: CPY    #$00    
       CPY    #$D0    
       BVS    LFA40   
LFA50: BCS    LFA42   
       CPX    #$00    
       CPY    #$D0    
       BCS    LFA48   
LFA58: BVS    LFA4A   
       CPX    #$00    
       CPY    #$D0    
       BVS    LFA50   
       BCS    LFA42   
       CPY    #$00    
       CPY    #$50    
       BMI    LFA58   
       BEQ    LFADA   
       RTS            

LFA6B: .byte $00
LFA6C: LDA    $B0,X   
       LSR            
LFA6F: BCS    LFA89   
       LSR            
       BCS    LFA89   
       CMP    #$14    
       ADC    #$00    
       LSR            
       BCS    LFA89   
       TAY            
LFA7C: LDA    $BA,X   
       CLC            
       ADC    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    LFA8D,Y 
       RTS            

LFA89: LDY    #$00    
       BEQ    LFA7C   
LFA8D: BRK            
       BRK            
       PHP            
       BRK            
       BRK            
       BPL    LFA94   
LFA94: BRK            
       CLC            
       BRK            
       BRK            
       JSR.w  $0000   
LFA9B: PLP            
       BRK            
       BRK            
       BMI    LFAA0   
LFAA0: BRK            
LFAA1: BCC    LFA73   
       BNE    LFA75   
       BNE    LFAF7   
       BMI    LFA59   
       BVS    LFA5B   
       BVS    LFADD   
LFAAD: BCS    LFA9F   
       BEQ    LFAA1   
       BEQ    LFB23   
       BCS    LFB25   
       BCS    LFB27   
       BCS    LFB29   
       BCS    LFA9B   
       BEQ    LFAAD   
       CPX    #$70    
       LDY    #$C0    
       CPX    #$E0    
       CPY    #$60    
LFAC5: LDX    #$05    
       LDA    $AC     
       BEQ    LFACC   
       RTS            

LFACC: STA    $D5,X   
       DEX            
       BPL    LFACC   
       STA    $D1     
       LDX    $8B     
       LDA    $86,X   
       STA    $CF     
       LDX    #$04    
LFADB: LDA    #$F0    
LFADD: LDY    $BF,X   
       BEQ    LFAE9   
       LDA    #$30    
       CPY    #$40    
       BCS    LFAE9   
       LDA    #$C0    
LFAE9: EOR    $BF,X   
       STA    $BF,X   
       JSR    LF9E1   
       LDY    $86     
       CPY    #$02    
       BCS    LFB04   
       LDY    $B0,X   
       CPY    #$10    
       BNE    LFAFE   
       AND    #$BF    
LFAFE: CPY    #$84    
       BNE    LFB04   
       AND    #$7F    
LFB04: TAY            
       AND    $BF,X   
       STA    $C4,X   
       LDA    #$00    
       STA    $BF,X   
       TYA            
       BNE    LFB12   
       INC    $D1     
LFB12: LDA    $BA,X   
       SEC            
       SBC    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA.wy $00D5,Y 
       CLC            
       ADC    #$01    
       STA.wy $00D5,Y 
LFB25: LDA    $BA,X   
LFB27: EOR    #$08    
LFB29: AND    #$0F    
       BEQ    LFB36   
       INY            
       LDA.wy $00D5,Y 
       ADC    #$01    
       STA.wy $00D5,Y 
LFB36: DEX            
       BNE    LFADB   
       LDY    $D1     
       BEQ    LFB56   
       LDA    $8E     
       AND    #$80    
       BNE    LFB56   
       LDY    #$03    
       JSR    LF6BC   
       JSR    LF6EC   
       LDA    #$05    
       JSR    LF5BC   
       LDA    $8E     
       ORA    #$80    
       STA    $8E     
LFB56: LDX    #$04    
LFB58: LDA    $B0,X   
       SEC            
       SBC    $B0     
       ADC    #$0E    
       CMP    #$1C    
       BCS    LFB7C   
       JSR    LFBEE   
       LDA    $BA,X   
       CMP    $BA     
       BEQ    LFB7C   
       LDA    #$20    
       BCS    LFB72   
       LDA    #$10    
LFB72: AND    $C4,X   
       BEQ    LFB98   
       JSR    LFBC6   
       JMP    LFB98   
LFB7C: LDA    $BA,X   
       SEC            
       SBC    $BA     
       ADC    #$0E    
       CMP    #$1C    
       BCS    LFB98   
       LDA    $B0,X   
       CMP    $B0     
       LDA    #$80    
       BCC    LFB91   
       LDA    #$40    
LFB91: AND    $C4,X   
       BEQ    LFB98   
       JSR    LFBC6   
LFB98: DEX            
       BNE    LFB58   
       LDX    #$04    
LFB9D: LDA    $BF,X   
       BNE    LFBBE   
       JSR    LFBEE   
       LDA    $C4,X   
       BEQ    LFBBE   
       STA    $CD     
       TXA            
       EOR    $F7     
       AND    #$03    
       TAY            
       LDA    LFBC2,Y 
       CLC            
LFBB4: ROR            
       BIT    $CD     
       BEQ    LFBB4   
       AND    $CD     
       JSR    LFBC6   
LFBBE: DEX            
       BNE    LFB9D   
       RTS            

LFBC2: .byte $88,$44,$22,$11
LFBC6: STA    $BF,X   
       AND    #$30    
       BEQ    LFBED   
       LDA    $BA,X   
       EOR    #$08    
       AND    #$0F    
       BNE    LFBED   
       LDA    $BA,X   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       DEY            
       LDA    $BF,X   
       CMP    #$10    
       BNE    LFBE4   
       INY            
       INY            
LFBE4: LDA.wy $00D5,Y 
       CLC            
       ADC    #$01    
       STA.wy $00D5,Y 
LFBED: RTS            

LFBEE: LDA    $BA,X   
       EOR    #$08    
       AND    #$0F    
       BNE    LFBED   
       LDA    $BA,X   
       SEC            
       SBC    #$08    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       DEY            
       LDA.wy $00D5,Y 
       CMP    #$02    
       BNE    LFC0E   
       LDA    $C4,X   
       AND    #$DF    
       STA    $C4,X   
LFC0E: INY            
       INY            
       LDA.wy $00D5,Y 
       CMP    #$02    
       BNE    LFC1D   
       LDA    $C4,X   
       AND    #$EF    
       STA    $C4,X   
LFC1D: RTS            

LFC1E: .byte $02,$04,$06,$0C
LFC22: LDX    $8B     
       LDY    $86,X   
       LDA    #$00    
       STA    $AC     
       LDX    #$04    
       LDA    $AF     
       BEQ    LFC36   
       LDX    #$00    
       AND    #$E0    
       BNE    LFCA3   
LFC36: CPY    #$04    
       BCS    LFC47   
       DEC    $E0     
       BPL    LFC47   
       LDA    LFC1E,Y 
       STA    $E0     
       STA    $AC     
       LDX    #$00    
LFC47: LDA    $BF,X   
       BIT    LFCA4   
       BNE    LFC84   
       BIT    LFCA5   
       BNE    LFC90   
       BIT    LFCA6   
       BNE    LFC72   
       BIT    LFCA7   
       BNE    LFC60   
       JMP    LFC99   
LFC60: LDA    $B0,X   
       CLC            
       ADC    #$01    
       CMP    #$90    
       BNE    LFC6B   
       LDA    #$05    
LFC6B: STA    $B0,X   
       LDA    #$03    
       JMP    LFC99   
LFC72: LDA    $B0,X   
       SEC            
       SBC    #$01    
       CMP    #$04    
       BNE    LFC7D   
       LDA    #$8F    
LFC7D: STA    $B0,X   
       LDA    #$02    
       JMP    LFC99   
LFC84: LDA    $BA,X   
       CLC            
       ADC    #$01    
       STA    $BA,X   
       LDA    #$00    
       JMP    LFC99   
LFC90: LDA    $BA,X   
       SEC            
       SBC    #$01    
       STA    $BA,X   
       LDA    #$01    
LFC99: LDA    $B0,X   
       JSR    LF920   
       STA    $B5,X   
       DEX            
       BPL    LFC47   
LFCA3: RTS            

LFCA4: .byte $10
LFCA5: .byte $20
LFCA6: .byte $40
LFCA7: .byte $80
LFCA8: LDX    #$00    
       JSR    LF9E1   
       STA    $C6     
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       AND    SWCHA   
       EOR    #$F0    
       STA    $C5     
       BIT    $BF     
       BEQ    LFCC7   
       LDY    $BF     
       CMP    $F2     
       BEQ    LFCE6   
LFCC7: CPY    #$40    
       AND    $C6     
       BCC    LFCCF   
       AND    #$30    
LFCCF: BCS    LFCD3   
       AND    #$C0    
LFCD3: BNE    LFCD7   
       LDA    $C5     
LFCD7: AND    $C6     
       BEQ    LFCE6   
       BIT    $BF     
       BNE    LFCE6   
       STA    $BF     
       LDA    $C5     
       STA    $F2     
       RTS            

LFCE6: LDA    $BF     
       AND    $C6     
       STA    $BF     
       LDA    $C5     
       AND    $F2     
       STA    $F2     
       RTS            

LFCF3: LDA    $F7     
       ASL            
       BCS    LFCFA   
       EOR    #$91    
LFCFA: STA    $F7     
       RTS            

LFCFD: .byte $FF,$FF,$FF
LFD00: .byte $C0,$C0,$C0,$C0,$C0,$00,$C0,$00,$C0,$C0,$C0,$C0,$C0
LFD0D: .byte $FF,$00,$1C,$1C,$1C,$00,$1C,$00,$1C,$00,$1F,$00,$FF
LFD1A: .byte $FF,$00,$8E,$80,$8E,$00,$8E,$0E,$8E,$00,$8F,$00,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$3C,$FF,$FF,$00
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$30,$3C,$3C,$FF,$FF,$00,$3C,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0C,$3C,$3C,$FF,$FF,$00,$3C,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0A
       .byte $0A,$EA,$0E,$0E,$20,$DA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$06,$0A,$EA,$0E,$0E,$20,$DA,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E6,$0A,$EA
       .byte $0E,$0E,$20,$DA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$FF,$FF,$FE,$C6,$D6,$D6,$C6,$FE,$00,$00,$7E,$18
       .byte $18,$18,$18,$38,$00,$00,$7E,$60,$7E,$06,$66,$7E,$00,$00,$7E,$06
       .byte $06,$3C,$06,$7E,$00,$00,$06,$06,$7E,$66,$66,$66,$00,$00,$7E,$66
       .byte $06,$7E,$60,$7E,$00,$00,$7E,$66,$66,$7E,$60,$7E,$00,$00,$30,$30
       .byte $18,$0C,$06,$7E,$00,$00,$7E,$66,$66,$3C,$66,$7E,$00,$00,$7E,$06
       .byte $7E,$66,$66,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$08
       .byte $3E,$08,$08,$00,$00,$00,$66,$24,$7E,$3C,$3C,$3C,$00,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$66,$24,$FF,$3C,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$06,$64,$FF
       .byte $3C,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$60,$26,$FF,$3C,$3C,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $4F,$F3,$4F,$F3,$4F,$F3
