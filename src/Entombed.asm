; Disassembly of roms/Entombed.bin
; Disassembled Tue Oct  6 15:21:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Entombed.bin
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
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
T1024T  =  $0297

       ORG $B000

START:
       JMP    LB085   
LB003: .byte $00,$38,$44,$44,$44,$44,$44,$38,$00,$38,$10,$10,$10,$10,$30,$10
       .byte $00,$7C,$40,$40,$38,$04,$44,$38,$00,$38,$44,$04,$18,$04,$44,$38
       .byte $00,$08,$08,$7C,$48,$28,$18,$08,$00,$38,$44,$04,$04,$78,$40,$7C
       .byte $00,$38,$44,$44,$78,$40,$20,$1C,$00,$20,$20,$20,$10,$08,$04,$7C
       .byte $00,$38,$44,$44,$38,$44,$44,$38,$00,$70,$08,$04,$3C,$44,$44,$38
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$3C,$42,$99,$91,$99,$42,$3C,$00
LB063: .byte $40,$40,$11,$87,$40,$80,$0F,$04,$04,$01,$00,$03,$B0,$03,$B0,$03
       .byte $B0,$03,$B0,$04,$18,$13,$BE,$33,$01,$0C,$09,$62,$BF,$6D,$BF,$78
       .byte $BF,$8A
LB085: SEI            
       CLD            
       LDA    #$01    
       STA    $F4     
LB08B: LDX    #$FF    
       TXS            
       JSR    LBB94   
       LDX    #$00    
       STX    $F5     
       LDA    SWCHB   
       BMI    LB09B   
       INX            
LB09B: STX    $F2     
       STY    $DD     
       STY    $DE     
       LDA    #$25    
       STA    CTRLPF  
       LDX    #$21    
LB0A7: LDY    LB063,X 
       STY    $B0,X   
       DEX            
       BPL    LB0A7   
       LDA    #$BD    
       STA    $D9     
       JSR    LB9A4   
       LDA    $F4     
       BNE    LB0BD   
       JSR    LB9C1   
LB0BD: LDA    #$18    
       STA    COLUPF  
       LDA    #$FF    
       STA    $D5     
       STA    $F6     
LB0C7: JSR    LBF16   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LB08B   
       BIT    CXPPMM  
       BPL    LB0D8   
       JSR    LBA18   
LB0D8: LDA    $F0     
       BEQ    LB0FA   
       DEC    $DD     
       BNE    LB0EA   
       INC    $C4     
       LDA    $C4     
       STA    COLUPF  
       ADC    #$80    
       STA    COLUBK  
LB0EA: LDA    #$BE    
       STA    $D9     
       STA    $D5     
       LDA    #$0A    
       STA    $D8     
       JSR    LBF24   
       JMP    LB1A6   
LB0FA: LDA    $F3     
       BEQ    LB10E   
       INC    $F3     
       BPL    LB0EA   
       LDA    #$00    
       STA    $F3     
       STA    $ED     
       STA    $EC     
       LDA    #$BD    
       STA    $D9     
LB10E: JSR    LB55D   
       LDA    $E1     
       CMP    $C3     
       BNE    LB11B   
       LDA    #$00    
       STA    $E1     
LB11B: CMP    #$00    
       BEQ    LB125   
       JSR    LBF24   
       JMP    LB154   
LB125: BIT    CXBLPF  
       BPL    LB12F   
       LDA    $E9     
       EOR    #$FF    
       STA    $E9     
LB12F: LDA    $E9     
       BEQ    LB137   
       DEC    $D2     
       BNE    LB139   
LB137: INC    $D2     
LB139: LDA    $DD     
       LSR            
       LDA    #$0B    
       PHA            
       LDA    #$02    
       LDY    #$07    
       STA    $80     
       STY    $89     
       LDA    #$00    
       ROL    $8A     
       PLA            
       STA    $88     
       JSR    LBF24   
       JSR    LB3F9   
LB154: JSR    LB58F   
       JSR    LB631   
       INC    $E1     
       LDA    $ED     
       CMP    #$00    
       BNE    LB17F   
       LDX    #$00    
       LDA    #$1D    
       STA    $BA     
       LDA    SWCHA   
       JSR    LB69D   
       LDA    INPT4,X 
       BPL    LB176   
       LDA    #$00    
       STA    $B7,X   
LB176: JSR    LB857   
       JSR    LB3D4   
       JMP    LB1A6   
LB17F: LDA    #$6D    
       STA    $BA     
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       LDX    #$01    
       JSR    LB69D   
       LDA    INPT4,X 
       BPL    LB197   
       LDA    #$00    
       STA    $B7,X   
LB197: JSR    LB857   
       LDA    $B2     
       JSR    LB75C   
       LDX    #$01    
       JSR    LB627   
       BNE    LB1B0   
LB1A6: LDA    $B3     
       JSR    LB75C   
       LDX    #$01    
       JSR    LB627   
LB1B0: JSR    LB4F7   
       LDA    #$13    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$6D    
       STA    COLUP0  
       LDA    #$1D    
       STA    COLUP1  
       LDA    #$23    
       LDX    #$02    
       JSR    LB75C   
       JSR    LB627   
       LDA    #$63    
       LDX    #$03    
       JSR    LB75C   
       JSR    LB627   
       LDX    #$00    
       LDA    $C7     
LB1D9: LDY    #$02    
       STY    $81,X   
       AND    #$03    
       CMP    #$03    
       BNE    LB1E5   
       BEQ    LB1FB   
LB1E5: CMP    #$02    
       BNE    LB1EF   
       LDY    #$11    
       STY    NUSIZ0,X
       BNE    LB1FB   
