; Disassembly of roms/Brain Games (1).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Brain Games (1).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
CTRLPF  =  $0A
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       LDX    #$FF    
       TXS            
       STX    SWACNT  
       STX    TIM8T   
       JMP    LF1C0   
LF016: LDA    #$42    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       INC    $8E     
       JSR    LF27C   
LF038: LDA    INTIM   
       BNE    LF038   
       STA    WSYNC   
       STA    VBLANK  
       STA    $D1     
       STA    $D2     
       LDX    #$06    
       STX    CTRLPF  
LF049: STA    WSYNC   
       LDA    $D1     
       STA    PF1     
       LDY    $BC     
       LDA    LF78D,Y 
       AND    #$F0    
       STA    $D1     
       LDY    $BA     
       LDA    LF78D,Y 
       AND    #$0F    
       ORA    $D1     
       STA    $D1     
       LDA    $D2     
       STA    PF1     
       LDY    $BD     
       LDA    LF78D,Y 
       AND    #$F0    
       STA    $D2     
       LDY    $BB     
       LDA    LF78D,Y 
       AND    $B9     
       STA    WSYNC   
       ORA    $D2     
       STA    $D2     
       LDA    $D1     
       STA    PF1     
       DEX            
       BEQ    LF093   
       INC    $BA     
       INC    $BC     
       INC    $BB     
       INC    $BD     
       LDA    $D2     
       STA    PF1     
       JMP    LF049   
LF093: STX    PF1     
       STX    $D5     
       STX    NUSIZ0  
       STA    WSYNC   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$FF    
       STA    $D4     
       BNE    LF0E0   
LF0A5: STA    WSYNC   
       LDA    ($CF),Y 
       STA    GRP0    
       LDA    ($D1),Y 
       STA    GRP1    
LF0AF: LDA    $80,X   
       STA    PF1     
       LDA    $87,X   
       STA    PF2     
       STA    WSYNC   
       INY            
       CPY    #$08    
       BCC    LF0A5   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       CPY    #$08    
       BEQ    LF0AF   
       STA    PF1     
       STA    PF2     
       INX            
       STX    $D5     
       CPX    #$02    
       BNE    LF0D9   
       LDA    $C3     
       STA    NUSIZ0  
LF0D9: CPX    #$07    
       BNE    LF0E0   
       JMP    LF168   
LF0E0: STA    WSYNC   
       LDA    $93,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF0E9: DEY            
       BPL    LF0E9   
       STA    RESP0   
       STA    WSYNC   
       LDA    $9A,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF0F7: DEY            
       BPL    LF0F7   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$F6    
       STA    $D0     
       STA    $D2     
       LDA    $A1,X   
       BPL    LF110   
       LDY    #$00    
       STY    $D0     
       BEQ    LF113   
LF110: ASL            
       ASL            
       ASL            
LF113: STA    $CF     
       LDA    $A8,X   
       BPL    LF11F   
       LDY    #$00    
       STY    $D2     
       BEQ    LF122   
LF11F: ASL            
       ASL            
       ASL            
LF122: STA    $D1     
       LDX    $D4     
       BPL    LF135   
       INX            
       STX    $91     
       STX    $92     
       STX    $D4     
       LDA    #$EE    
       STA    $D3     
       BNE    LF15C   
LF135: CPX    #$0C    
       BCS    LF15F   
       LDY    #$02    
LF13B: INC    $D4     
       LDX    LF7F9,Y 
       LDA    VSYNC,X 
       BMI    LF148   
       LDA    $D4     
       STA    $91     
LF148: TYA            
       BEQ    LF14C   
       INX            
LF14C: LDA    VBLANK,X
       BMI    LF154   
       LDA    $D4     
       STA    $92     
LF154: DEY            
       BPL    LF13B   
       SEC            
       ROL    $D3     
       LDA    $D3     
LF15C: STA    SWCHA   
LF15F: STA    WSYNC   
       LDX    $D5     
       LDY    #$FF    
       JMP    LF0AF   
