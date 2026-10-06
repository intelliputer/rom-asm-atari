; Disassembly of roms/Brain Games (2).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Brain Games (2).bin
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
LF7FE: .byte $40,$80,$78,$D8,$A9,$00,$AA,$95,$00,$E8,$D0,$FB,$A2,$FF,$9A,$8E
       .byte $81,$02,$8E,$95,$02,$4C,$C0,$F1,$A9,$42,$85,$02,$85,$01,$85,$02
       .byte $85,$02,$85,$02,$85,$00,$85,$02,$85,$02,$A9,$00,$85,$02,$85,$00
       .byte $A9,$2D,$8D,$96,$02,$E6,$8E,$20,$7C,$F2,$AD,$84,$02,$D0,$FB,$85
       .byte $02,$85,$01,$85,$D1,$85,$D2,$A2,$06,$86,$0A,$85,$02,$A5,$D1,$85
       .byte $0E,$A4,$BC,$B9,$8D,$F7,$29,$F0,$85,$D1,$A4,$BA,$B9,$8D,$F7,$29
       .byte $0F,$05,$D1,$85,$D1,$A5,$D2,$85,$0E,$A4,$BD,$B9,$8D,$F7,$29,$F0
       .byte $85,$D2,$A4,$BB,$B9,$8D,$F7,$25,$B9,$85,$02,$05,$D2,$85,$D2,$A5
       .byte $D1,$85,$0E,$CA,$F0,$0F,$E6,$BA,$E6,$BC,$E6,$BB,$E6,$BD,$A5,$D2
       .byte $85,$0E,$4C,$49,$F0,$86,$0E,$86,$D5,$86,$04,$85,$02,$A9,$01,$85
       .byte $0A,$A9,$FF,$85,$D4,$D0,$3B,$85,$02,$B1,$CF,$85,$1B,$B1,$D1,$85
       .byte $1C,$B5,$80,$85,$0E,$B5,$87,$85,$0F,$85,$02,$C8,$C0,$08,$90,$E7
       .byte $85,$02,$A9,$00,$85,$1B,$85,$1C,$C0,$08,$F0,$E5,$85,$0E,$85,$0F
       .byte $E8,$86,$D5,$E0,$02,$D0,$04,$A5,$C3,$85,$04,$E0,$07,$D0,$03,$4C
       .byte $68,$F1,$85,$02,$B5,$93,$85,$20,$29,$0F,$A8,$88,$10,$FD,$85,$10
       .byte $85,$02,$B5,$9A,$85,$21,$29,$0F,$A8,$88,$10,$FD,$85,$11,$85,$02
       .byte $85,$2A,$A9,$F6,$85,$D0,$85,$D2,$B5,$A1,$10,$06,$A0,$00,$84,$D0
       .byte $F0,$03,$0A,$0A,$0A,$85,$CF,$B5,$A8,$10,$06,$A0,$00,$84,$D2,$F0
       .byte $03,$0A,$0A,$0A,$85,$D1,$A6,$D4,$10,$0D,$E8,$86,$91,$86,$92,$86
       .byte $D4,$A9,$EE,$85,$D3,$D0,$27,$E0,$0C,$B0,$26,$A0,$02,$E6,$D4,$BE
       .byte $F9,$F7,$B5,$00,$30,$04,$A5,$D4,$85,$91,$98,$F0,$01,$E8,$B5,$01
       .byte $30,$04,$A5,$D4,$85,$92,$88,$10,$E4,$38,$26,$D3,$A5,$D3,$8D,$80
       .byte $02,$85,$02,$A6,$D5,$A0,$FF,$4C,$AF,$F0,$A9,$22,$8D,$96,$02,$AD
       .byte $82,$02,$6A,$B0,$27,$A9,$FF,$85,$8F,$85,$AF,$A9,$00,$A2,$19,$95
       .byte $B1,$CA,$10,$FB,$A9,$06,$85,$B2,$A5,$CD,$D0,$06,$A9,$04,$85,$C6
       .byte $85,$C7,$24,$CB,$10,$5C,$A9,$0F,$85,$B9,$D0,$56,$A5,$8E,$D0,$06
       .byte $E6,$C4,$D0,$02,$85,$8F,$29,$1F,$D0,$02,$85,$C5,$AD,$82,$02,$29
       .byte $02,$F0,$05,$85,$C5,$4C,$3C,$F2,$24,$C5,$30,$F9,$A9,$FF,$85,$C5
       .byte $E6,$90,$A5,$CE,$85,$C6,$A2,$00,$86,$C7,$86,$B9,$86,$8F,$86,$8E
       .byte $A5,$90,$C9,$13,$90,$04,$86,$C6,$86,$90,$20,$1B,$F7,$85,$CE,$A6
       .byte $90,$BD,$CB,$F7,$85,$CB,$29,$03,$85,$CD,$A5,$CB,$4A,$4A,$29,$01
       .byte $85,$CC,$A2,$0D,$A9,$00,$95,$93,$95,$80,$A9,$0A,$95,$A1,$CA,$10
       .byte $F3,$A9,$80,$85,$C1,$85,$B4,$A9,$E0,$85,$87,$85,$8A,$A6,$CC,$E8
       .byte $E8,$E8,$86,$BF,$A4,$CD,$D0,$05,$CA,$24,$CB,$70,$19,$A9,$E0,$C0
       .byte $02,$F0,$06,$A9,$07,$95,$82,$A9,$E7,$95,$89,$CA,$10,$EF,$C0,$00
       .byte $D0,$0C,$84,$82,$84,$89,$A9,$07,$85,$81,$A9,$E7,$85,$88,$AD,$82
       .byte $02,$A2,$07,$A0,$09,$29,$08,$F0,$09,$A2,$F7,$A5,$CD,$0A,$18,$65
       .byte $CD,$A8,$A5,$8F,$49,$FF,$30,$02,$A2,$FF,$25,$C4,$85,$D2,$86,$D1
       .byte $A2,$02,$B9,$BF,$F7,$45,$C1,$45,$D2,$25,$D1,$95,$07,$C8,$CA,$10
       .byte $F1,$85,$06,$20,$3C,$F7,$AD,$84,$02,$D0,$FB,$4C,$16,$F0,$A5,$8F
       .byte $AA,$F0,$63,$A5,$C1,$10,$06,$C6,$B4,$D0,$5F,$85,$AF,$A5,$CB,$29
       .byte $23,$D0,$0F,$A6,$B0,$A4,$C1,$30,$28,$F0,$28,$A6,$92,$A4,$AF,$4C
       .byte $C8,$F2,$29,$20,$D0,$1B,$24,$C1,$70,$17,$C6,$B3,$D0,$13,$A2,$78
       .byte $A5,$CB,$29,$10,$F0,$02,$A2,$1E,$86,$B3,$A2,$02,$20,$17,$F7,$F0
       .byte $0E,$A6,$92,$A5,$91,$A8,$45,$AF,$D0,$05,$8A,$45,$B0,$F0,$1B,$84
       .byte $AF,$86,$B0,$86,$C4,$A5,$CD,$F0,$03,$4C,$ED,$F3,$A5,$CB,$29,$20
       .byte $F0,$0B,$85,$C1,$A5,$91,$86,$B6,$85,$B5,$4C,$A1,$F5,$24,$CB,$50
       .byte $06,$A9,$0A,$85,$A4,$D0,$08,$20,$00,$F7,$A9,$0A,$20,$4B,$F7,$24
       .byte $C1,$30,$03,$4C,$60,$F3,$A9,$12,$85,$B4,$A2,$01,$A0,$01,$A9,$0D
       .byte $20,$4B,$F7,$A5,$B5,$F0,$04,$A9,$00,$F0,$CD,$A5,$B1,$C5,$BE,$90
       .byte $06,$D0,$3C,$A6,$C0,$F0,$08,$AA,$B5,$D7,$85,$B5,$4C,$47,$F3,$A6
       .byte $CC,$20,$3C,$F7,$3D,$F7,$F7,$DD,$F5,$F7,$90,$05,$38,$FD,$F5,$F7
       .byte $18,$69,$01,$A6,$B1,$85,$B5,$95,$D7,$E6,$B1,$24,$CB,$50,$05,$20
       .byte $27,$F7,$D0,$08,$20,$00,$F7,$A9,$0B,$20,$4B,$F7,$4C,$A1,$F5,$20
       .byte $31,$F7,$A2,$01,$A5,$C1,$0A,$A8,$A9,$0F,$20,$4B,$F7,$A6,$C1,$A5
       .byte $C0,$F0,$0B,$20,$17,$F7,$D0,$23,$A9,$00,$85,$8F,$F0,$6E,$A5,$BE
       .byte $C5,$B1,$B0,$35,$24,$CB,$10,$06,$A5,$C2,$49,$01,$85,$C2,$E6,$BE
       .byte $A2,$02,$20,$1B,$F7,$A5,$BE,$C9,$20,$B0,$DD,$A9,$80,$85,$C1,$0A
       .byte $85,$B1,$A6,$C2,$AD,$82,$02,$3D,$FE,$F7,$F0,$08,$A5,$C0,$D0,$04
       .byte $A5,$BE,$85,$B1,$A9,$70,$4C,$06,$F3,$B5,$AF,$85,$B5,$F0,$9D,$38
       .byte $E9,$01,$A6,$CC,$DD,$F5,$F7,$B0,$93,$A6,$B1,$B5,$D7,$C5,$B5,$F0
       .byte $08,$A9,$0D,$85,$B5,$85,$C0,$D0,$13,$24,$CB,$50,$05,$20,$27,$F7
       .byte $D0,$08,$20,$00,$F7,$A9,$0B,$20,$4B,$F7,$E6,$B1,$4C,$A1,$F5,$24
       .byte $C1,$30,$1E,$A4,$C8,$F0,$07,$C9,$01,$F0,$5A,$4C,$41,$F5,$C9,$01
       .byte $D0,$03,$20,$82,$F7,$A5,$B1,$85,$C8,$A9,$80,$85,$C1,$85,$B4,$D0
       .byte $50,$C6,$B2,$D0,$06,$A9,$00,$85,$8F,$F0,$46,$46,$C1,$A9,$11,$85
       .byte $C8,$A9,$01,$85,$B3,$A6,$BF,$C5,$CD,$F0,$03,$4C,$D7,$F4,$20,$3C
       .byte $F7,$29,$0F,$18,$69,$10,$95,$D7,$95,$A3,$AD,$E5,$F7,$95,$95,$A9
       .byte $0A,$95,$AA,$AD,$E6,$F7,$95,$9C,$CA,$10,$E3,$A5,$CB,$29,$08,$F0
       .byte $02,$A9,$5A,$85,$B5,$24,$C1,$50,$34,$C6,$B5,$F0,$07,$A9,$FF,$85
       .byte $AF,$4C,$A1,$F5,$46,$C1,$A6,$BF,$A9,$FF,$95,$DD,$CA,$10,$FB,$A4
       .byte $BF,$20,$3C,$F7,$29,$03,$AA,$B5,$DD,$10,$F6,$B9,$D7,$00,$95,$DD
       .byte $95,$A3,$AD,$E4,$F7,$95,$95,$88,$10,$E7,$20,$31,$F7,$A5,$BF,$C5
       .byte $B1,$B0,$17,$A6,$C0,$F0,$05,$20,$82,$F7,$F0,$03,$20,$6B,$F7,$A9
       .byte $80,$85,$C1,$A9,$A0,$85,$B4,$4C,$A1,$F5,$A5,$AF,$85,$B5,$F0,$F7
       .byte $20,$00,$F7,$CA,$CA,$CA,$A9,$0A,$D5,$A3,$F0,$EB,$95,$A3,$B5,$DD
       .byte $A6,$B1,$95,$AA,$D5,$D7,$F0,$08,$E6,$C0,$A9,$0D,$85,$B5,$D0,$05
       .byte $A2,$00,$20,$1B,$F7,$E6,$B1,$D0,$CE,$20,$31,$F7,$20,$3C,$F7,$29
       .byte $0F,$18,$69,$10,$AC,$DF,$F7,$24,$CB,$50,$13,$20,$3C,$F7,$29,$07
       .byte $F8,$18,$69,$01,$A8,$65,$B1,$85,$B1,$D8,$98,$AC,$E5,$F7,$95,$A3
       .byte $94,$95,$CA,$10,$DF,$24,$CB,$70,$3A,$A0,$05,$84,$C3,$0A,$0A,$0A
       .byte $A8,$A2,$00,$B9,$00,$F6,$95,$D7,$C8,$E8,$E0,$08,$90,$F5,$20,$3C
       .byte $F7,$29,$03,$AA,$86,$B1,$E6,$B1,$A9,$D7,$95,$A3,$20,$3C,$F7,$29
       .byte $07,$AA,$20,$3C,$F7,$29,$07,$A8,$38,$A9,$00,$2A,$88,$10,$FC,$55
       .byte $D7,$95,$D7,$A2,$01,$24,$CB,$30,$01,$CA,$B5,$B7,$F0,$08,$F6,$B7
       .byte $F0,$04,$95,$AF,$D0,$4A,$B5,$AF,$95,$B5,$F0,$44,$24,$CB,$70,$19
       .byte $86,$CF,$A8,$20,$02,$F7,$CA,$CA,$8A,$A6,$CF,$C5,$B1,$F0,$22,$A9
       .byte $0D,$95,$B5,$A9,$E0,$95,$B7,$D0,$27,$85,$CF,$C9,$0B,$D0,$04,$A9
       .byte $00,$85,$CF,$B5,$C9,$0A,$0A,$0A,$0A,$05,$CF,$95,$C9,$C5,$B1,$D0
       .byte $0F,$20,$6B,$F7,$A5,$B1,$85,$C8,$A9,$80,$85,$C1,$A9,$A0,$85,$B4
       .byte $CA,$10,$A7,$A2,$01,$B5,$C6,$29,$0F,$85,$CF,$0A,$0A,$18,$65,$CF
       .byte $95,$BA,$B5,$C6,$29,$F0,$4A,$4A,$85,$CF,$4A,$4A,$18,$65,$CF,$95
       .byte $BC,$A9,$0F,$B4,$B5,$94,$19,$F0,$19,$C0,$0D,$F0,$0A,$A9,$0C,$B0
       .byte $06,$C0,$0A,$90,$02,$A9,$0A,$95,$15,$B9,$E7,$F7,$95,$17,$A9,$08
       .byte $95,$19,$CA,$10,$C0,$A5,$C8,$29,$0F,$85,$A8,$A5,$C8,$4A,$4A,$4A
       .byte $4A,$D0,$02,$A9,$0A,$85,$A1,$AD,$DF,$F7,$85,$93,$AD,$E2,$F7,$85
       .byte $9A,$60,$3E,$41,$41,$41,$41,$41,$41,$3E,$08,$18,$28,$08,$08,$08
       .byte $08,$3E,$3E,$41,$01,$02,$1C,$20,$40,$7F,$3E,$41,$01,$1E,$01,$01
       .byte $41,$3E,$06,$0A,$12,$22,$42,$7F,$02,$02,$7F,$40,$7C,$02,$01,$01
       .byte $42,$3C,$1E,$20,$40,$7E,$41,$41,$41,$3E,$7F,$41,$02,$04,$08,$10
       .byte $10,$10,$3E,$41,$41,$3E,$41,$41,$41,$3E,$3E,$41,$41,$41,$3F,$01
       .byte $02,$3C,$00,$00,$00,$00,$00,$00,$00,$00,$70,$20,$3C,$16,$1E,$03
       .byte $00,$00,$00,$00,$00,$80,$F0,$C5,$77,$05,$44,$45,$45,$55,$55,$55
       .byte $29,$29,$97,$57,$52,$52,$D2,$52,$52,$52,$1E,$21,$40,$40,$4F,$41
       .byte $21,$1E,$1C,$2A,$49,$4F,$41,$22,$1C,$00,$1C,$22,$41,$4F,$49,$2A
       .byte $1C,$00,$1C,$22,$41,$79,$49,$2A,$1C,$00,$1C,$2A,$49,$79,$41,$22
       .byte $1C,$00,$7F,$49,$49,$79,$41,$41,$7F,$00,$7F,$41,$41,$79,$49,$49
       .byte $7F,$00,$7F,$41,$41,$4F,$49,$49,$7F,$00,$7F,$49,$49,$4F,$41,$41
       .byte $7F,$00,$7F,$41,$41,$41,$41,$41,$7F,$00,$7F,$41,$41,$7F,$41,$41
       .byte $7F,$00,$7F,$49,$49,$49,$49,$49,$7F,$00,$7F,$63,$55,$49,$55,$63
       .byte $7F,$00,$1C,$22,$41,$7F,$41,$22,$1C,$00,$1C,$2A,$49,$49,$49,$2A
       .byte $1C,$00,$1C,$63,$55,$49,$55,$63,$1C,$00,$1C,$22,$41,$49,$41,$22
       .byte $1C,$00,$A4,$B5,$88,$C0,$0C,$B0,$0F,$A2,$00,$98,$E8,$38,$E9,$03
       .byte $10,$FA,$E8,$E8,$18,$69,$03,$A8,$60,$A9,$99,$D0,$02,$A9,$01,$F8
       .byte $18,$75,$C6,$95,$C6,$D8,$B5,$C6,$60,$A5,$B5,$85,$A4,$AD,$E5,$F7
       .byte $85,$96,$60,$A5,$C2,$85,$C1,$A9,$00,$85,$B1,$85,$C0,$60,$46,$D6
       .byte $2A,$45,$D6,$4A,$A5,$D6,$B0,$04,$09,$20,$85,$D6,$60,$C0,$03,$B0
       .byte $1B,$95,$A1,$C9,$0A,$F0,$09,$C9,$0F,$D0,$02,$A9,$FF,$18,$69,$01
       .byte $95,$A8,$B9,$DE,$F7,$95,$93,$B9,$E1,$F7,$95,$9A,$60,$A4,$C8,$AD
       .byte $82,$02,$3D,$FE,$F7,$F0,$09,$98,$4A,$A8,$C9,$08,$90,$02,$A0,$05
       .byte $98,$4C,$1D,$F7,$A6,$BF,$B5,$D7,$95,$A3,$CA,$10,$F9,$E8,$60,$0E
       .byte $0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22
       .byte $66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE
       .byte $AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22
       .byte $EE,$26,$84,$8A,$36,$94,$9A,$56,$A4,$AA,$00,$0C,$00,$00,$04,$80
       .byte $84,$40,$44,$C0,$C4,$01,$09,$02,$12,$82,$92,$42,$56,$C2,$D6,$60
       .byte $D3,$B5,$97,$44,$26,$08,$93,$66,$48,$0C,$0D,$0F,$10,$12,$14,$17
       .byte $18,$1B,$1F,$06,$07,$08,$06,$06,$09,$07,$0F,$3C,$39,$38,$00,$F0
       .byte $40,$80