LB1EF: CMP    #$01    
       BNE    LB1F9   
       LDY    #$10    
       STY    NUSIZ0,X
       BNE    LB1FB   
LB1F9: STA    $81,X   
LB1FB: INX            
       CPX    #$02    
       BEQ    LB209   
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       LSR            
       JMP    LB1D9   
LB209: LDY    #$04    
       LDA    $F4     
       BEQ    LB213   
       LDA    #$00    
       STA    $82     
LB213: JSR    LBF33   
       STA    WSYNC   
       STA    HMOVE   
LB21A: STA    WSYNC   
       LDA    $81     
       STA    ENAM0   
       LDA    $82     
       STA    ENAM1   
       DEY            
       BNE    LB21A   
       LDA    #$00    
       STA    VDELP1  
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$00    
       STA    WSYNC   
       STA    CXCLR   
       STA    PF1     
       STA    PF2     
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $BA     
       STA    COLUP1  
       LDA    $D1     
       STA    COLUP0  
       LDA    #$FF    
       STA    PF0     
       LDA    #$01    
       STA    VDELP0  
       LDA    $D5     
       STA    $D3     
       LDA    #$00    
       LDX    #$0B    
       LDY    $B6     
       BNE    LB261   
       DEC    $D3     
       DEC    $D4     
       STA    WSYNC   
LB25F: LDY    #$0F    
LB261: STA    GRP0    
LB263: STA    WSYNC   
       STY    $DC     
       LDY    $D4     
       LDA    ($D8),Y 
       STA    GRP1    
       DEC    $D4     
       LDA    $91,X   
       STA    PF1     
       LDA    $A1,X   
       STA    PF2     
       DEC    $D3     
       LDY    $D3     
       LDA    ($C5),Y 
       CPX    $E8     
       BNE    LB285   
       LDY    $EA     
       STY    ENABL   
LB285: NOP            
       NOP            
       LDY    $DC     
       DEY            
       BNE    LB261   
       STA    GRP0    
       STA    WSYNC   
       DEX            
       BMI    LB2BA   
       LDY    $D4     
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    #$00    
       STA    ENABL   
       INC    $81     
       INC    $81     
       INC    $81     
       INC    $81     
       LDY    $D3     
       LDA    ($C5),Y 
       CPX    #$00    
       BNE    LB25F   
       STA    GRP0    
       LDA    $B6     
       BEQ    LB2BA   
       EOR    #$0F    
       TAY            
       BNE    LB263   
       STA    WSYNC   
LB2BA: STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENABL   
       STA    REFP0   
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       LDA    #$06    
       STA    NUSIZ0  
       LDA    #$01    
       STA    VDELP1  
       LDA    #$06    
       STA    NUSIZ1  
       LDY    #$06    
       STA    WSYNC   
       STA    HMOVE   
LB2E2: DEY            
       BNE    LB2E2   
       STA    RESP0   
       STA    RESP1   
       LDY    #$07    
       STA    HMOVE   
       LDA    $F0     
       BEQ    LB2F5   
       LDA    $C4     
       STA    $F6     
LB2F5: LDA    ($C1),Y 
       TAX            
       STA    WSYNC   
       LDA    $F6     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($BD),Y 
       STA    GRP1    
       LDA    ($BB),Y 
       STA    GRP0    
       LDA    #$00    
       STA    GRP1    
       LDA    #$FF    
       STA    $81     
       STA    $81     
       LDA    #$00    
       STA    GRP0    
       NOP            
       STX    GRP1    
       LDA    ($BF),Y 
       STA    GRP0    
       DEY            
       BPL    LB2F5   
       LDA    #$00    
       STA    VDELP1  
       LDA    $B6     
       CMP    #$00    
       BNE    LB37C   
       LDA    $E1     
       CMP    #$01    
       BNE    LB37C   
       LDA    $E8     
       CMP    #$0C    
       BNE    LB361   
       LDA    #$00    
       STA    $E8     
       JSR    LB77B   
       LDA    LB7C1,X 
       STA    $D2     
       LDA    #$02    
       STA    $EA     
       LDA    $EF     
       INC    $EF     
       LDA    $EF     
       CMP    #$05    
       BNE    LB363   
       DEC    $C3     
       BNE    LB358   
       LDA    #$01    
       STA    $C3     
LB358: JSR    LB5B9   
       LDA    #$FF    
       STA    $D5     
       BNE    LB37C   
LB361: CMP    #$07    
LB363: BNE    LB37C   
       LDA    #$A7    
       STA    $D5     
       JSR    LB77B   
       LDA    LB7C1,X 
       SEC            
       SBC    #$03    
       STA    $D6     
       LDA    #$BE    
       STA    $C6     
       LDA    #$14    
       STA    $C5     
LB37C: LDA    #$BF    
       STA    $CE     
       LDA    $F0     
       BEQ    LB398   
       LDA    #$0C    
       STA    $C9     
       LDA    #$C5    
       STA    $CB     
       STA    $EC     
       LDA    #$D0    
       STA    $CD     
       LDA    #$DB    
       STA    $CF     
       BNE    LB3AE   
LB398: LDA    $F3     
       BEQ    LB3AE   
       LDA    #$04    
       STA    $C9     
       STA    $EC     
       LDA    #$A4    
       STA    $CB     
       LDA    #$AF    
       STA    $CD     
       LDA    #$BA    
       STA    $CF     