LF168: LDA    #$22    
       STA    TIM64T  
       LDA    SWCHB   
       ROR            
       BCS    LF19A   
       LDA    #$FF    
       STA    $8F     
       STA    $AF     
       LDA    #$00    
       LDX    #$19    
LF17D: STA    $B1,X   
       DEX            
       BPL    LF17D   
       LDA    #$06    
       STA    $B2     
       LDA    $CD     
       BNE    LF190   
       LDA    #$04    
       STA    $C6     
       STA    $C7     
LF190: BIT    $CB     
       BPL    LF1F0   
       LDA    #$0F    
       STA    $B9     
       BNE    LF1F0   
LF19A: LDA    $8E     
       BNE    LF1A4   
       INC    $C4     
       BNE    LF1A4   
       STA    $8F     
LF1A4: AND    #$1F    
       BNE    LF1AA   
       STA    $C5     
LF1AA: LDA    SWCHB   
       AND    #$02    
       BEQ    LF1B6   
       STA    $C5     
LF1B3: JMP    LF23C   
LF1B6: BIT    $C5     
       BMI    LF1B3   
       LDA    #$FF    
       STA    $C5     
       INC    $90     
LF1C0: LDA    $CE     
       STA    $C6     
       LDX    #$00    
       STX    $C7     
       STX    $B9     
       STX    $8F     
       STX    $8E     
       LDA    $90     
       CMP    #$13    
       BCC    LF1D8   
       STX    $C6     
       STX    $90     
LF1D8: JSR    LF71B   
       STA    $CE     
       LDX    $90     
       LDA    LF7CB,X 
       STA    $CB     
       AND    #$03    
       STA    $CD     
       LDA    $CB     
       LSR            
       LSR            
       AND    #$01    
       STA    $CC     
LF1F0: LDX    #$0D    
LF1F2: LDA    #$00    
       STA    $93,X   
       STA    $80,X   
       LDA    #$0A    
       STA    $A1,X   
       DEX            
       BPL    LF1F2   
       LDA    #$80    
       STA    $C1     
       STA    $B4     
       LDA    #$E0    
       STA    $87     
       STA    $8A     
       LDX    $CC     
       INX            
       INX            
       INX            
       STX    $BF     
       LDY    $CD     
       BNE    LF21B   
       DEX            
       BIT    $CB     
       BVS    LF234   
LF21B: LDA    #$E0    
       CPY    #$02    
       BEQ    LF227   
       LDA    #$07    
       STA    $82,X   
       LDA    #$E7    
LF227: STA    $89,X   
       DEX            
       BPL    LF21B   
       CPY    #$00    
       BNE    LF23C   
       STY    $82     
       STY    $89     
LF234: LDA    #$07    
       STA    $81     
       LDA    #$E7    
       STA    $88     
LF23C: LDA    SWCHB   
       LDX    #$07    
       LDY    #$09    
       AND    #$08    
       BEQ    LF250   
       LDX    #$F7    
       LDA    $CD     
       ASL            
       CLC            
       ADC    $CD     
       TAY            
LF250: LDA    $8F     
       EOR    #$FF    
       BMI    LF258   
       LDX    #$FF    
LF258: AND    $C4     
       STA    $D2     
       STX    $D1     
       LDX    #$02    
LF260: LDA    LF7BF,Y 
       EOR    $C1     
       EOR    $D2     
       AND    $D1     
       STA    COLUP1,X
       INY            
       DEX            
       BPL    LF260   
       STA    COLUP0  
       JSR    LF73C   
LF274: LDA    INTIM   
       BNE    LF274   
       JMP    LF016   
LF27C: LDA    $8F     
       TAX            
       BEQ    LF2E4   
       LDA    $C1     
       BPL    LF28B   
       DEC    $B4     
       BNE    LF2E8   
       STA    $AF     
LF28B: LDA    $CB     
       AND    #$23    
       BNE    LF2A0   
       LDX    $B0     
       LDY    $C1     
       BMI    LF2BF   
       BEQ    LF2C1   
       LDX    $92     
       LDY    $AF     
       JMP    LF2C8   
