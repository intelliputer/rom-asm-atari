; Disassembly of roms/Karate.bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Karate.bin
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

       ORG $F000

START:
LF000: CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       JSR    LF9E7   
LF00E: LDA    #$00    
       STA    $C3     
LF012: LDA    #$1D    
       STA    TIM64T  
       LDA    #$0E    
       STA    $CC     
       STA    $CD     
       LDA    #$00    
       STA    VSYNC   
       STA    $C8     
       STA    $C2     
       STA    $C5     
       LDA    #$30    
       STA    $84     
       STA    $86     
       LDA    #$FC    
       STA    $85     
       STA    $87     
       LDA    #$22    
       STA    $D6     
       LDA    #$60    
       STA    $B4     
       LDA    #$04    
       STA    $CB     
LF03F: LDA    #$00    
       STA    $A2     
       STA    $A4     
       STA    $A5     
       STA    $A3     
       STA    $A6     
       STA    $AB     
       STA    $AC     
       STA    $91     
       STA    $92     
       STA    $93     
       STA    $AE     
       STA    $AF     
       STA    $B0     
       STA    $B1     
       STA    $A7     
       LDA    #$FD    
       STA    $B8     
       STA    $BA     
       STA    $BC     
       LDA    #$02    
       STA    $BE     
       LDA    #$06    
       STA    $C1     
       LDA    #$01    
       STA    $BF     
       LDA    #$60    
       STA    $C9     
       LDA    #$FC    
       STA    $CA     
       LDA    #$FF    
       STA    $81     
       LDA    #$12    
       STA    $8F     
       LDA    #$48    
       STA    $88     
       LDA    #$9C    
       STA    $89     
       LDA    #$31    
       STA    $8C     
       LDA    #$9E    
       STA    $8D     
       LDA    #$00    
       JSR    LF865   
LF098: JSR    LF59B   
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       JSR    LF5BA   
       LDA.w  $00CB   
       CMP    #$04    
       BEQ    LF0B1   
       JSR    LFA3B   
       JMP    LF0B4   
LF0B1: JSR    LFAB4   
LF0B4: LDA    #$25    
       STA    NUSIZ1  
       LDA    #$25    
       STA    NUSIZ0  
       LDA    #$C7    
       AND    $81     
       STA    COLUPF  
       LDA    #$62    
       STA    COLUP0  
       LDA    #$35    
       STA    COLUP1  
       LDA    $88     
       LDX    #$00    
       JSR    LFE00   
       LDA    $8C     
       LDX    #$01    
       JSR    LFE00   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       STA    REFP0   
       EOR    #$08    
       STA    REFP1   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    $83     
       LDA.w  $00CB   
       CMP    #$04    
       BEQ    LF0F3   
LF0F3: LDX    #$00    
       STX    $8A     
       STX    $8B     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$78    
       STA    COLUPF  
       STA    HMCLR   
       LDX    #$17    
LF105: LDA    $82     
       CMP    $89     
       BNE    LF10D   
       STX    $8A     
LF10D: LDY    $8A     
       BEQ    LF113   
       DEC    $8A     
LF113: LDA    ($84),Y 
       STA    GRP0    
       LDA    $82     
       CMP    #$A0    
       BCC    LF128   
       LDA    #$01    
       STA    $A8     
       LDA    #$04    
       STA    $A9     
       JMP    LF14D   
LF128: LDA    #$FC    
       STA    COLUPF  
       DEC.w  $00A8   
       BNE    LF14D   
       LDA    #$00    
       STA    PF0     
       LDY.w  $00A9   
       BEQ    LF13F   
       LDA    #$FF    
       JMP    LF141   
LF13F: INC    $A9     
LF141: STA    PF1     
       STA    PF2     
       DEC    $A9     
       STA    WSYNC   
       LDA    #$06    
       STA    $A8     
LF14D: DEC    $82     
       LDA    $8B     
       CMP    #$0C    
       BEQ    LF15A   
       LDA    #$B8    
       JMP    LF15C   
LF15A: LDA    $CD     
LF15C: STA    COLUP1  
       STA    WSYNC   
       DEC    $82     
       LDA    $82     
       CMP    $8D     
       BNE    LF16A   
       STX    $8B     
LF16A: LDY    $8B     
       BEQ    LF170   
       DEC    $8B     
LF170: LDA    ($86),Y 
       STA    GRP1    
       STA    WSYNC   
       LDA    #$B4    
       CMP.w  $0082   
       BCC    LF181   
       LDA    $D6     
       STA    COLUBK  
LF181: LDA    $8A     
       CMP    #$0C    
       BEQ    LF18C   
       LDA    #$69    
       JMP    LF18E   
LF18C: LDA    $CC     
LF18E: STA    COLUP0  
       STA    WSYNC   
       DEC    $82     
       DEC    $82     
       LDA    $82     
       CMP    #$35    
       BCC    LF19F   
       JMP    LF105   