LB3AE: JSR    LB674   
       LDA    $F4     
       BEQ    LB3C1   
       LDA    $ED     
       BEQ    LB3C1   
       LDA    $B9     
       STA    $D9     
       LDA    #$00    
       STA    $D8     
LB3C1: LDA    $ED     
       BNE    LB3CB   
       JSR    LBA7E   
       JMP    LB3CE   
LB3CB: JSR    LBB30   
LB3CE: JSR    LBF44   
       JMP    LB0C7   
LB3D4: LDA    $D5     
       BPL    LB3DC   
       CMP    #$A7    
       BCS    LB3F8   
LB3DC: LDA    $EC     
       BNE    LB3F8   
       LDA    #$01    
       STA    $C8     
       LDA    #$03    
       STA    $C9     
       LDA    #$E6    
       STA    $CB     
       LDA    #$DA    
       STA    $CD     
       LDA    #$BC    
       STA    $CE     
       LDA    #$78    
       STA    $CF     
LB3F8: RTS            

LB3F9: LDA    $B6     
       CMP    #$08    
       BEQ    LB409   
       LDA    $B6     
       CMP    #$0F    
       BNE    LB416   
       INC    $D9     
       BNE    LB416   
LB409: DEC    $D9     
       LDA    $E8     
       BNE    LB416   
       LDA    $F4     
       BEQ    LB416   
       JSR    LB9C1   
LB416: DEC    $B6     
       LDA    $B6     
       AND    #$0F    
       STA    $B6     
       BEQ    LB427   
       DEC    $B0     
       DEC    $B1     
       DEC    $D5     
       RTS            

LB427: INC    $E8     
       LDA    $91     
       LDX    #$04    
LB42D: ASL            
       ASL            
       ROL    $86     
       DEX            
       BNE    LB42D   
       LDA    $A1     
       LDX    #$04    
LB438: LSR            
       LSR            
       ROL    $86     
       DEX            
       BNE    LB438   
       LDA    #$20    
       STA    $83     
       JSR    LBCA5   
       ASL            
       STA    $85     
       LDA    $86     
       ROL    $80     
       ASL            
       ROL    $80     
       ASL            
       JSR    LB4D4   
LB454: LDA    $86     
       AND    $83     
       JSR    LB4D0   
       LSR    $83     
       BNE    LB454   
       LSR    $8A     
       JSR    LB4D4   
       LDA    $87     
       STA    $82     
       STA    $84     
       LDX    #$04    
LB46C: LSR            
       ROL    $A0     
       LSR    $82     
       ROL    $A0     
       ASL    $84     
       ROL    $90     
       ASL    $87     
       ROL    $90     
       DEX            
       BNE    LB46C   
       LDX    #$1F    
LB480: LDA    $8F,X   
       STA    $90,X   
       DEX            
       BNE    LB480   
       LDX    $88     
LB489: LDA    $90,X   
       BEQ    LB498   
       AND    #$80    
       BNE    LB498   
       DEX            
       BNE    LB489   
       STX    $91     
       STX    $A1     
LB498: LDA    $A9     
       AND    #$80    
       STA    $81     
       LDX    $89     
LB4A0: LDA    $A0,X   
       BEQ    LB4AF   
       AND    #$80    
       CMP    $81     
       BNE    LB4AF   
       DEX            
       BNE    LB4A0   
       STX    $A1     
LB4AF: RTS            

LB4B0: .byte $09,$09,$09,$82,$00,$00,$82,$82,$09,$09,$09,$09,$82,$00,$00,$00
       .byte $09,$09,$09,$82,$00,$00,$00,$00,$82,$00,$09,$82,$82,$00,$00,$00
LB4D0: CLC            
       BEQ    LB4D4   
       SEC            
LB4D4: ROL    $80     
       LDA    $80     
       AND    #$1F    
       TAX            
       AND    #$FB    
       STA    $81     
       LDA    LB4B0,X 
       BMI    LB4EB   
       LSR            
       BCS    LB4F0   
LB4E7: LDA    $81     
       BPL    LB4F2   
LB4EB: ASL            
       ROL    $85     
       BCC    LB4E7   
LB4F0: ORA    $81     
LB4F2: STA    $80     
       ROL    $87     
       RTS            

LB4F7: LDA    $D6     
       JSR    LB75C   
       LDX    #$00    
       JSR    LB627   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $D2     
       JSR    LB75C   
       LDX    #$04    
       JSR    LB627   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $F4     
       BEQ    LB52F   
       LDA    $ED     
       BNE    LB52F   
       LDA    $D9     
       STA    $B9     
       LDA    #$BE    
       STA    $D9     
       LDA    #$0A    
       STA    $D8     
       STA    $B1     
LB52F: LDA    $ED     
       CMP    #$00    
       BEQ    LB542   
       LDA    #$00    
       STA    $ED     
       LDA    $B0     
       CLC            
       ADC    #$09    
       STA    $D4     
       BNE    LB54D   
LB542: LDA    $B1     
       CLC            
       ADC    #$09    
       STA    $D4     
       LDA    #$01    
       STA    $ED     
LB54D: LDA    $F1     
       CMP    #$02    
       BNE    LB558   
       LDA    #$08    
       STA    REFP0   
       RTS            

LB558: LDA    #$00    
       STA    REFP0   
       RTS            

LB55D: LDA    $F4     
       BEQ    LB569   
       LDA    #$80    
       ORA    $C7     
       STA    $C7     
       BNE    LB570   
LB569: LDA    $C7     
       AND    #$88    
       BNE    LB575   
       RTS            

LB570: AND    #$08    
       BNE    LB575   
       RTS            