LF2A0: AND    #$20    
       BNE    LF2BF   
       BIT    $C1     
       BVS    LF2BF   
       DEC    $B3     
       BNE    LF2BF   
       LDX    #$78    
       LDA    $CB     
       AND    #$10    
       BEQ    LF2B6   
       LDX    #$1E    
LF2B6: STX    $B3     
       LDX    #$02    
       JSR    LF717   
       BEQ    LF2CD   
LF2BF: LDX    $92     
LF2C1: LDA    $91     
       TAY            
       EOR    $AF     
       BNE    LF2CD   
LF2C8: TXA            
       EOR    $B0     
       BEQ    LF2E8   
LF2CD: STY    $AF     
       STX    $B0     
       STX    $C4     
       LDA    $CD     
       BEQ    LF2DA   
       JMP    LF3ED   
LF2DA: LDA    $CB     
       AND    #$20    
       BEQ    LF2EB   
       STA    $C1     
       LDA    $91     
LF2E4: STX    $B6     
LF2E6: STA    $B5     
LF2E8: JMP    LF5A1   
LF2EB: BIT    $CB     
       BVC    LF2F5   
       LDA    #$0A    
       STA    $A4     
       BNE    LF2FD   
LF2F5: JSR    LF700   
       LDA    #$0A    
       JSR    LF74B   
LF2FD: BIT    $C1     
       BMI    LF304   
       JMP    LF360   
LF304: LDA    #$12    
LF306: STA    $B4     
       LDX    #$01    
       LDY    #$01    
       LDA    #$0D    
       JSR    LF74B   
       LDA    $B5     
       BEQ    LF319   
       LDA    #$00    
       BEQ    LF2E6   
LF319: LDA    $B1     
       CMP    $BE     
       BCC    LF325   
       BNE    LF35D   
       LDX    $C0     
       BEQ    LF32D   
LF325: TAX            
       LDA    $D7,X   
       STA    $B5     
       JMP    LF347   
LF32D: LDX    $CC     
       JSR    LF73C   
       AND    LF7F7,X 
       CMP    LF7F5,X 
       BCC    LF33F   
       SEC            
       SBC    LF7F5,X 
       CLC            
LF33F: ADC    #$01    
       LDX    $B1     
       STA    $B5     
       STA    $D7,X   
LF347: INC    $B1     
       BIT    $CB     
       BVC    LF352   
       JSR    LF727   
       BNE    LF35A   
LF352: JSR    LF700   
       LDA    #$0B    
       JSR    LF74B   
LF35A: JMP    LF5A1   
LF35D: JSR    LF731   
LF360: LDX    #$01    
       LDA    $C1     
       ASL            
       TAY            
       LDA    #$0F    
       JSR    LF74B   
       LDX    $C1     
       LDA    $C0     
       BEQ    LF37C   
       JSR    LF717   
       BNE    LF399   
LF376: LDA    #$00    
       STA    $8F     
       BEQ    LF3EA   
LF37C: LDA    $BE     
       CMP    $B1     
       BCS    LF3B7   
       BIT    $CB     
       BPL    LF38C   
       LDA    $C2     
       EOR    #$01    
       STA    $C2     
LF38C: INC    $BE     
       LDX    #$02    
       JSR    LF71B   
       LDA    $BE     
       CMP    #$20    
       BCS    LF376   
LF399: LDA    #$80    
       STA    $C1     
       ASL            
       STA    $B1     
       LDX    $C2     
       LDA    SWCHB   
       AND    LF7FE,X 
       BEQ    LF3B2   
       LDA    $C0     
       BNE    LF3B2   
       LDA    $BE     
       STA    $B1     
LF3B2: LDA    #$70    
       JMP    LF306   
LF3B7: LDA    $AF,X   
       STA    $B5     
       BEQ    LF35A   
       SEC            
       SBC    #$01    
       LDX    $CC     
       CMP    LF7F5,X 
       BCS    LF35A   
       LDX    $B1     
       LDA    $D7,X   
       CMP    $B5     
       BEQ    LF3D7   
       LDA    #$0D    
       STA    $B5     
       STA    $C0     
       BNE    LF3EA   
LF3D7: BIT    $CB     
       BVC    LF3E0   
       JSR    LF727   
       BNE    LF3E8   