LF19F: JSR    LFE2A   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$1B    
       STA    TIM64T  
       LDA    $B4     
       BEQ    LF22A   
       JSR    LFCA0   
       JSR    LFBF3   
       JSR    LFC16   
       DEC    $B4     
       BEQ    LF22D   
       LDA    $B4     
       AND    #$08    
       CMP    #$08    
       BNE    LF211   
       LDA    $C8     
       CMP    #$06    
       BNE    LF211   
       LDA    $B4     
       STA    $D6     
       LDA    $D5     
       CMP    #$00    
       BNE    LF1F4   
       INC    $D4     
       LDA    $D4     
       AND    #$01    
       CMP    #$00    
       BEQ    LF1E9   
       DEC    $8D     
       DEC    $8D     
       DEC    $8D     
       DEC    $8D     
       JMP    LF211   
LF1E9: INC    $8D     
       INC    $8D     
       INC    $8D     
       INC    $8D     
       JMP    LF211   
LF1F4: INC    $D5     
       LDA    $D5     
       AND    #$01    
       CMP    #$00    
       BEQ    LF209   
       DEC    $89     
       DEC    $89     
       DEC    $89     
       DEC    $89     
       JMP    LF211   
LF209: INC    $89     
       INC    $89     
       INC    $89     
       INC    $89     
LF211: LDA.w  $00CE   
       BNE    LF21A   
       LDA    #$05    
       STA    $CE     
LF21A: DEC    $CE     
       LDA.w  $00CE   
       CMP    #$04    
       BEQ    LF230   
       CMP    #$02    
       BEQ    LF263   
       JMP    LF098   
LF22A: JMP    LF291   
LF22D: JMP    LF27A   
LF230: LDA.w  $00D1   
       CMP    #$05    
       BEQ    LF24D   
       LDA.w  $00D0   
       CMP    #$04    
       BCS    LF244   
       LDA    #$05    
       STA    $D0     
       STA    $D1     
LF244: DEC    $D0     
       LDA    $D0     
       STA    AUDF0   
       JMP    LF098   
LF24D: LDA.w  $00D0   
       CMP    #$08    
       BCC    LF25A   
       LDA    #$07    
       STA    $D0     
       STA    $D1     
LF25A: INC    $D0     
       LDA    $D0     
       STA    AUDF0   
       JMP    LF098   
LF263: LDA.w  $00CF   
       CMP    #$0C    
       BCS    LF270   
       LDA    #$0F    
       STA    $CF     
       STA    AUDV1   
LF270: DEC    $CF     
       LDA.w  $00CF   
       STA    AUDV1   
       JMP    LF098   
LF27A: LDA    #$FB    
       STA    $85     
       STA    $86     
       LDA    #$48    
       STA    $84     
       STA    $86     
       LDA    #$00    
       STA    $CB     
       STA    AUDC0   
       STA    AUDC1   
LF28E: JMP    LF098   
LF291: LDA    $C8     
       CMP    #$06    
       BNE    LF29A   
       JMP    LF000   
LF29A: LDA    $A6     
       BEQ    LF2C3   
       DEC    $A6     
       BEQ    LF2C0   
       LDA    $A6     
       CMP    #$06    
       BNE    LF2B1   
       JSR    LF939   
       JSR    LFAF7   
       JMP    LF2BA   
LF2B1: LDA    $A6     
       CMP    #$05    
       BNE    LF2BA   
       JSR    LFA8F   
LF2BA: JSR    LFCA0   
       JMP    LF57C   
LF2C0: JMP    LF668   
LF2C3: LDA    #$07    
       STA    $A6     
       LDA    $C3     
       CMP    #$07    
       BEQ    LF2D3   
       JSR    LFCA0   
       JMP    LF28E   
LF2D3: LDA.w  $0084   
       CMP    #$30    
       BEQ    LF2E1   
       CMP    #$48    
       BEQ    LF2E1   
       JMP    LF2E8   
LF2E1: LDA.w  $000C   
       AND    #$80    
       BNE    LF2EE   
LF2E8: JSR    LF49B   
       JMP    LF2F1   
LF2EE: JSR    LF436   
LF2F1: JSR    LFCA0   
       LDA    $C4     
       CMP    #$02    
       BNE    LF31B   
       LDA.w  $0086   
       CMP    #$30    
       BEQ    LF308   
       CMP    #$48    
       BEQ    LF308   
       JMP    LF30F   
LF308: LDA.w  $000D   
       AND    #$80    
       BNE    LF315   
LF30F: JSR    LF4A3   
       JMP    LF57C   
LF315: JSR    LF453   
       JMP    LF57C   
LF31B: LDA    $86     
       CMP    #$30    
       BEQ    LF33B   
       CMP    #$48    
       BEQ    LF33B   
       LDA    $A3     
       STA    $A2     
       STA    $A5     
       BEQ    LF331   
       DEC    $A3     
       BEQ    LF338   
LF331: LDA    $86     
       JSR    LF528   
       STA    $86     
LF338: JMP    LF57C   
LF33B: LDA    $D2     
       CMP    #$02    
       BCC    LF34C   
       CMP    #$04    
       BCC    LF354   
       LDA    #$00    
       STA    $D2     
       JMP    LF3EE   
LF34C: JSR    LF846   
       CMP    #$0B    
       JMP    LF359   
LF354: JSR    LF846   
       CMP    #$0E    