LB575: LDA    #$01    
       STA    $B6     
       LDA    #$0B    
       STA    $E8     
       INC    $C3     
       LDA    $C4     
       SEC            
       SBC    #$20    
       STA    $C4     
       LDA    $C3     
       STA    $E1     
       LDA    #$04    
       STA    $EF     
       RTS            

LB58F: LDA    $ED     
       CMP    #$00    
       BNE    LB5A7   
       BIT    HMM1    
       BPL    LB5A0   
       LDA    #$01    
       ORA    $EE     
       STA    $EE     
       RTS            

LB5A0: LDA    #$FE    
       AND    $EE     
       STA    $EE     
       RTS            

LB5A7: BIT    HMM1    
       BPL    LB5B2   
       LDA    #$02    
       ORA    $EE     
       STA    $EE     
       RTS            

LB5B2: LDA    #$FD    
       AND    $EE     
       STA    $EE     
       RTS            

LB5B9: LDA    #$00    
       STA    $EF     
       LDA    $C4     
       CLC            
       ADC    #$20    
       STA    $C4     
       STA    COLUPF  
       LDA    #$00    
       STA    $B6     
       STA    $E8     
       STA    $EA     
       LDY    #$1F    
LB5D0: STA.wy $0090,Y 
       DEY            
       BNE    LB5D0   
       LDA    $C7     
       LDY    $F4     
       BNE    LB5E2   
       AND    #$88    
       BEQ    LB5E6   
       BNE    LB5FC   
LB5E2: AND    #$80    
       BNE    LB5FC   
LB5E6: LDA    #$01    
       STA    $C8     
       LDA    #$0A    
       STA    $C9     
       LDA    #$E6    
       STA    $CB     
       LDA    #$8F    
       STA    $CD     
       LDA    #$78    
       STA    $CF     
       BNE    LB5FC   
LB5FC: LDA    #$40    
       STA    $B0     
       STA    $B1     
       LDA    #$11    
       STA    $B2     
       LDA    #$87    
       STA    $B3     
       LDA    #$BD    
       STA    $D9     
       LDA    #$00    
       STA    $D8     
       LDA    $C7     
       AND    #$77    
       STA    $C7     
       LDA    #$0A    
       STA    $C5     
       LDA    $F4     
       BEQ    LB626   
       LDA    $C7     
       ORA    #$80    
       STA    $C7     
LB626: RTS            

LB627: STA    WSYNC   
LB629: DEY            
       BPL    LB629   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LB631: LDA    $ED     
       BEQ    LB648   
       BIT    CXP1FB  
       BVC    LB673   
       JSR    LB9C1   
       JSR    LB9C1   
       LDA    $F2     
       BEQ    LB659   
       JSR    LB9C1   
       BNE    LB659   
LB648: BIT    HMM1    
       BVC    LB673   
       JSR    LB9A4   
       JSR    LB9A4   
       LDA    $F2     
       BEQ    LB659   
       JSR    LB9A4   
LB659: LDA    #$00    
       STA    $EA     
       LDA    #$01    
       STA    $C8     
       STA    $EC     
       LDA    #$83    
       STA    $CB     
       LDA    #$8F    
       STA    $CD     
       LDA    #$99    
       STA    $CF     
       LDA    #$02    
       STA    $C9     
LB673: RTS            

LB674: LDA    $C8     
       BEQ    LB69C   
       DEC    $EB     
       BPL    LB69C   
       LDY    $CA     
       LDA    $C9     
       STA    $EB     
       LDA    ($CD),Y 
       STA    AUDV0   
       LDA    ($CB),Y 
       STA    AUDF0   
       LDA    ($CF),Y 
       STA    AUDC0   
       DEC    $CA     
       BPL    LB69C   
       LDY    #$09    
       STY    $CA     
       LDA    #$00    
       STA    $EC     
       STA    $C8     
LB69C: RTS            

LB69D: ASL            
       BCC    LB6E5   
       ASL            
       BCC    LB6B6   
       ASL            
       BCS    LB6A9   
       JMP    LB71C   
LB6A9: ASL            
       BCS    LB6AF   
       JMP    LB714   
LB6AF: LDY    #$F0    
       LDA    $B0,X   
       JMP    LB736   
LB6B6: ROL            
       BCC    LB6BF   
       ROL            
       BCC    LB6CE   
       JMP    LB6DC   
LB6BF: LDA    $B4,X   
       AND    #$08    
       BNE    LB6DC   
       LDA    $B4,X   
       AND    #$01    
       BEQ    LB6AF   
       JMP    LB71C   
LB6CE: LDA    $B4,X   
       AND    #$08    
       BNE    LB6DC   
       LDA    $B4,X   
       AND    #$02    
       BNE    LB714   
       BEQ    LB6AF   
LB6DC: DEC    $B2,X   
       DEC    $B2,X   
       LDY    #$88    
       JMP    LB736   
LB6E5: ROL            
       ROL            
       BCC    LB6EE   
       ROL            
       BCC    LB6FD   
       BCS    LB70C   
LB6EE: LDA    $B4,X   
       AND    #$04    
       BNE    LB70C   
       LDA    $B4,X   
       AND    #$01    
       BNE    LB71C   
       JMP    LB6AF   
LB6FD: LDA    $B4,X   
       AND    #$04    
       BNE    LB70C   
       LDA    $B4,X   
       AND    #$02    
       BNE    LB714   
       JMP    LB6AF   
LB70C: INC    $B2,X   
       INC    $B2,X   
       LDY    #$44    
       BNE    LB736   
LB714: DEC    $B0,X   
       DEC    $B0,X   
       LDY    #$22    
       BNE    LB736   