LF3E0: JSR    LF700   
       LDA    #$0B    
       JSR    LF74B   
LF3E8: INC    $B1     
LF3EA: JMP    LF5A1   
LF3ED: BIT    $C1     
       BMI    LF40F   
       LDY    $C8     
       BEQ    LF3FC   
       CMP    #$01    
       BEQ    LF453   
       JMP    LF541   
LF3FC: CMP    #$01    
       BNE    LF403   
       JSR    LF782   
LF403: LDA    $B1     
       STA    $C8     
       LDA    #$80    
       STA    $C1     
       STA    $B4     
       BNE    LF45F   
LF40F: DEC    $B2     
       BNE    LF419   
       LDA    #$00    
       STA    $8F     
       BEQ    LF45F   
LF419: LSR    $C1     
       LDA    #$11    
       STA    $C8     
       LDA    #$01    
       STA    $B3     
       LDX    $BF     
       CMP    $CD     
       BEQ    LF42C   
       JMP    LF4D7   
LF42C: JSR    LF73C   
       AND    #$0F    
       CLC            
       ADC    #$10    
       STA    $D7,X   
       STA    $A3,X   
       LDA    LF7E5   
       STA    $95,X   
       LDA    #$0A    
       STA    $AA,X   
       LDA    LF7E6   
       STA    $9C,X   
       DEX            
       BPL    LF42C   
       LDA    $CB     
       AND    #$08    
       BEQ    LF451   
       LDA    #$5A    
LF451: STA    $B5     
LF453: BIT    $C1     
       BVC    LF48B   
       DEC    $B5     
       BEQ    LF462   
       LDA    #$FF    
       STA    $AF     
LF45F: JMP    LF5A1   
LF462: LSR    $C1     
       LDX    $BF     
       LDA    #$FF    
LF468: STA    $DD,X   
       DEX            
       BPL    LF468   
       LDY    $BF     
LF46F: JSR    LF73C   
       AND    #$03    
       TAX            
       LDA    $DD,X   
       BPL    LF46F   
       LDA.wy $00D7,Y 
       STA    $DD,X   
       STA    $A3,X   
       LDA    LF7E4   
       STA    $95,X   
       DEY            
       BPL    LF46F   
       JSR    LF731   
LF48B: LDA    $BF     
       CMP    $B1     
       BCS    LF4A8   
       LDX    $C0     
       BEQ    LF49A   
       JSR    LF782   
       BEQ    LF49D   
LF49A: JSR    LF76B   
LF49D: LDA    #$80    
       STA    $C1     
       LDA    #$A0    
       STA    $B4     
LF4A5: JMP    LF5A1   
LF4A8: LDA    $AF     
       STA    $B5     
       BEQ    LF4A5   
       JSR    LF700   
       DEX            
       DEX            
       DEX            
       LDA    #$0A    
       CMP    $A3,X   
       BEQ    LF4A5   
       STA    $A3,X   
       LDA    $DD,X   
       LDX    $B1     
       STA    $AA,X   
       CMP    $D7,X   
       BEQ    LF4CE   
       INC    $C0     
       LDA    #$0D    
       STA    $B5     
       BNE    LF4D3   
LF4CE: LDX    #$00    
       JSR    LF71B   
LF4D3: INC    $B1     
       BNE    LF4A5   
LF4D7: JSR    LF731   
       JSR    LF73C   
       AND    #$0F    
       CLC            
       ADC    #$10    
LF4E2: LDY    LF7DF   
       BIT    $CB     
       BVC    LF4FC   
       JSR    LF73C   
       AND    #$07    
       SED            
       CLC            
       ADC    #$01    
       TAY            
       ADC    $B1     
       STA    $B1     
       CLD            
       TYA            
       LDY    LF7E5   
LF4FC: STA    $A3,X   
       STY    $95,X   
       DEX            
       BPL    LF4E2   
       BIT    $CB     
       BVS    LF541   
       LDY    #$05    
       STY    $C3     
       ASL            
       ASL            
       ASL            
       TAY            
       LDX    #$00    