LF359: BCC    LF391   
       JSR    LF3D6   
       BCS    LF378   
       JMP    LF3C0   
LF363: JSR    LF37B   
       BCS    LF370   
LF368: LDA    #$FF    
       JSR    LF487   
       JMP    LF3CF   
LF370: LDA    #$FF    
       JSR    LF492   
       JMP    LF3CF   
LF378: JMP    LF3C9   
LF37B: LDA    $86     
       JSR    LF4AB   
       STA    $86     
       JSR    LF38A   
       LDX    $8C     
       LDY    $8D     
       RTS            

LF38A: SEC            
       LDA    $89     
       SBC.w  $008D   
       RTS            

LF391: LDA    $D3     
       BNE    LF3A7   
       JSR    LF38A   
       BCS    LF3A0   
       SEC            
       LDA    $8D     
       SBC.w  $0089   
LF3A0: CMP    #$0A    
       BCC    LF3F9   
       JMP    LF363   
LF3A7: INC    $D2     
       JSR    LF38A   
       BCS    LF3B4   
       SEC            
       LDA    $8D     
       SBC.w  $0089   
LF3B4: CMP    #$0B    
       BCS    LF3BB   
       JMP    LF363   
LF3BB: JSR    LF3D6   
       BCC    LF3C9   
LF3C0: JSR    LF3E1   
       JSR    LF47D   
       JMP    LF3CF   
LF3C9: JSR    LF3E1   
       JSR    LF473   
LF3CF: STX    $8C     
       STY    $8D     
       JMP    LF57C   
LF3D6: SEC            
       LDA    $88     
       SBC.w  $008C   
       LDX    $8C     
       LDY    $8D     
       RTS            

LF3E1: LDA    $86     
       JSR    LF4AB   
       STA    $86     
       JSR    LF922   
       LDA    #$FF    
       RTS            

LF3EE: JSR    LF37B   
       BCC    LF3F6   
       JMP    LF368   
LF3F6: JMP    LF370   
LF3F9: JSR    LF846   
       CMP    #$07    
       BEQ    LF424   
       CMP    #$06    
       BCC    LF424   
       LDA    $BF     
       CMP    #$08    
       BEQ    LF42A   
       AND    #$03    
       CMP    #$01    
       BEQ    LF42A   
       CMP    #$00    
       BEQ    LF424   
       CMP    #$02    
       BEQ    LF41E   
       JSR    LF521   
       JMP    LF42D   
LF41E: JSR    LF518   
       JMP    LF42D   
LF424: JSR    LF50C   
       JMP    LF42D   
LF42A: JSR    LF500   
LF42D: STA    $86     
       LDA    $A2     
       STA    $A3     
       JMP    LF57C   
LF436: LDA    $84     
       JSR    LF4AB   
       STA    $84     
       LDX    $88     
       LDY    $89     
       LDA    $89     
       STA    $AD     
       JSR    LF864   
       LDA    SWCHA   
       JSR    LF470   
       STX    $88     
       STY    $89     
       RTS            

LF453: LDA    $86     
       JSR    LF4AB   
       STA    $86     
       LDX    $8C     
       LDY    $8D     
       JSR    LF922   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    LF470   
       STX    $8C     
       STY    $8D     
       RTS            

LF470: ASL            
       BCS    LF47A   
LF473: CPX    #$80    
       BCC    LF479   
       LDX    #$7F    
LF479: INX            
LF47A: ASL            
       BCS    LF484   
LF47D: CPX    #$14    
       BCS    LF483   
       LDX    #$15    
LF483: DEX            
LF484: ASL            
       BCS    LF48F   
LF487: CPY    #$9C    
       BCC    LF48F   
       DEY            
       DEY            
       DEY            
       DEY            
LF48F: ASL            
       BCS    LF49A   
LF492: CPY    #$DC    
       BCS    LF49A   
       INY            
       INY            
       INY            
       INY            
LF49A: RTS            

LF49B: LDA    $84     
       JSR    LF4B5   
       STA    $84     
       RTS            

LF4A3: LDA    $86     
       JSR    LF4D7   
       STA    $86     
       RTS            

LF4AB: CMP    #$30    
       BEQ    LF4B2   
       LDA    #$30    
       RTS            

LF4B2: LDA    #$48    
       RTS            

LF4B5: CMP    #$48    
       BEQ    LF4C8   
       LDA    $A4     
       STA    $A2     
       BEQ    LF4C3   
       DEC    $A4     
       BEQ    LF4D4   
LF4C3: LDA    $84     
       JMP    LF528   
LF4C8: LDA    SWCHA   
       JSR    LF4FD   
       STA    $84     
       LDA    $A2     
       STA    $A4     
LF4D4: LDA    $84     
       RTS            

LF4D7: CMP    #$48    
       BEQ    LF4EA   
       LDA    $A5     
       STA    $A2     
       BEQ    LF4E5   
       DEC    $A5     
       BEQ    LF4FA   
LF4E5: LDA    $86     
       JMP    LF528   
LF4EA: LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       ASL            
       JSR    LF4FD   
       STA    $86     
       LDA    $A2     
       STA    $A5     