LB71C: INC    $B0,X   
       INC    $B0,X   
       LDA    $C3     
       CMP    #$01    
       BNE    LB728   
       INC    $B0,X   
LB728: LDY    #$11    
       LDA    $B0,X   
       BPL    LB736   
       CMP    #$9D    
       BCC    LB736   
       DEC    $B0,X   
       DEC    $B0,X   
LB736: JSR    LB7D1   
       LDA    $B0,X   
       BMI    LB747   
       CMP    #$02    
       BCS    LB74B   
LB741: JSR    LBA18   
       JMP    LB74B   
LB747: CMP    #$F0    
       BCS    LB741   
LB74B: CPY    #$F0    
       BEQ    LB756   
       TYA            
       CMP    $B4,X   
       STY    $B4,X   
       BNE    LB75B   
LB756: TYA            
       AND    $B4,X   
       STA    $B4,X   
LB75B: RTS            

LB75C: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $D3     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $D3     
       CMP    #$0F    
       BCC    LB774   
       SBC    #$0F    
       INY            
LB774: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       RTS            

LB77B: JSR    LBCA5   
       ASL            
       STA    $85     
       BCC    LB7A4   
       BCS    LB786   
LB785: NOP            
LB786: LDA    $91     
       LDX    #$00    
LB78A: CPX    #$04    
       BEQ    LB7A3   
       ASL            
       ASL            
       BCC    LB795   
       INX            
       BNE    LB78A   
LB795: LDA    $85     
       ASL            
       STA    $85     
       BCC    LB79D   
       RTS            

LB79D: CLC            
       TXA            
       ADC    #$0C    
       TAX            
       RTS            

LB7A3: NOP            
LB7A4: LDA    $A1     
       LDX    #$04    
LB7A8: CPX    #$08    
       BEQ    LB785   
       ASL            
       ASL            
       BCC    LB7B3   
       INX            
       BNE    LB7A8   
LB7B3: LDA    $85     
       ASL            
       STA    $85     
       BCC    LB7BB   
       RTS            

LB7BB: CLC            
       TXA            
       ADC    #$04    
       TAX            
       RTS            

LB7C1: .byte $14,$1C,$24,$2C,$4C,$44,$3C,$34,$54,$5C,$64,$6C,$8C,$84,$7C,$74
LB7D1: CPX    #$00    
       BEQ    LB7DD   
       LDA    $EE     
       AND    #$02    
       BEQ    LB856   
       BNE    LB7E3   
LB7DD: LDA    $EE     
       AND    #$01    
       BEQ    LB856   
LB7E3: LDA    $B4,X   
       AND    #$0F    
       BNE    LB817   
       LDA    $B4,X   
       AND    #$80    
       BEQ    LB7F6   
       INC    $B2,X   
       INC    $B2,X   
       JMP    LB856   
LB7F6: LDA    $B4,X   
       AND    #$40    
       BEQ    LB803   
       DEC    $B2,X   
       DEC    $B2,X   
       JMP    LB856   
LB803: LDA    $B4,X   
       AND    #$20    
       BEQ    LB810   
       INC    $B0,X   
       INC    $B0,X   
       JMP    LB856   
LB810: DEC    $B0,X   
       DEC    $B0,X   
       JMP    LB856   
LB817: LDA    $B4,X   
       AND    #$08    
       BEQ    LB825   
       INC    $B2,X   
       INC    $B2,X   
       INC    $B2,X   
       BNE    LB856   
LB825: LDA    $B4,X   
       AND    #$04    
       BEQ    LB834   
       DEC    $B2,X   
       DEC    $B2,X   
       DEC    $B2,X   
       JMP    LB856   
LB834: LDA    $B4,X   
       AND    #$02    
       BEQ    LB842   
       INC    $B0,X   
       INC    $B0,X   
       INC    $B0,X   
       BNE    LB856   
LB842: LDA    $B4,X   
       AND    #$01    
       BEQ    LB856   
       DEC    $B0,X   
       DEC    $B0,X   
       DEC    $B0,X   
       LDA    $C3     
       CMP    #$01    
       BNE    LB856   
       DEC    $B0,X   
LB856: RTS            

LB857: LDA    INPT4,X 
       BPL    LB85C   
       RTS            

LB85C: LDA    $E2,X   
       CMP    #$00    
       BNE    LB863   
       RTS            

LB863: LDA    $B7,X   
       CMP    #$01    
       BNE    LB86A   
       RTS            

LB86A: LDA    $B6     
       CMP    #$02    
       BCS    LB871   
       RTS            

LB871: CPX    #$00    
       BEQ    LB87C   
       LDA    $EE     
       AND    #$02    
       BEQ    LB883   
       RTS            

LB87C: LDA    $EE     
       AND    #$01    
       BEQ    LB883   
       RTS            

LB883: LDA    #$01    
       STA    $B7,X   
       STA    $C8     
       STA    $C9     
       LDA    #$E6    
       STA    $CB     
       LDA    #$F1    
       STA    $CD     
       LDA    #$78    
       STA    $CF     
       LDA    $B0,X   
       SEC            
       SBC    $B6     
       STA    $81     
       LDA    $B4,X   
       AND    #$10    
       BEQ    LB8B5   
       LDA    $81     
       CLC            
       ADC    #$05    
       STA    $81     
       LDA    $C3     
       CMP    #$01    
       BNE    LB8C2   
       DEC    $81     
       BNE    LB8C2   
LB8B5: LDA    $B4,X   
       AND    #$20    
       BEQ    LB8C2   
       LDA    $81     
       CLC            
       ADC    #$04    
       STA    $81     