LF511: LDA    LF600,Y 
       STA    $D7,X   
       INY            
       INX            
       CPX    #$08    
       BCC    LF511   
       JSR    LF73C   
       AND    #$03    
       TAX            
       STX    $B1     
       INC    $B1     
       LDA    #$D7    
       STA    $A3,X   
       JSR    LF73C   
       AND    #$07    
       TAX            
       JSR    LF73C   
       AND    #$07    
       TAY            
       SEC            
       LDA    #$00    
LF539: ROL            
       DEY            
       BPL    LF539   
       EOR    $D7,X   
       STA    $D7,X   
LF541: LDX    #$01    
       BIT    $CB     
       BMI    LF548   
       DEX            
LF548: LDA    $B7,X   
       BEQ    LF554   
       INC    $B7,X   
       BEQ    LF554   
       STA    $AF,X   
       BNE    LF59E   
LF554: LDA    $AF,X   
       STA    $B5,X   
       BEQ    LF59E   
       BIT    $CB     
       BVS    LF577   
       STX    $CF     
       TAY            
       JSR    LF702   
       DEX            
       DEX            
       TXA            
       LDX    $CF     
       CMP    $B1     
       BEQ    LF58F   
       LDA    #$0D    
       STA    $B5,X   
       LDA    #$E0    
       STA    $B7,X   
       BNE    LF59E   
LF577: STA    $CF     
       CMP    #$0B    
       BNE    LF581   
       LDA    #$00    
       STA    $CF     
LF581: LDA    $C9,X   
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $CF     
       STA    $C9,X   
       CMP    $B1     
       BNE    LF59E   
LF58F: JSR    LF76B   
       LDA    $B1     
       STA    $C8     
       LDA    #$80    
       STA    $C1     
       LDA    #$A0    
       STA    $B4     
LF59E: DEX            
       BPL    LF548   
LF5A1: LDX    #$01    
LF5A3: LDA    $C6,X   
       AND    #$0F    
       STA    $CF     
       ASL            
       ASL            
       CLC            
       ADC    $CF     
       STA    $BA,X   
       LDA    $C6,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $CF     
       LSR            
       LSR            
       CLC            
       ADC    $CF     
       STA    $BC,X   
       LDA    #$0F    
       LDY    $B5,X   
       STY    AUDV0,X 
       BEQ    LF5E0   
       CPY    #$0D    
       BEQ    LF5D5   
       LDA    #$0C    
       BCS    LF5D5   
       CPY    #$0A    
       BCC    LF5D5   
       LDA    #$0A    
LF5D5: STA    AUDC0,X 
       LDA    LF7E7,Y 
       STA    AUDF0,X 
       LDA    #$08    
       STA    AUDV0,X 
LF5E0: DEX            
       BPL    LF5A3   
       LDA    $C8     
       AND    #$0F    
       STA    $A8     
       LDA    $C8     
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF5F3   
       LDA    #$0A    
LF5F3: STA    $A1     
       LDA    LF7DF   
       STA    $93     
       LDA    LF7E2   
       STA    $9A     
       RTS            