LF4FA: LDA    $86     
       RTS            

LF4FD: ASL            
       BCS    LF509   
LF500: LDA    #$02    
       STA    $A2     
       LDA    #$90    
       JMP    LF527   
LF509: ASL            
       BCS    LF515   
LF50C: LDA    #$02    
       STA    $A2     
       LDA    #$60    
       JMP    LF527   
LF515: ASL            
       BCS    LF521   
LF518: LDA    #$01    
       STA    $A2     
       LDA    #$D8    
       JMP    LF527   
LF521: LDA    #$01    
       STA    $A2     
       LDA    #$C0    
LF527: RTS            

LF528: CMP    #$A8    
       BNE    LF531   
       LDA    #$90    
       JMP    LF57B   
LF531: CMP    #$C0    
       BNE    LF53A   
LF535: LDA    #$30    
       JMP    LF57B   
LF53A: CMP    #$D8    
       BNE    LF541   
       JMP    LF535   
LF541: CMP    #$78    
       BNE    LF54A   
       LDA    #$60    
       JMP    LF57B   
LF54A: CMP    #$90    
       BNE    LF55E   
       LDA    $A2     
       CMP    #$00    
       BNE    LF559   
       LDA    #$30    
       JMP    LF57B   
LF559: LDA    #$A8    
       JMP    LF57B   
LF55E: CMP    #$60    
       BNE    LF572   
       LDA    $A2     
       CMP    #$00    
       BNE    LF56D   
       LDA    #$48    
       JMP    LF57B   
LF56D: LDA    #$78    
       JMP    LF57B   
LF572: CMP    #$48    
       BNE    LF579   
       JMP    LF535   
LF579: LDA    #$48    
LF57B: RTS            

LF57C: JSR    LFBF3   
       JSR    LFC16   
       LDA    #$FB    
       STA    $85     
       STA    $87     
       LDA    $88     
       CMP.w  $008C   
       BCS    LF594   
       LDA    #$08    
       JMP    LF596   
LF594: LDA    #$00    
LF596: STA    $A7     
       JMP    LF098   
LF59B: LDA    INTIM   
       BNE    LF59B   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LF5B9: .byte $60
LF5BA: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$10    
       LDX    #$00    
       JSR    LFE00   
       LDA    #$35    
       STA    COLUP0  
       LDA    #$50    
       LDX    #$01    
       JSR    LFE00   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$2C    
       STA    COLUP1  
       STA    COLUP1  
       LDY    #$07    
       STA    VDELP0  
       STA    VDELP1  
LF5E4: STA    WSYNC   
       NOP            
       LDA    ($94),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       STA    GRP1    
       LDA    ($96),Y 
       LDX    $A0     
       LDX    $A0     
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP0    
       LDX.w  $00A0   
       LDA    ($9C),Y 
       STA    GRP1    
       LDA    ($9E),Y 
       STA    GRP1    
       STA    GRP0    
       DEY            
       BPL    LF5E4   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    VDELP0  
       STA    VDELP1  
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

LF61A: LDX    #$02    
       LDY    #$08    
LF61E: LDA    $91,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $0094,Y 
       LDA    $91,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $0096,Y 
       LDA    #$FD    
       STA.wy $0095,Y 
       STA.wy $0097,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF61E   
       RTS            

LF644: CMP    #$A8    
       BEQ    LF65E   
       CMP    #$C0    
       BEQ    LF659   
       CMP    #$D8    
       BEQ    LF659   
       CMP    #$78    
       BEQ    LF663   
       LDA    #$00    
LF656: STA    $AA     
       RTS            

LF659: LDA    #$10    
       JMP    LF656   
LF65E: LDA    #$15    
       JMP    LF656   
LF663: LDA    #$20    
       JMP    LF656   
LF668: LDA.w  $0007   
       ASL            
       BCS    LF674   
LF66E: JSR    LF7CC   
       JMP    LF7E4   
LF674: LDA    $A4     
       CMP    #$01    
       BEQ    LF683   
       LDA    $84     
       JSR    LF644   
       LDA    $AA     
       STA    $AB     
LF683: LDA    $A5     
       CMP    #$01    
       BEQ    LF692   
       LDA    $86     
       JSR    LF644   
       LDA    $AA     
       STA    $AC     
LF692: LDA    $AB     
       BEQ    LF6FD   
LF696: JSR    LF846   
       CMP    #$02    
       BCC    LF66E   
       CMP    #$07    
       BEQ    LF6D3   
       BCC    LF704   
       CMP    #$0E    
       BCS    LF66E   
       CMP    #$09    
       BCC    LF6BB   
       LDA    $84     
       CMP    #$A8    
       BEQ    LF6B8   
       CMP    #$D8    
       BEQ    LF6B8   
       JMP    LF6BB   
LF6B8: JMP    LF66E   
LF6BB: SEC            
       LDA    $AB     
       SBC.w  $00AC   
       BEQ    LF704   
       BCC    LF6CC   
LF6C5: LDA    #$00    
       STA    $AC     
       JMP    LF704   
LF6CC: LDA    #$00    
       STA    $AB     
       JMP    LF704   