LB8C2: LDY    #$9B    
       LDA    $81     
       SEC            
LB8C7: DEY            
       SBC    #$0F    
       BCS    LB8C7   
       LDA    $B4,X   
       AND    #$20    
       BEQ    LB8D6   
       INY            
       INY            
       BNE    LB8E6   
LB8D6: LDA    $B4,X   
       AND    #$80    
       BEQ    LB8DF   
       INY            
       BNE    LB8E6   
LB8DF: LDA    $B4,X   
       AND    #$40    
       BEQ    LB8E6   
       INY            
LB8E6: LDA    $B2,X   
       STA    $81     
       LDA    $B4,X   
       AND    #$80    
       BEQ    LB8FE   
       LDA    $81     
       SEC            
       SBC    #$06    
       STA    $81     
       BMI    LB91F   
       CMP    #$09    
       BCS    LB91F   
       RTS            

LB8FE: LDA    $B4,X   
       AND    #$40    
       BEQ    LB90F   
       LDA    $81     
       CLC            
       ADC    #$08    
       STA    $81     
       BPL    LB91F   
       BMI    LB91F   
LB90F: LDA    $B4,X   
       AND    #$20    
       BEQ    LB91A   
       CPY    #$9F    
       BCC    LB91F   
       RTS            

LB91A: CPY    #$91    
       BCS    LB91F   
       RTS            

LB91F: INC    $81     
       INC    $81     
       LDA    $81     
       BMI    LB933   
       CMP    #$30    
       BCC    LB93D   
       CMP    #$50    
       BCC    LB951   
       CMP    #$70    
       BCC    LB947   
LB933: LDA    #$70    
       STA    $E7     
       LDA    #$03    
       STA    $E6     
       BNE    LB95E   
LB93D: LDA    #$10    
       STA    $E7     
       LDA    #$C0    
       STA    $E6     
       BNE    LB95E   
LB947: LDA    #$50    
       STA    $E7     
       LDA    #$C0    
       STA    $E6     
       BNE    LB959   
LB951: LDA    #$30    
       STA    $E7     
       LDA    #$03    
       STA    $E6     
LB959: CLC            
       TYA            
       ADC    #$10    
       TAY            
LB95E: STY    $E4     
       CLC            
       LDA    $E7     
       ADC    #$07    
LB965: CMP    $81     
       BCS    LB988   
       CLC            
       ADC    #$08    
       LDY    $E7     
       CPY    #$30    
       BCC    LB981   
       CPY    #$50    
       BCC    LB97A   
       CPY    #$70    
       BCC    LB981   
LB97A: ASL    $E6     
       ASL    $E6     
       JMP    LB965   
LB981: LSR    $E6     
       LSR    $E6     
       JMP    LB965   
LB988: LDY    #$00    
       STY    $E5     
       LDA    ($E4),Y 
       EOR    $E6     
       LDY    #$00    
       STA    ($E4),Y 
       LDA    $ED     
       CMP    #$00    
       BEQ    LB9A0   
       JSR    LB9FB   
       JMP    LB9A3   
LB9A0: JSR    LB9DE   
LB9A3: RTS            

LB9A4: LDY    #$02    
LB9A6: LDA.wy $00BB,Y 
       CMP    #$4B    
       BEQ    LB9B6   
       CLC            
       ADC    #$08    
       STA.wy $00BB,Y 
LB9B3: INC    $E2     
       RTS            

LB9B6: LDA    #$03    
       STA.wy $00BB,Y 
       DEY            
       DEY            
       BMI    LB9B3   
       BPL    LB9A6   
LB9C1: LDY    #$02    
LB9C3: LDA.wy $00BF,Y 
       CMP    #$4B    
       BEQ    LB9D3   
       CLC            
       ADC    #$08    
       STA.wy $00BF,Y 
LB9D0: INC    $E3     
       RTS            

LB9D3: LDA    #$03    
       STA.wy $00BF,Y 
       DEY            
       DEY            
       BMI    LB9D0   
       BPL    LB9C3   
LB9DE: LDY    #$02    
LB9E0: LDA.wy $00BB,Y 
       CMP    #$03    
       BEQ    LB9F0   
       SEC            
       SBC    #$08    
       STA.wy $00BB,Y 
LB9ED: DEC    $E2     
       RTS            

LB9F0: LDA    #$4B    
       STA.wy $00BB,Y 
       DEY            
       DEY            
       BMI    LB9ED   
       BPL    LB9E0   
LB9FB: LDY    #$02    
LB9FD: LDA.wy $00BF,Y 
       CMP    #$03    
       BEQ    LBA0D   
       SEC            
       SBC    #$08    
       STA.wy $00BF,Y 
LBA0A: DEC    $E3     
       RTS            

LBA0D: LDA    #$4B    
       STA.wy $00BF,Y 
       DEY            
       DEY            
       BMI    LBA0A   
       BPL    LB9FD   
LBA18: LDY    #$01    
       STY    $F3     
       STY    $C8     
       LDY    $F0     
       BNE    LBA6B   
       LDA    $F4     
       BEQ    LBA32   
       LDA    $C7     
       AND    #$07    
       CMP    #$01    
       BNE    LBA32   
       LDA    #$01    
       STA    $F0     
LBA32: LDX    $ED     
       CPX    #$00    
       BNE    LBA4D   
       LDA    $C7     
       AND    #$08    
       BNE    LBA4C   
       DEC    $C7     
       LDA    $C7     
       ORA    #$08    
       STA    $C7     
       LDA    #$02    
       STA    $B0,X   
       BNE    LBA5E   