LF600: .byte $3E,$41,$41,$41,$41,$41,$41,$3E,$08,$18,$28,$08,$08,$08,$08,$3E
       .byte $3E,$41,$01,$02,$1C,$20,$40,$7F,$3E,$41,$01,$1E,$01,$01,$41,$3E
       .byte $06,$0A,$12,$22,$42,$7F,$02,$02,$7F,$40,$7C,$02,$01,$01,$42,$3C
       .byte $1E,$20,$40,$7E,$41,$41,$41,$3E,$7F,$41,$02,$04,$08,$10,$10,$10
       .byte $3E,$41,$41,$3E,$41,$41,$41,$3E,$3E,$41,$41,$41,$3F,$01,$02,$3C
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$70,$20,$3C,$16,$1E,$03,$00,$00
       .byte $00,$00,$00,$80,$F0,$C5,$77,$05,$44,$45,$45,$55,$55,$55,$29,$29
       .byte $97,$57,$52,$52,$D2,$52,$52,$52,$1E,$21,$40,$40,$4F,$41,$21,$1E
       .byte $1C,$2A,$49,$4F,$41,$22,$1C,$00,$1C,$22,$41,$4F,$49,$2A,$1C,$00
       .byte $1C,$22,$41,$79,$49,$2A,$1C,$00,$1C,$2A,$49,$79,$41,$22,$1C,$00
       .byte $7F,$49,$49,$79,$41,$41,$7F,$00,$7F,$41,$41,$79,$49,$49,$7F,$00
       .byte $7F,$41,$41,$4F,$49,$49,$7F,$00,$7F,$49,$49,$4F,$41,$41,$7F,$00
       .byte $7F,$41,$41,$41,$41,$41,$7F,$00,$7F,$41,$41,$7F,$41,$41,$7F,$00
       .byte $7F,$49,$49,$49,$49,$49,$7F,$00,$7F,$63,$55,$49,$55,$63,$7F,$00
       .byte $1C,$22,$41,$7F,$41,$22,$1C,$00,$1C,$2A,$49,$49,$49,$2A,$1C,$00
       .byte $1C,$63,$55,$49,$55,$63,$1C,$00,$1C,$22,$41,$49,$41,$22,$1C,$00
LF700: LDY    $B5     
LF702: DEY            
       CPY    #$0C    
       BCS    LF716   
       LDX    #$00    
       TYA            
LF70A: INX            
       SEC            
       SBC    #$03    
       BPL    LF70A   
       INX            
       INX            
       CLC            
       ADC    #$03    
       TAY            
LF716: RTS            

LF717: LDA    #$99    
       BNE    LF71D   
LF71B: LDA    #$01    
LF71D: SED            
       CLC            
       ADC    $C6,X   
       STA    $C6,X   
       CLD            
       LDA    $C6,X   
       RTS            

LF727: LDA    $B5     
       STA    $A4     
       LDA    LF7E5   
       STA    $96     
       RTS            

LF731: LDA    $C2     
       STA    $C1     
       LDA    #$00    
       STA    $B1     
       STA    $C0     
       RTS            

LF73C: LSR    $D6     
       ROL            
       EOR    $D6     
       LSR            
       LDA    $D6     
       BCS    LF74A   
       ORA    #$20    
       STA    $D6     
LF74A: RTS            

LF74B: CPY    #$03    
       BCS    LF76A   
       STA    $A1,X   
       CMP    #$0A    
       BEQ    LF75E   
       CMP    #$0F    
       BNE    LF75B   
       LDA    #$FF    
LF75B: CLC            
       ADC    #$01    
LF75E: STA    $A8,X   
       LDA    LF7DE,Y 
       STA    $93,X   
       LDA    LF7E1,Y 
       STA    $9A,X   
LF76A: RTS            

LF76B: LDY    $C8     
       LDA    SWCHB   
       AND    LF7FE,X 
       BEQ    LF77E   
       TYA            
       LSR            
       TAY            
       CMP    #$08    
       BCC    LF77E   
       LDY    #$05    
LF77E: TYA            
       JMP    LF71D   
LF782: LDX    $BF     
LF784: LDA    $D7,X   
       STA    $A3,X   
       DEX            
       BPL    LF784   
       INX            
       RTS            

LF78D: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF7BF: .byte $26,$84,$8A,$36,$94,$9A,$56,$A4,$AA,$00,$0C,$00
LF7CB: .byte $00,$04,$80,$84,$40,$44,$C0,$C4,$01,$09,$02,$12,$82,$92,$42,$56
       .byte $C2,$D6,$60
LF7DE: .byte $D3
LF7DF: .byte $B5,$97
LF7E1: .byte $44
LF7E2: .byte $26,$08
LF7E4: .byte $93
LF7E5: .byte $66
LF7E6: .byte $48
LF7E7: .byte $0C,$0D,$0F,$10,$12,$14,$17,$18,$1B,$1F,$06,$07,$08,$06
LF7F5: .byte $06,$09
LF7F7: .byte $07,$0F
LF7F9: .byte $3C,$39,$38,$00,$F0
LF7FE: .byte $40,$80