LF6D3: JSR    LF855   
       CMP    #$04    
       BCS    LF704   
       LDA    $AB     
       CMP    #$20    
       BEQ    LF6ED   
       LDA    $AC     
       CMP    #$20    
       BNE    LF704   
       LDA    #$60    
       STA    $AC     
       JMP    LF6CC   
LF6ED: LDA    $AC     
       CMP    #$20    
       BEQ    LF6FA   
       LDA    #$60    
       STA    $AB     
       JMP    LF6C5   
LF6FA: JMP    LF704   
LF6FD: LDA    $AC     
       BEQ    LF707   
       JMP    LF696   
LF704: JSR    LF865   
LF707: JSR    LF7CC   
       LDA    $AB     
       CMP    #$00    
       BEQ    LF738   
       CMP.w  $00AC   
       BCC    LF73E   
       CMP    #$10    
       BEQ    LF763   
       CMP    #$15    
       BEQ    LF772   
       CMP    #$20    
       BEQ    LF781   
       LDA    #$48    
       STA    $86     
       LDA    #$FC    
       STA    $87     
       LDA    #$30    
       STA    $84     
       LDA    #$FB    
       STA    $85     
       LDA    #$40    
       STA    $B4     
       JMP    LF7BD   
LF738: LDA    $AC     
       CMP    #$00    
       BEQ    LF76F   
LF73E: LDA    $AC     
       CMP    #$10    
       BEQ    LF790   
       CMP    #$15    
       BEQ    LF79F   
       CMP    #$20    
       BEQ    LF7AE   
       LDA    #$48    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       LDA    #$30    
       STA    $86     
       LDA    #$FB    
       STA    $87     
       LDA    #$40    
       STA    $B4     
       JMP    LF7BD   
LF763: LDA    #$02    
       STA    AUDC0   
       LDA    #$B2    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
LF76F: JMP    LF7DB   
LF772: LDA    #$08    
       STA    AUDC0   
       LDA    #$F5    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LF7DB   
LF781: LDA    #$08    
       STA    AUDC0   
       LDA    #$D4    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LF7DB   
LF790: LDA    #$02    
       STA    AUDC1   
       LDA    #$A8    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       JMP    LF7DB   
LF79F: LDA    #$08    
       STA    AUDC1   
       LDA    #$B4    
       STA    AUDF1   
       LDA    #$0E    
       STA    AUDV1   
       JMP    LF7DB   
LF7AE: LDA    #$08    
       STA    AUDC1   
       LDA    #$B6    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       JMP    LF7DB   
LF7BD: LDA    #$0F    
       STA    AUDC1   
       LDA    #$38    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       JMP    LF7DB   
LF7CC: LDA    #$00    
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       STA    AUDC0   
       RTS            

LF7DB: LDA    $AB     
       BEQ    LF7E4   
       LDA    #$01    
       JMP    LF7E6   
LF7E4: LDA    #$00    
LF7E6: STA    $D3     
       JSR    LFCA0   
       JSR    LF846   
       CMP    #$0C    
       BCS    LF83D   
       LDA    #$80    
       STA    $B2     
       JSR    LF92A   
       CMP    #$07    
       BCC    LF821   
       LDA    #$14    
       STA    $B2     
       JSR    LF92A   
       CMP    #$07    
       BCC    LF821   
       LDA    #$00    
       STA    $B3     
       JSR    LF846   
       CMP    #$03    
       BCS    LF81A   
       INC    $B6     
       LDA    $B6     
       JMP    LF825   
LF81A: LDA    #$00    
       STA    $B6     
       JMP    LF83D   
LF821: INC    $B3     
       LDA    $B3     
LF825: CMP    #$0E    
       BNE    LF83D   
       LDA    #$48    
       STA    $84     
       LDA    #$30    
       STA    $86     
       LDA    #$48    
       STA    $88     
       LDA    #$31    
       STA    $8C     
       LDA    #$00    
       STA    $A7     
LF83D: LDA    #$00    
       STA    $AB     
       STA    $AC     
       JMP    LF098   
LF846: SEC            
       LDA    $88     
       SBC.w  $008C   
       BCS    LF854   
       SEC            
       LDA    $8C     
       SBC.w  $0088   
LF854: RTS            

LF855: SEC            
       LDA    $89     
       SBC.w  $008D   
       BCS    LF863   
       SEC            
       LDA    $8D     
       SBC.w  $0089   
LF863: RTS            

LF864: RTS            

LF865: LDA    $AB     
       CLC            
       LDX    #$02    
       SED            
LF86B: ADC.wx $0091,X 
       STA    $91,X   
       LDA    #$00    
       DEX            
       BNE    LF86B   
       CLD            
       LDA    $AC     
       CLC            
       LDX    #$01    
       SED            
LF87C: ADC.wx $00AE,X 
       STA    $AE,X   
       STA    $B0,X   
       LDA    #$00    
       DEX            
       BPL    LF87C   
       CLD            
       LDX    #$04    