LBA4C: RTS            

LBA4D: LDA    $C7     
       BMI    LBA6A   
       LDA    $C7     
       SEC            
       SBC    #$10    
       ORA    #$80    
       STA    $C7     
       LDA    #$02    
       STA    $B0,X   
LBA5E: LDA    $C7     
       AND    #$03    
       BEQ    LBA6B   
       LDA    $C7     
       AND    #$30    
       BEQ    LBA6B   
LBA6A: RTS            

LBA6B: LDA    #$01    
       STA    $F0     
       STA    $C8     
       LDA    #$BE    
       STA    $C6     
       LDA    #$0A    
       STA    $C5     
       LDA    #$00    
       STA    $EA     
       RTS            

LBA7E: LDA    $E8     
       CMP    #$07    
       BNE    LBA85   
       RTS            

LBA85: LDA    $D5     
       BPL    LBA9A   
       CMP    #$A8    
       BCC    LBA9A   
       LDA    #$FF    
       STA    $D5     
       LDA    #$BE    
       STA    $C6     
       LDA    #$0A    
       STA    $C5     
       RTS            

LBA9A: LDA    $F5     
       CMP    #$03    
       BEQ    LBAE9   
       CMP    #$01    
       BEQ    LBAB2   
       LDA    $E8     
       CMP    #$09    
       BNE    LBAAE   
       LDA    #$00    
       STA    $D7     
LBAAE: BIT    CXP0FB  
       BMI    LBAE9   
LBAB2: LDA    $F1     
       CMP    #$01    
       BNE    LBAC3   
       INC    $D6     
       LDA    $D7     
       CMP    #$01    
       BNE    LBAC2   
       INC    $D6     
LBAC2: RTS            

LBAC3: CMP    #$00    
       BNE    LBADE   
       LDA    $D7     
       BEQ    LBAD3   
       INC    $DA     
       LDA    $DA     
       CMP    #$20    
       BEQ    LBAE9   
LBAD3: DEC    $D5     
       LDA    $D7     
       CMP    #$01    
       BNE    LBADD   
       DEC    $D5     
LBADD: RTS            

LBADE: DEC    $D6     
       LDA    $D7     
       CMP    #$01    
       BNE    LBAE8   
       DEC    $D6     
LBAE8: RTS            

LBAE9: LDA    $F1     
       BNE    LBB02   
       INC    $D5     
       INC    $D5     
       JSR    LBCA5   
       ASL            
       BCC    LBAF9   
       BCS    LBB16   
LBAF9: LDA    #$01    
       STA    $F1     
       LDA    #$00    
       STA    REFP0   
       RTS            

LBB02: LSR            
       BCC    LBB1F   
       DEC    $D6     
       DEC    $D6     
       JSR    LBCA5   
       ASL            
       BCC    LBB16   
       LDA    #$00    
       STA    $F1     
       STA    $DA     
       RTS            

LBB16: LDA    #$02    
       STA    $F1     
       LDA    #$08    
       STA    REFP0   
       RTS            

LBB1F: INC    $D6     
       INC    $D6     
       JSR    LBCA5   
       ASL            
       BCC    LBAF9   
       LDA    #$00    
       STA    $DA     
       STA    $F1     
       RTS            

LBB30: LDY    $D7     
       CPY    #$01    
       BEQ    LBB51   
       CPY    #$03    
       BEQ    LBB8A   
       LDA    $E8     
       CMP    #$08    
       BNE    LBB8A   
       JSR    LBCA5   
       AND    #$0F    
       CMP    #$06    
       BCS    LBB80   
       LDA    #$3E    
       STA    $D1     
       LDY    #$01    
       STY    $D7     
LBB51: LDA    $D6     
       BMI    LBB5F   
       CMP    #$10    
       BCS    LBB67   
       LDA    #$10    
       STA    $D6     
       BNE    LBB67   
LBB5F: CMP    #$89    
       BCC    LBB67   
       LDA    #$89    
       STA    $D6     
LBB67: LDY    $E8     
       CPY    #$06    
       BNE    LBB75   
       LDY    #$00    
       STY    $D7     
       LDY    #$88    
       STY    $D1     
LBB75: JSR    LBCA5   
       AND    #$0F    
       CMP    #$08    
       BNE    LBB85   
       BEQ    LBB8F   
LBB80: LDY    #$03    
       STY    $D7     
       RTS            

LBB85: LDA    #$01    
       STA    $F5     
       RTS            

LBB8A: LDA    #$02    
       STA    $F5     
       RTS            

LBB8F: LDA    #$03    
       STA    $F5     
       RTS            

LBB94: JSR    LBF44   
       JSR    LBC9B   
       STA    HMCLR   
       STA    $B3     
LBB9E: JSR    LBF16   
       JSR    LBF24   
       LDA    $B3     
       BEQ    LBBB4   
       LDA    SWCHB   
       AND    #$01    
       BEQ    LBBC6   
       LSR            
       STA    $B3     
       BEQ    LBBC6   
LBBB4: LDA    INPT4   
       BMI    LBBC6   
       LDY    #$00    
LBBBA: INY            
       LDA    INPT4   
       BPL    LBBBA   
       JSR    LBC9B   
       JSR    LBF44   
       RTS            

LBBC6: LDA    SWCHB   
       AND    #$02    
       BNE    LBBDD   
       INC    $B2     
       LDA    $B2     
       AND    #$0F    
       BNE    LBBDD   
       INC    $F4     
       LDA    $F4     
       AND    #$01    
       STA    $F4     