LF88B: CLC            
       ASL.w  $00B1   
       ROL.w  $00B0   
       DEX            
       BNE    LF88B   
       LDA    $B0     
       STA    $91     
       LDA    $92     
       AND    #$0F    
       ORA.w  $00B1   
       STA    $92     
       LDA    $C3     
       CMP    #$07    
       BEQ    LF8AC   
       LDA    $C4     
       STA    $93     
LF8AC: JSR    LF61A   
       LDA    $AB     
       SBC.w  $00AC   
       BEQ    LF8EC   
       BCC    LF8ED   
       LDA    $88     
       SBC.w  $008C   
       BCC    LF8D6   
       DEC    $8C     
       DEC    $8C     
       DEC    $8C     
       DEC    $8C     
       DEC    $8C     
       DEC    $8C     
       LDA    $8C     
       CMP    #$14    
       BCS    LF8EC   
       LDA    #$14    
       STA    $8C     
       RTS            

LF8D6: INC    $8C     
       INC    $8C     
       INC    $8C     
       INC    $8C     
       INC    $8C     
       INC    $8C     
       LDA    $8C     
       CMP    #$80    
       BCC    LF8EC   
       LDA    #$80    
       STA    $8C     
LF8EC: RTS            

LF8ED: LDA    $8C     
       SBC.w  $0088   
       BCC    LF90B   
       DEC    $88     
       DEC    $88     
       DEC    $88     
       DEC    $88     
       DEC    $88     
       DEC    $88     
       LDA    $88     
       CMP    #$14    
       BCS    LF8EC   
       LDA    #$14    
       STA    $88     
       RTS            

LF90B: INC    $88     
       INC    $88     
       INC    $88     
       INC    $88     
       INC    $88     
       INC    $88     
       LDA    $88     
       CMP    #$80    
       BCC    LF8EC   
       LDA    #$80    
       STA    $88     
       RTS            

LF922: LDA    $8D     
       STA    $AD     
       JSR    LF864   
       RTS            

LF92A: SEC            
       LDA    $88     
       SBC.w  $00B2   
       BCS    LF938   
       SEC            
       LDA    $B2     
       SBC.w  $0088   
LF938: RTS            

LF939: LDA    $BE     
       ORA    $BF     
       BEQ    LF977   
       DEC.w  $00C1   
       BNE    LF976   
       SEC            
       SED            
       LDA.w  $00BF   
       SBC    #$01    
       STA    $BF     
       BCS    LF956   
       DEC.w  $00BE   
       LDA    #$59    
       STA    $BF     
LF956: CLD            
       LDA    $BE     
       JSR    LFA34   
       STA    $B7     
       LDA    $BF     
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LFA34   
       STA    $B9     
       LDA    $BF     
       AND    #$0F    
       JSR    LFA34   
       STA    $BB     
       LDA    #$05    
       STA    $C1     
LF976: RTS            

LF977: JSR    LFA04   
       JSR    LFA0F   
       LDA    $C6     
       CMP.w  $00C7   
       BEQ    LF989   
       BCS    LF9AB   
       JMP    LF9A0   
LF989: LDA    $93     
       AND    #$F0    
       STA    $C6     
       LDA    $91     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C7     
       LDA    $C6     
       CMP.w  $00C7   
       BCS    LF9AB   
LF9A0: LDA    #$78    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       JMP    LF9C6   
LF9AB: LDA    #$78    
       STA    $86     
       LDA    #$FC    
       STA    $87     
LF9B3: LDA    #$60    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       INC    $C2     
       LDA    $C2     
       CMP    #$05    
       BEQ    LFA16   
       JMP    LF9D6   
LF9C6: LDA    #$60    
       STA    $86     
       LDA    #$FC    
       STA    $87     
       INC    $C5     
       LDA    $C5     
       CMP    #$05    
       BEQ    LFA25   
LF9D6: JSR    LFCA0   
       LDA    #$80    
       STA    $B4     
       LDA    #$10    
       STA    $CE     
       JSR    LF9E7   
       JMP    LF03F   
LF9E7: LDA    #$08    
       STA    AUDC1   
       LDA    #$0E    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       STA    $CF     
       LDA    #$04    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDF0   
       STA    $D0     
       LDA    #$09    
       STA    AUDV0   
       RTS            

LFA04: LDA    $92     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $C6     
       RTS            

LFA0F: LDA    $91     
       AND    #$F0    
       STA    $C7     
       RTS            

LFA16: LDA    #$06    
       STA    $C8     
       LDA    #$01    
       STA    $D5     
       LDA    #$00    
       STA    $D4     
       JMP    LF9D6   
LFA25: LDA    #$06    
       STA    $C8     
       LDA    #$01    
       STA    $D4     
       LDA    #$00    
       STA    $D5     
       JMP    LF9D6   
LFA34: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LFA3B: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$3C    
       LDX.w  $0000   
       JSR    LFE00   
       LDA    #$44    
       LDX    #$01    
       JSR    LFE00   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1C    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$07    
LFA5E: STA    WSYNC   
       STA    HMOVE   
       LDA    ($B7),Y 
       STA    GRP0    
       LDA    LFD73,Y 
       STA    GRP1    
       LDA    ($BB),Y 
       STA    $C0     
       LDX    $C0     
       DEC    $82     
       NOP            
       NOP            
       LDA    ($B9),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LFA5E   
       LDA    #$E0    
       STA    $82     
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ0  
       STA    NUSIZ1  
       RTS            