LBBDD: LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       INC    $F6     
       LDA    $F6     
       STA    COLUP0  
       STA    COLUP1  
       BNE    LBBFB   
       INC    $81     
       LDA    $81     
       CMP    #$03    
       BNE    LBBFB   
       JSR    LBF44   
       RTS            

LBBFB: LDX    #$00    
       LDA    #$40    
       JSR    LBC90   
       LDX    #$01    
       LDA    #$42    
       JSR    LBC90   
       JSR    LBF33   
       LDA    #$03    
       STA    VDELP1  
       STA    WSYNC   
       STA    HMOVE   
       JSR    LBC81   
       JSR    LBC88   
       STA    WSYNC   
       LDY    #$09    
       JSR    LBC4F   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDY    #$13    
       JSR    LBC4F   
       LDA    LBCCA   
       LDY    #$08    
LBC31: STA.wy $00C0,Y 
       DEY            
       DEY            
       BPL    LBC31   
       JSR    LBC88   
       LDY    #$07    
       LDA    $F4     
       ASL            
       TAX            
       LDA    LBF5E,X 
       STA    $C4     
       JSR    LBC5A   
       JSR    LBF44   
       JMP    LBB9E   
LBC4F: LDX    #$09    
LBC51: LDA    LBF4A,Y 
       STA    $C0,X   
       DEY            
       DEX            
       BPL    LBC51   
LBC5A: LDY    #$07    
       STA    WSYNC   
LBC5E: LDA    ($C8),Y 
       TAX            
       STA    WSYNC   
       STA    HMOVE   
       PLA            
       PHA            
       NOP            
       LDA    ($C2),Y 
       STA    GRP1    
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    NUSIZ1  
       LDA    ($C6),Y 
       STA    GRP1    
       LDA    ($C4),Y 
       STA    GRP0    
       STX    GRP0    
       STA    HMCLR   
       DEY            
       BPL    LBC5E   
LBC81: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       RTS            

LBC88: LDY    #$20    
LBC8A: STA    WSYNC   
       DEY            
       BNE    LBC8A   
       RTS            

LBC90: JSR    LB75C   
       JSR    LB627   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LBC9B: LDA    #$00    
       LDX    #$F3    
LBC9F: STA    VSYNC,X 
       DEX            
       BNE    LBC9F   
       RTS            

LBCA5: LDA    $DD     
       STA    $DF     
       LDA    $DE     
       STA    $E0     
       ASL            
       ROL    $DD     
       ASL            
       ROL    $DD     
       CLC            
       ADC    $E0     
       STA    $DE     
       LDA    #$00    
       ADC    $DD     
       CLC            
       ADC    $DF     
       STA    $DD     
       LDA    #$00    
       INC    $DE     
       ADC    $DD     
       STA    $DD     
       RTS            

LBCCA: .byte $53,$B0,$7C,$7C,$44,$44,$44,$44,$44,$00,$F8,$F8,$08,$08,$F8,$80
       .byte $F8,$00,$FA,$FA,$8B,$9A,$82,$8B,$F8,$00,$A2,$A2,$A2,$AA,$B6,$A2
       .byte $00,$00,$EE,$82,$82,$CE,$88,$EE,$00,$00,$00,$00,$00,$00,$0F,$0F
       .byte $0F,$0D,$0B,$09,$07,$00,$00,$00,$18,$D0,$70,$20,$A0,$F8,$28,$20
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
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$C0,$58,$70,$20,$28,$F8,$A0,$20
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
       .byte $00,$00,$66,$24,$3C,$18,$7C,$54,$66,$00,$00,$00
LBF16: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$29    
       STA    TIM8T   
       RTS            

LBF24: LDA    INTIM   
       BNE    LBF24   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$30    
       STA    TIM64T  
       RTS            

LBF33: LDA    INTIM   
       BNE    LBF33   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$11    
       STA    T1024T  
       STA    WSYNC   
       RTS            

LBF44: LDA    INTIM   
       BNE    LBF44   
       RTS            

LBF4A: .byte $CC,$BC,$D4,$BC,$DC,$BC,$E4,$BC,$EC,$BC,$5B,$B0,$0B,$B0,$4B,$B0
       .byte $43,$B0,$13,$B0
LBF5E: .byte $13,$B0,$0B,$B0,$00,$00,$12,$13,$12,$1D,$1D,$13,$12,$13,$12,$00
       .byte $00,$0F,$0B,$07,$0F,$0B,$07,$0F,$0B,$07,$00,$00,$0C,$0C,$0C,$0C
       .byte $0C,$0C,$0C,$0C,$0C,$00,$00,$03,$04,$05,$06,$07,$08,$09,$0A,$0B
       .byte $00,$00,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$00,$00,$04,$04,$04
       .byte $04,$04,$04,$04,$04,$04,$00,$00,$0D,$0C,$0B,$0A,$09,$0A,$0B,$0C
       .byte $0D,$00,$00,$05,$0A,$0F,$05,$0A,$0F,$0F,$0A,$0F,$00,$00,$0C,$0B
       .byte $0A,$09,$08,$06,$05,$04,$01,$00,$00,$1D,$1D,$1D,$18,$18,$1F,$1F
       .byte $1F,$1F,$00,$00,$05,$07,$09,$0B,$0C,$0D,$0E,$0F,$0F,$00,$00,$01
       .byte $01,$01,$01,$01,$08,$08,$08,$08,$00,$00,$17,$18,$19,$18,$17,$19
       .byte $18,$17,$19,$00,$00,$00,$00,$00,$00,$0A,$00,$05,$0A,$0F,$00,$B0
       .byte $00,$B0