LFA8F: JSR    LFA04   
       CMP    #$90    
       BEQ    LFA9E   
       JSR    LFA0F   
       CMP    #$90    
       BEQ    LFAA9   
       RTS            

LFA9E: LDA    #$48    
       STA    $86     
       LDA    #$FC    
       STA    $87     
       JMP    LF9B3   
LFAA9: LDA    #$48    
       STA    $84     
       LDA    #$FC    
       STA    $85     
       JMP    LF9C6   
LFAB4: LDA    #$00    
       STA    GRP0    
       LDA    #$4C    
       STA    COLUP0  
       LDA    #$40    
       LDX    #$00    
       JSR    LFE00   
       STA    HMOVE   
       LDA    #$05    
       STA    NUSIZ0  
       STA    HMCLR   
       LDY    #$18    
LFACD: STA    WSYNC   
       LDA    ($C9),Y 
       STA    GRP0    
       DEC    $82     
       STA    WSYNC   
       CPY    #$05    
       BCS    LFADF   
       LDA    #$22    
       STA    COLUBK  
LFADF: DEC    $82     
       STA    WSYNC   
       DEC    $82     
       DEY            
       BPL    LFACD   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$A0    
       STA    $82     
       RTS            

LFAF7: LDA    $C2     
       JSR    LFB06   
       STA    $CC     
       LDA    $C5     
       JSR    LFB06   
       STA    $CD     
       RTS            

LFB06: CMP    #$00    
       BEQ    LFB1B   
       CMP    #$01    
       BEQ    LFB2A   
       CMP    #$02    
       BEQ    LFB20   
       CMP    #$03    
       BEQ    LFB25   
       LDA    #$00    
       JMP    LFB2C   
LFB1B: LDA    #$0E    
       JMP    LFB2C   
LFB20: LDA    #$CA    
       JMP    LFB2C   
LFB25: LDA    #$2C    
       JMP    LFB2C   
LFB2A: LDA    #$36    
LFB2C: RTS            

LFB2D: .byte $FF,$FF,$FF,$00,$30,$13,$11,$11,$13,$12,$12,$1B,$09,$09,$0F,$06
       .byte $06,$34,$37,$15,$1F,$1F,$0E,$04,$0C,$0C,$0C,$00,$03,$19,$09,$09
       .byte $09,$19,$11,$11,$19,$0B,$0F,$06,$06,$07,$05,$07,$3F,$2F,$0E,$04
       .byte $0C,$0C,$0C,$00,$06,$04,$06,$06,$62,$23,$21,$21,$21,$3D,$1F,$06
       .byte $06,$07,$0F,$1F,$17,$17,$06,$02,$06,$06,$06,$00,$06,$04,$06,$02
       .byte $03,$01,$03,$02,$06,$0C,$0C,$0C,$0C,$0E,$1F,$17,$33,$25,$6B,$43
       .byte $C3,$80,$80,$00,$06,$04,$06,$06,$62,$23,$21,$21,$21,$3D,$1F,$06
       .byte $06,$07,$0F,$1F,$17,$17,$06,$02,$06,$06,$06,$00,$06,$04,$04,$06
       .byte $02,$03,$01,$01,$03,$02,$06,$06,$1E,$F6,$87,$07,$03,$05,$09,$03
       .byte $03,$00,$00,$00,$1B,$09,$09,$19,$11,$31,$23,$22,$32,$1A,$0E,$06
       .byte $06,$04,$0F,$07,$0F,$1E,$3E,$64,$CC,$8C,$0C,$00,$63,$21,$21,$21
       .byte $21,$21,$23,$22,$32,$1A,$0E,$06,$06,$04,$0F,$07,$0F,$FE,$1C,$04
       .byte $0C,$0C,$0C,$FF,$FF,$FF
LFBF3: LDA    SWCHB   
       AND    #$02    
       BEQ    LFBFC   
       BNE    LFC2F   
LFBFC: LDA    SWCHB   
       AND    #$02    
       BEQ    LFBFC   
       LDA    $C4     
       CMP    #$01    
       BEQ    LFC0D   
       LDA    #$01    
       BNE    LFC0F   
LFC0D: LDA    #$02    
LFC0F: STA    $C4     
       PLA            
       PLA            
       JMP    LF00E   
LFC16: LDA    SWCHB   
       AND    #$01    
       BEQ    LFC1F   
       BNE    LFC2F   
LFC1F: LDA    SWCHB   
       AND    #$01    
       BEQ    LFC1F   
       LDA    #$07    
       STA    $C3     
       PLA            
       PLA            
       JMP    LF012   
LFC2F: RTS            

LFC30: .byte $00,$66,$22,$22,$22,$22,$26,$34,$18,$0C,$06,$07,$03,$03,$07,$76
       .byte $5E,$5E,$1C,$08,$18,$18,$18,$00,$00,$00,$00,$CD,$4D,$5D,$59,$7D
       .byte $6D,$6D,$4D,$4D,$07,$07,$07,$03,$02,$06,$06,$06,$00,$00,$00,$00
       .byte $00,$00,$66,$24,$24,$24,$24,$24,$24,$24,$3C,$18,$18,$18,$18,$18
       .byte $18,$24,$7E,$42,$DB,$99,$99,$81,$00,$00,$6C,$48,$48,$48,$68,$28
       .byte $28,$18,$10,$30,$30,$30,$3C,$28,$38,$30,$30,$2C,$1C,$0C,$00,$00
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFCA0: LDA    INTIM   
       BNE    LFCA0   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$1D    
       STA    TIM64T  
       RTS            

LFCBB: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$66,$66
       .byte $66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C
       .byte $7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66
       .byte $66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66
       .byte $3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C,$00,$00,$80
       .byte $C0,$00,$00,$00,$00,$00,$7F,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$00,$00,$00,$00,$00
LFD73: .byte $00,$18,$18,$00,$00,$18,$18,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$7D
       .byte $6D,$6D,$79,$6C,$6C,$7D,$00,$9F,$9B,$9A,$98,$98,$3E,$98,$00,$3E
       .byte $36,$36,$30,$30,$36,$3E,$00,$F9,$DB,$DB,$D8,$DB,$DB,$F8,$A5,$07
       .byte $29,$80,$F0,$1A,$A9,$20,$85,$D9,$A9,$98,$85,$BE,$A9,$14,$85,$BF
       .byte $A9,$E0,$85,$84,$20,$A2,$FE,$A9,$AA,$05,$DE,$85,$DE,$60,$A5,$00
       .byte $29,$80,$F0,$F9,$A6,$CA,$B5,$8D,$C9,$98,$D0,$01,$60,$A9,$10,$85
       .byte $D9,$20,$A2,$FE,$60,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFE00: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $0080   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $0080   
       CMP    #$0F    
       BCC    LFE1A   
       SBC    #$0F    
       INY            
LFE1A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LFE24: DEY            
       BPL    LFE24   
       STA    RESP0,X 
       RTS            

LFE2A: LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    RESBL   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    WSYNC   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$07    
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
LFE5C: STA    WSYNC   
       NOP            
       LDA    LFE7C,X 
       STA.w  $001B   
       LDA    LFE84,X 
       STA    GRP1    
       NOP            
       LDA    LFE94,X 
       TAY            
       LDA    LFE8C,X 
       STA    GRP0    
       STY    GRP1    
       DEX            
       BPL    LFE5C   
       STA    WSYNC   
       RTS            

LFE7C: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFE84: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFE8C: .byte $00,$00,$00,$00,$00,$00,$00,$00
LFE94: .byte $00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$D8,$A2,$00,$A9
       .byte $00,$95,$00,$9A,$E8,$D0,$FA,$A9,$20,$8D,$96,$02,$20,$A2,$FF,$20
       .byte $11,$FB,$A9,$01,$85,$AB,$A9,$00,$85,$CB,$20,$A0,$FC,$A9,$20,$85
       .byte $E1,$A9,$01,$85,$EC,$85,$ED,$20,$81,$FF,$A5,$D3,$A2,$03,$20,$D2
       .byte $FE,$AD,$82,$02,$29,$02,$D0,$2C,$A5,$E1,$C9,$88,$B0,$16,$A6,$AB
       .byte $E8,$E0,$07,$90,$02,$A2,$01,$86,$AB,$A9,$00,$85,$B2,$A9,$88,$85
       .byte $E1,$4C,$76,$F0,$A5,$AB,$85,$83,$A9,$00,$85,$81,$85,$82,$20,$8E
       .byte $FB,$4C,$4D,$F0,$A5,$E1,$F0,$07,$29,$7F,$85,$E1,$4C,$76,$F0,$20
       .byte $B0,$F5,$AD,$84,$02,$D0,$FB,$A5,$C6,$A2,$02,$20,$D2,$FE,$85,$2C
       .byte $A9,$00,$85,$BA,$85,$B7,$A5,$BE,$85,$B5,$A5,$C5,$85,$B8,$20,$2C
       .byte $FB,$A5,$C3,$A2,$01,$20,$D2,$FE,$AD,$BC,$00,$A2,$00,$20,$D2,$FE
       .byte $85,$02,$85,$2A,$A5,$EB,$C9,$02,$90,$30,$F0,$17,$A9,$01,$85,$F1
       .byte $A9,$2C,$85,$F3,$A9,$57,$85,$F5,$A9,$FF,$85,$F2,$85,$F4,$85,$F6
       .byte $4C,$F2,$F0,$A9,$01,$85,$F1,$A9,$2C,$85,$F3,$A9,$57,$85,$F5,$A9
       .byte $FE,$85,$F2,$85,$F4,$85,$F6,$4C,$F2,$F0,$A9,$01,$85,$F1,$A9,$2C
       .byte $85,$F3,$A9,$57,$85,$F5,$A9,$FD,$85,$F2,$85,$F4,$85,$F6,$A0,$29
       .byte $84,$80,$A2,$7E,$A9,$24,$85,$F0,$00,$F0,$00,$F0
