; Disassembly of roms/Eliladdr.bin
; Disassembled Tue Oct  6 15:21:10 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Eliladdr.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LF496   =   $F496

       ORG $F000

START:
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF006: STA    VSYNC,X 
       INX            
       BNE    LF006   
       LDA    #$FE    
       LDX    #$A5    
       LDY    #$B4    
LF011: STA    VSYNC,X 
       DEX            
       STY    VSYNC,X 
       DEX            
       CPX    #$85    
       BCS    LF011   
       JSR    LFFAC   
       LDA    #$9B    
       JSR    LF4EB   
LF023: LDA    #$FF    
       TAX            
       TXS            
       INX            
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       STX    NUSIZ0  
       STX    NUSIZ1  
       STX    COLUPF  
       BIT    $AE     
       BMI    LF06A   
       LDA    $A4     
       CMP    #$96    
       BEQ    LF066   
       LDA    $D6     
       CMP    #$0A    
       BCC    LF05F   
       LDX    #$09    
       STX    $CC     
       SEC            
       SBC    $CC     
       STA    $CD     
       JMP    LF06A   
LF05F: STA    $CC     
       STX    $CD     
       JMP    LF06A   
LF066: STX    $CC     
       STX    $CD     
LF06A: INC    $80     
       INC    $D5     
       LDA    $D5     
       CMP    #$3C    
       BNE    LF07A   
       INC    $D4     
       LDA    #$00    
       STA    $D5     
LF07A: LDA    $CA     
       JSR    LF471   
       PHA            
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       TAX            
       LDA    LFF00,X 
       STA    $DF     
       PLA            
       AND    #$0F    
       TAX            
       LDA    LFF00,X 
       STA    $E1     
       LDA    $C9     
       BEQ    LF0A7   
       CMP    #$20    
       BCS    LF0A7   
       INC    $C9     
       LDA    $C9     
       AND    #$1F    
       ORA    #$01    
       STA    $C9     
LF0A7: BIT    $E3     
       BPL    LF0B6   
       LDA    $D3     
       BPL    LF0B6   
       JSR    LF4A3   
       LDA    #$00    
       STA    $E3     
LF0B6: DEC    $D3     
       BPL    LF0E4   
       LDX    $D1     
       STX    $CF     
       LDX    #$1F    
       LDY    $D2     
       LDA    ($CF),Y 
       CMP    #$FF    
       BNE    LF0CE   
       LDX    #$00    
       STX    AUDV0   
       BEQ    LF0E4   
LF0CE: CMP    #$00    
       BNE    LF0D3   
       TAX            
LF0D3: STX    AUDV0   
       STA    AUDF0   
       INY            
       LDA    ($CF),Y 
       STA    AUDC0   
       INY            
       LDA    ($CF),Y 
       STA    $D3     
       INY            
       STY    $D2     
LF0E4: LDA    $AE     
       AND    #$38    
       BNE    LF0ED   
       JMP    LF189   
LF0ED: LDA    $DA     
       STA    $82     
       CLC            
       ADC    #$08    
       STA    $83     
       LDA    $AE     
       AND    #$18    
       BNE    LF125   
       LDA    $C1     
       CMP    #$32    
       BNE    LF112   
       LDA    $D9     
       CLC            
       ADC    #$08    
       STA    $D9     
       LDA    $D3     
       BPL    LF112   
       LDA    #$F7    
       JSR    LF4EB   
LF112: DEC    $C1     
       BNE    LF122   
       LDA    #$41    
       STA    $AE     
LF11A: LDA    #$1E    
       STA    $C1     
       LDA    #$4C    
       STA    $DA     
LF122: JMP    LF5AE   
LF125: AND    #$10    
       BNE    LF133   
       LDA    $D9     
       CMP    #$18    
       BCC    LF177   
       DEC    $D9     
       BNE    LF122   
LF133: LDA    $DE     
       BMI    LF177   
       CMP    #$74    
       BCS    LF13F   
       BIT    INPT5   
       BPL    LF17B   
LF13F: LDA    $DB     
       BNE    LF151   
       LDA    $D9     
       CMP    #$18    
       BCC    LF122   
       DEC    $D9     
       LDA    #$01    
       STA    $DB     
       BNE    LF122   
LF151: BPL    LF169   
       DEC    $D9     
       LDA    $D9     
       CMP    #$18    
       BCS    LF122   
       LDA    #$ED    
       JSR    LF4EB   
       LDA    #$01    
       STA    $DB     
       DEC    $DE     
       JMP    LF122   
LF169: INC    $D9     
       LDA    $D9     
       CMP    #$32    
       BCC    LF122   
       LDA    #$FF    
       STA    $DB     
       BNE    LF122   
LF177: BIT    INPT5   
       BMI    LF122   
LF17B: LDA    #$AA    
       JSR    LF4EB   
       LDA    #$00    
       STA    $AE     
       STA    $DB     
       JMP    LF11A   
LF189: LDA    SWCHB   
       AND    #$02    
       BNE    LF19D   
       STA    $AE     
       DEC    $C1     
       BPL    LF19D   
       LDA    #$1E    
       STA    $C1     
       JSR    LF4C8   
LF19D: LDA    $AE     
       BEQ    LF1A4   
       JMP    LF240   
LF1A4: STA    $CA     
       STA    $CB     
       LDA    #$17    
       STA    $D9     
       LDA    #$4C    
       STA    $DA     
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF1BD   
       LDA    #$00    
       STA    $C6     
       BEQ    LF1D1   
LF1BD: BIT    $C6     
       BMI    LF1D1   
       LDA    #$FF    
       STA    $C6     
       INC    $C5     
       LDX    $C5     
       CPX    #$08    
       BCC    LF1D1   
       LDX    #$00    
       STX    $C5     
LF1D1: LDA    $AE     
       BNE    LF240   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF1F2   
       LDA    #$B4    
       LDX    #$9E    
LF1E0: STA    VSYNC,X 
       DEX            
       DEX            
       CPX    #$8E    
       BNE    LF1E0   
       LDA    #$32    
       STA    $C1     
       LDA    #$40    
       STA    $AE     
       BNE    LF240   
LF1F2: LDA    $C4     
       BIT    SWCHB   
       BMI    LF209   
       LDX    #$A5    
       STX    $A4     
       CMP    #$0A    
       BCS    LF217   
       LDX    #$00    
       STX    $C3     
       ADC    #$0A    
       BNE    LF217   
LF209: LDX    #$96    
       STX    $A4     
       CMP    #$0A    
       BCC    LF217   
       LDX    #$00    
       STX    $C3     
       SBC    #$0A    
LF217: STA    $C4     
       CMP    #$0A    
       BCC    LF21F   
       SBC    #$0A    
LF21F: STA    $BC     
       CLC            
       ROL            
       CLC            
       ADC    $BC     
       SEC            
       ADC    $C3     
       JSR    LF471   
       STA    $B2     
       JSR    LFB6E   
       LDX    $C5     
       LDA    LFD08,X 
       STA    $96     
       LDA    LFD00,X 
       STA    $94     
       JMP    LF5AE   
LF240: LDA    $AE     
       AND    #$7F    
       ORA    #$01    
       STA    $AE     
       LDY    #$48    
       LDX    #$51    
       LDA    $C4     
       CMP    #$04    
       BCC    LF25A   
       CMP    #$0A    
       BCC    LF26F   
       CMP    #$10    
       BCS    LF26F   
LF25A: LDA    SWCHB   
       AND    #$08    
       BNE    LF26F   
       STA    $AC     
       STA    $D4     
       LDA    $AE     
       ORA    #$80    
       STA    $AE     
       LDY    #$28    
       LDX    #$5A    
LF26F: STY    $82     
       STX    $83     
       BIT    $AE     
       BMI    LF27A   
       JMP    LF311   
LF27A: BIT    INPT4   
       BMI    LF2BB   
       DEC    $C1     
       BNE    LF2BB   
       LDA    #$19    
       STA    $C1     
       LDA    $A4     
       CMP    #$A5    
       BEQ    LF2A6   
       LDA    $AF     
       CMP    $CC     
       BEQ    LF296   
       INC    $CC     
       BNE    LF29E   
LF296: LDA    $B0     
       CMP    $CD     
       BEQ    LF2BB   
       INC    $CD     
LF29E: LDA    #$ED    
       JSR    LF4EB   
       JMP    LF2BB   
LF2A6: LDA    $CC     
       CLC            
       ADC    $CD     
       CMP    $D8     
       BEQ    LF2BB   
       LDA    $CD     
       BEQ    LF2B7   
       DEC    $CD     
       BPL    LF29E   
LF2B7: DEC    $CC     
       BPL    LF29E   
LF2BB: LDX    #$00    
       STX    $B6     
       STX    $B7     
       STX    $B8     
       STX    $B9     
       STX    $BA     
       STX    $BB     
       LDA    #$D6    
       STA    $A0     
       STA    $A2     
       LDX    $CC     
       BNE    LF2DA   
       LDA    #$B4    
       STA    $A0     
       TXA            
       BEQ    LF2E2   
LF2DA: LDA    LFF0A,X 
       LDX    #$00    
       JSR    LF2F8   
LF2E2: LDX    $CD     
       BNE    LF2ED   
       LDA    #$B4    
       STA    $A2     
       TXA            
       BEQ    LF2F5   
LF2ED: LDA    LFF0A,X 
       LDX    #$03    
       JSR    LF2F8   
LF2F5: JMP    LF5AE   
LF2F8: CLC            
       ROR            
       ROL    $B6,X   
       CLC            
       ROR            
       ROL    $B6,X   
       CLC            
       ROR            
       ROL    $B7,X   
       CLC            
       ROR            
       ROL    $B7,X   
       CLC            
       ROR            
       ROL    $B8,X   
       CLC            
       ROR            
       ROL    $B8,X   
       RTS            

LF311: BIT    INPT5   
       BPL    LF342   
       LDA    SWCHA   
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF324   
       CMP    #$07    
       BEQ    LF334   
       BNE    LF342   
LF324: DEC    $AB     
       DEC    $AB     
       LDA    $AB     
       CMP    #$1E    
       BCS    LF342   
       LDA    #$1E    
       STA    $AB     
       BNE    LF342   
LF334: INC    $AB     
       INC    $AB     
       LDA    $AB     
       CMP    #$7D    
       BCC    LF342   
       LDA    #$7D    
       STA    $AB     
LF342: LDA    $AE     
       ROL            
       BPL    LF35E   
       LDA    SWCHB   
       AND    #$40    
       BNE    LF35A   
       LDA    $D4     
       CMP    #$05    
       BCC    LF35E   
       LDA    #$00    
       STA    $D4     
       BEQ    LF361   
LF35A: BIT    INPT4   
       BPL    LF361   
LF35E: JMP    LF512   
LF361: BIT    INPT5   
       BPL    LF369   
       BIT    $C8     
       BPL    LF36C   
LF369: JMP    LF5AE   
LF36C: LDA    $AE     
       AND    #$BF    
       STA    $AE     
       LDA    $80     
       CLC            
       ADC    INTIM   
       JSR    LF40F   
       STA    $D6     
       LDA    $C7     
       ADC    INTIM   
       ADC    $C7     
       ADC    #$01    
       STA    $C7     
       JSR    LF420   
       STA    $D7     
       LDA    #$FF    
       STA    $C8     
       LDA    $C4     
       CMP    #$0A    
       BCS    LF3A9   
       LDA    $D6     
       CLC            
       ADC    $D7     
       STA    $D8     
       JSR    LF471   
       STA    $B1     
       JSR    LF3C9   
       JMP    LF4F4   
LF3A9: LDA    $D7     
       CMP    $D6     
       BCC    LF3B7   
       LDA    $D6     
       LDX    $D7     
       STA    $D7     
       STX    $D6     
LF3B7: LDA    $D6     
       SEC            
       SBC    $D7     
       STA    $D8     
       JSR    LF471   
       STA    $B1     
       JSR    LF3C9   
       JMP    LF4F4   
LF3C9: LDA    #$00    
       LDX    #$03    
LF3CD: STA    $B2,X   
       DEX            
       BPL    LF3CD   
       LDA    $80     
       ORA    INTIM   
       ADC    $B1     
       ADC    $AF     
       ADC    $D9     
       ADC    INTIM   
       AND    #$03    
       TAY            
       STY    $BC     
       LDA    $B1     
       STA.wy $00B2,Y 
       LDY    #$03    
LF3EC: CPY    $BC     
       BEQ    LF407   
       LDA    $B1     
       BNE    LF3FE   
       CPY    #$02    
       BNE    LF3FE   
       SED            
       CLC            
       ADC    #$02    
       BNE    LF403   
LF3FE: SED            
       CLC            
       ADC    LF40B,Y 
LF403: CLD            
       STA.wy $00B2,Y 
LF407: DEY            
       BPL    LF3EC   
       RTS            

LF40B: .byte $03,$04,$99,$01
LF40F: STA    $BC     
       LDY    $C4     
       LDA    LF449,Y 
       STA    $BD     
       LDA    #$00    
       STA    $C0     
       JSR    LF42D   
       RTS            

LF420: STA    $BC     
       LDY    $C4     
       LDA    LF45D,Y 
       STA    $BD     
       LDA    #$00    
       STA    $C0     
LF42D: LDX    #$08    
LF42F: ASL            
       ROL    $C0     
       ASL    $BD     
       BCC    LF43D   
       CLC            
       ADC    $BC     
       BCC    LF43D   
       INC    $C0     
LF43D: DEX            
       BNE    LF42F   
       LDA    $BF     
       BPL    LF446   
       INC    $C0     
LF446: LDA    $C0     
       RTS            

LF449: .byte $04,$06,$08,$0A,$0D,$29,$1A,$5B,$5A,$33,$07,$0B,$0D,$0F,$11,$13
       .byte $1F,$1F,$64,$64
LF45D: .byte $04,$06,$08,$0A,$0D,$0A,$1A,$0A,$0B,$32,$07,$0B,$0B,$0F,$11,$13
       .byte $0A,$1F,$0A,$64
LF471: LDX    #$00    
       STX    $BC     
       LDX    #$06    
LF477: LSR            
       BCS    LF480   
LF47A: DEX            
       BPL    LF477   
       LDA    $BC     
       RTS            

LF480: SED            
       PHA            
       LDA    $BC     
       CLC            
       ADC    LF48F,X 
       STA    $BC     
       PLA            
       CLD            
       CLC            
       BCC    LF47A   
LF48F: .byte $64 ;.NOP
       .byte $32 ;.JAM
       ASL    COLUPF,X
       .byte $04 ;.NOP
       .byte $02 ;.JAM
       ORA    ($E6,X) 
       .byte $CB ;.SBX
       LDA    $CB     
       CMP    #$14    
       BCC    LF4C7   
       LDA    #$FF    
       STA    $E3     
       RTS            

LF4A3: LDA    #$00    
       STA    $CB     
       LDA    $CA     
       CMP    #$12    
       BCS    LF4BA   
       LDA    $AE     
       ORA    #$08    
       STA    $AE     
       LDA    #$D1    
       JSR    LF4EB   
       BEQ    LF4C7   
LF4BA: LDA    #$78    
       STA    $DE     
       LDA    #$10    
       STA    $AE     
       LDA    #$AA    
       JSR    LF4EB   
LF4C7: RTS            

LF4C8: LDX    #$00    
       INC    $C3     
       LDA    $C3     
       CMP    #$03    
       BNE    LF4DE   
       STX    $C3     
       INC    $C4     
       LDA    $C4     
       CMP    #$14    
       BCC    LF4DE   
       STX    $C4     
LF4DE: LDX    #$C6    
       LDA    $C3     
       CMP    #$02    
       BNE    LF4E8   
       LDX    #$00    
LF4E8: STX    $AA     
       RTS            

LF4EB: STA    $D1     
       LDA    #$00    
       STA    $D3     
       STA    $D2     
       RTS            

LF4F4: LDA    $D6     
       JSR    LF471   
       STA    $AF     
       LDA    $D7     
       JSR    LF471   
       STA    $B0     
       LDA    #$B4    
       STA    $84     
       STA    $86     
       STA    $88     
       STA    $8A     
       LDA    #$00    
       STA    $AC     
       BEQ    LF54C   
LF512: LDA    $AC     
       BNE    LF523   
       LDA    $C8     
       BEQ    LF523   
       JSR    LFB6E   
       LDA    #$00    
       STA    $C9     
       STA    $C8     
LF523: LDA    $C3     
       BEQ    LF54C   
       LDA    $AE     
       ROL            
       BPL    LF52F   
       JMP    LF5AE   
LF52F: DEC    $C2     
       BPL    LF54C   
       LDA    $C5     
       STA    $C2     
       INC    $AC     
       LDA    $AC     
       CMP    #$83    
       BCC    LF54C   
       LDA    #$82    
       STA    $AC     
       LDA    $AE     
       ORA    #$40    
       STA    $AE     
       JMP    LF588   
LF54C: LDY    #$04    
       LDA    $AA     
LF550: STA.wy $00A5,Y 
       DEY            
       BNE    LF550   
       LDY    #$03    
       LDA    $AB     
LF55A: CMP    LFF14,Y 
       BCS    LF563   
       DEY            
       BPL    LF55A   
       INY            
LF563: STY    $AD     
       LDA    #$0F    
       STA.wy $00A6,Y 
       LDA    $AE     
       ROL            
       BMI    LF5AE   
       BIT    INPT5   
       BMI    LF5AE   
       LDA    $AE     
       ORA    #$40    
       STA    $AE     
       LDA    #$00    
       STA    $D4     
       STA    $C8     
       LDY    $AD     
       LDA.wy $00B2,Y 
       CMP    $B1     
       BEQ    LF596   
LF588: LDA    #$84    
       JSR    LF4EB   
       JSR    LF496   
       LDA    #$06    
       STA    $C9     
       BNE    LF5AE   
LF596: LDA    #$8B    
       JSR    LF4EB   
       INC    $CA     
       JSR    LF496   
       LDA    #$3A    
       STA    $C9     
       LDA    $AE     
       ORA    #$20    
       STA    $AE     
       LDA    #$7F    
       STA    $C1     
LF5AE: LDA    INTIM   
       BNE    LF5AE   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$C4    
       STA    $81     
       LDA    $AE     
       BNE    LF616   
       LDX    #$0A    
LF5C1: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF5C1   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$56    
       STA    COLUPF  
       DEC    $81     
       STA    WSYNC   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    #$03    
LF5DC: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF5DC   
       STX    PF2     
       LDA    #$80    
       STA    PF1     
       LDX    #$05    
LF5EB: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF5EB   
       JSR    LFB9F   
       LDX    #$03    
LF5F7: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF5F7   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    #$03    
LF606: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF606   
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       JMP    LFB3C   
LF616: DEC    $81     
       STA    WSYNC   
       LDX    $82     
       LDA    LFF18,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LF624: DEX            
       BNE    LF624   
       STA    RESP0   
       DEC    $81     
       STA    WSYNC   
       LDX    $83     
       LDA    LFF18,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF637: DEX            
       BNE    LF637   
       STA    RESP1   
       DEC    $81     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$1E    
       STA    COLUP0  
       STA    COLUP1  
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$01    
       STA    CTRLPF  
       LDA    $AE     
       AND    #$38    
       BEQ    LF672   
       AND    #$18    
       BEQ    LF66F   
       LDA    $D9     
       CMP    #$33    
       BCS    LF66F   
       JMP    LF816   
LF66F: JMP    LF788   
LF672: LDA    #$54    
       BIT    $AE     
       BPL    LF67A   
       LDA    #$30    
LF67A: STA    WSYNC   
       DEC    $81     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDX    #$04    
LF68A: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF68A   
       LDA    #$F0    
       STA    PF0     
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$26    
       STA    COLUBK  
       LDX    #$04    
LF6B1: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF6B1   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       BIT    $AE     
       BPL    LF6CB   
       JMP    LF88A   
LF6CB: LDX    #$0C    
LF6CD: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF6CD   
       LDY    #$0E    
LF6D6: DEC    $81     
       STA    WSYNC   
       LDA    LFEB4,Y 
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($84),Y 
       STA    GRP0    
       DEY            
       BPL    LF6D6   
       LDX    #$04    
LF6F9: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF6F9   
       LDY    #$0E    
LF702: DEC    $81     
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($88),Y 
       STA    GRP0    
       DEY            
       BPL    LF702   
       LDX    #$08    
LF723: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF723   
       LDY    #$02    
LF72C: DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    #$FF    
       STA    GRP1    
       LDX    #$07    
LF73A: DEX            
       BNE    LF73A   
       STA    GRP0    
       DEY            
       BNE    LF72C   
       STA    WSYNC   
       DEC    $81     
       STY    GRP0    
       STY    GRP1    
       LDA    $C9     
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$03    
LF752: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF752   
       LDY    #$0E    
LF75B: DEC    $81     
       STA    WSYNC   
       LDA    LFEB4,Y 
       STA    GRP0    
       LDA    ($8E),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($8C),Y 
       STA    GRP0    
       DEY            
       BPL    LF75B   
       LDX    #$03    
LF77E: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF77E   
       JMP    LF997   
LF788: LDA    #$54    
       STA    COLUBK  
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$08    
       STA    REFP1   
       LDX    #$88    
       LDA    $AE     
       AND    #$18    
       BEQ    LF7A0   
       LDX    #$00    
LF7A0: STX    COLUPF  
       LDA    #$B4    
       STA    $DC     
       LDX    #$54    
       LDY    #$00    
       STY    PF0     
       STY    PF1     
LF7AE: TYA            
       AND    #$07    
       TAY            
       STA    WSYNC   
       DEC    $81     
       STX    COLUBK  
       LDA    ($DC),Y 
       STA    PF2     
       LDA    $81     
       CMP    $D9     
       BEQ    LF7D0   
       CMP    #$A1    
       BCS    LF7CC   
       LDX    #$00    
       LDA    #$C3    
       STA    $DC     
LF7CC: INY            
       JMP    LF7AE   
LF7D0: STX    $BC     
       LDX    #$14    
LF7D4: INY            
       TYA            
       AND    #$07    
       TAY            
       DEC    $81     
       STA    WSYNC   
       LDA    $BC     
       STA    COLUBK  
       LDA    LFD6F,X 
       STA    GRP0    
       STA    GRP1    
       LDA    ($DC),Y 
       STA    PF2     
       LDA    $81     
       CMP    #$A1    
       BCS    LF7FA   
       LDA    #$00    
       STA    $BC     
       LDA    #$C3    
       STA    $DC     
LF7FA: DEX            
       BNE    LF7D4   
LF7FD: INY            
       TYA            
       AND    #$07    
       TAY            
       STA    WSYNC   
       DEC    $81     
       LDA    LFEC3,Y 
       STA    PF2     
       LDX    $81     
       BNE    LF7FD   
       STX    PF2     
       STX    REFP1   
       JMP    LFB45   
LF816: LDA    #$92    
       STA    COLUBK  
       LDA    #$FC    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$0F    
LF822: STA    WSYNC   
       DEC    $81     
       LDA    ($DF),Y 
       STA    GRP0    
       LDA    ($E1),Y 
       STA    GRP1    
       DEY            
       BPL    LF822   
       LDX    #$28    
LF833: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF833   
       LDA    $CA     
       CMP    #$12    
       BCC    LF861   
       LDA    $D5     
       ORA    #$14    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$08    
       LDA    #$01    
       STA    NUSIZ0  
LF84E: STA    WSYNC   
       DEC    $81     
       LDA    LFF9B,Y 
       STA    GRP0    
       LDA    LFFA3,Y 
       STA    GRP1    
       DEY            
       BNE    LF84E   
       STY    NUSIZ0  
LF861: STA    WSYNC   
       DEC    $81     
       LDA    $81     
       CMP    $D9     
       BNE    LF861   
       LDX    #$14    
       LDA    #$1E    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$08    
       STA    REFP1   
LF877: STA    WSYNC   
       DEC    $81     
       LDA    LFD6F,X 
       STA    GRP1    
       STA    GRP0    
       DEX            
       BNE    LF877   
       STX    REFP1   
       JMP    LFB3C   
LF88A: LDA    #$48    
       STA    COLUP0  
       LDA    #$C8    
       STA    COLUP1  
       LDA    $A4     
       CMP    #$96    
       BEQ    LF89E   
       LDA    #$98    
       STA    COLUP0  
       STA    COLUP1  
LF89E: LDX    #$B4    
       LDA    $CC     
       BNE    LF8A6   
       STX    $A0     
LF8A6: LDA    $CD     
       BNE    LF8AC   
       STX    $A2     
LF8AC: LDA    $B6     
       STA    NUSIZ0  
       LDA    $B9     
       STA    NUSIZ1  
       JSR    LFB54   
       LDA    $CC     
       CMP    #$04    
       BCS    LF8BF   
       STX    $A0     
LF8BF: LDA    $CD     
       CMP    #$04    
       BCS    LF8C7   
       STX    $A2     
LF8C7: LDA    $B7     
       STA    NUSIZ0  
       LDA    $BA     
       STA    NUSIZ1  
       JSR    LFB54   
       LDA    $CC     
       CMP    #$07    
       BCS    LF8DA   
       STX    $A0     
LF8DA: LDA    $CD     
       CMP    #$07    
       BCS    LF8E2   
       STX    $A2     
LF8E2: LDA    $B8     
       STA    NUSIZ0  
       LDA    $BB     
       STA    NUSIZ1  
       JSR    LFB54   
       DEC    $81     
       DEC    $81     
       LDX    #$14    
LF8F3: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF8F3   
       LDA    #$34    
       STA    $BC     
       LDA    #$50    
       STA    $BD     
       LDA    $A4     
       CMP    #$96    
       BEQ    LF915   
       LDA    $D5     
       ROR            
       BCC    LF915   
       LDA    #$2C    
       STA    $BC     
       LDA    #$48    
       STA    $BD     
LF915: DEC    $81     
       STA    WSYNC   
       LDX    $BC     
       LDA    LFF18,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LF923: DEX            
       BNE    LF923   
       STA    RESP0   
       DEC    $81     
       STA    WSYNC   
       LDX    $BD     
       LDA    LFF18,X 
       STA    HMP1    
       AND    #$0F    
       TAX            
LF936: DEX            
       BNE    LF936   
       STA    RESP1   
       DEC    $81     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$38    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $A4     
       CMP    #$96    
       BEQ    LF95E   
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $D5     
       ROR            
       BCS    LF97D   
LF95E: LDY    #$0E    
LF960: DEC    $81     
       STA    WSYNC   
       LDA    ($84),Y 
       STA    GRP0    
       LDX    #$05    
LF96A: DEX            
       BNE    LF96A   
       LDA    ($A4),Y 
       STA    GRP0    
       STX    GRP1    
       LDA    ($88),Y 
       STA    GRP1    
       DEY            
       BPL    LF960   
       JMP    LF997   
LF97D: LDY    #$0E    
LF97F: DEC    $81     
       STA    WSYNC   
       LDA    ($86),Y 
       STA    GRP0    
       LDX    #$06    
LF989: DEX            
       BNE    LF989   
       STX    GRP0    
       STX    GRP1    
       LDA    ($8A),Y 
       STA    GRP1    
       DEY            
       BPL    LF97F   
LF997: LDX    #$05    
LF999: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF999   
       LDA    #$26    
       STA    COLUBK  
       LDX    #$04    
LF9A6: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF9A6   
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDX    #$04    
LF9C5: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF9C5   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$A4    
       STA    COLUBK  
       LDX    #$04    
LF9E8: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LF9E8   
       STX    COLUBK  
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDX    #$05    
       DEC    $81     
       STA    WSYNC   
LFA02: DEX            
       BNE    LFA02   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDY    #$0E    
LFA0C: LDA    ($92),Y 
       DEC    $81     
       STA    WSYNC   
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    $A6     
       STA    COLUP0  
       STA    COLUP1  
       NOP            
       NOP            
       NOP            
       LDA    ($9A),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    $A8     
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LFA0C   
       LDX    #$07    
       DEC    $81     
       STA    WSYNC   
LFA38: DEX            
       BNE    LFA38   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDX    $A7     
       LDY    #$0E    
LFA44: DEC    $81     
       STA    WSYNC   
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($94),Y 
       STA    GRP1    
       STX    COLUP0  
       STX    COLUP1  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($9E),Y 
       STA    GRP0    
       LDA    ($9C),Y 
       STA    GRP1    
       LDA    $A9     
       STA    COLUP0  
       STA    COLUP1  
       DEY            
       BPL    LFA44   
       STA    WSYNC   
       LDA    #$A4    
       STA    COLUBK  
       STA    WSYNC   
       DEC    $81     
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$1C    
       STA    COLUP0  
       DEC    $81     
       STA    WSYNC   
       LDX    $AB     
       LDA    LFF18,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LFA8E: DEX            
       BNE    LFA8E   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       DEC    $81     
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STX    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$F2    
       STA    COLUBK  
       LDY    #$0A    
LFAB5: DEC    $81     
       STA    WSYNC   
       LDA    LFECB,Y 
       STA    GRP0    
       DEY            
       BPL    LFAB5   
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$0F    
       STA    COLUP0  
       LDA    $AC     
       CMP    #$82    
       BCS    LFB3C   
       DEC    $81     
       STA    WSYNC   
       DEC    $81     
       TAX            
       LDA    LFF18,X 
       STA    HMP0    
       AND    #$0F    
       TAX            
LFAEA: DEX            
       BNE    LFAEA   
       STA    RESP0   
       STA    WSYNC   
       DEC    $81     
       LDX    #$F0    
       STX    HMP1    
       LDX    #$0B    
LFAF9: DEX            
       BNE    LFAF9   
       STA    RESP1   
       DEC    $81     
       STA    WSYNC   
       STA    HMOVE   
       STX    COLUBK  
       LDA    #$0F    
       STA    COLUP1  
       DEC    $81     
       STA    WSYNC   
       LDA    $C5     
       ROL            
       ROL            
       ROL            
       ROL            
       ORA    #$03    
       STA    COLUBK  
       LDX    #$F0    
       LDY    #$0F    
LFB1C: DEC    $81     
       STA    WSYNC   
       LDA    ($A4),Y 
       STA    GRP0    
       STX    GRP1    
       DEY            
       BPL    LFB1C   
       INY            
       STY    GRP1    
       DEC    $81     
       STA    WSYNC   
       LDA    #$0A    
       STA    COLUBK  
       DEC    $81     
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
LFB3C: LDY    $81     
LFB3E: STA    WSYNC   
       DEY            
       BNE    LFB3E   
       STY    COLUBK  
LFB45: LDA    #$1F    
       STA    TIM64T  
       STA    WSYNC   
LFB4C: LDA    INTIM   
       BNE    LFB4C   
       JMP    LF023   
LFB54: LDY    #$0A    
LFB56: LDA    ($A0),Y 
       STA    GRP0    
       LDA    ($A2),Y 
       STA    GRP1    
       STA    WSYNC   
       DEC    $81     
       DEY            
       BPL    LFB56   
       STA    WSYNC   
       DEC    $81     
       STA    WSYNC   
       DEC    $81     
       RTS            

LFB6E: LDY    #$1E    
       LDX    #$07    
LFB72: LDA    $AF,X   
       STX    $BC     
       PHA            
       AND    #$F0    
       CLC            
       ROR            
       ROR            
       ROR            
       ROR            
       TAX            
       BNE    LFB85   
       LDA    #$B4    
       BNE    LFB88   
LFB85: LDA    LFF00,X 
LFB88: STA.wy $0084,Y 
       PLA            
       AND    #$0F    
       TAX            
       LDA    LFF00,X 
       DEY            
       DEY            
       STA.wy $0084,Y 
       DEY            
       DEY            
       LDX    $BC     
       DEX            
       BPL    LFB72   
       RTS            

LFB9F: STA    HMCLR   
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$F0    
       STA    HMP0    
       LDX    #$08    
       DEC    $81     
       STA    WSYNC   
LFBB1: DEX            
       BNE    LFBB1   
       STA    RESP0   
       STA    RESP1   
       DEC    $81     
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$13    
LFBC0: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFBC0   
       LDY    #$0E    
LFBC9: STA    WSYNC   
       DEC    $81     
       LDA    ($A4),Y 
       STA    GRP0    
       STA    GRP1    
       DEY            
       BPL    LFBC9   
       LDX    #$08    
LFBD8: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFBD8   
       LDA    #$2A    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$0C    
LFBE7: DEC    $81     
       STA    WSYNC   
       LDA    LFD3F,Y 
       STA    GRP0    
       LDA    LFD4B,Y 
       STA    GRP1    
       LDA    LFD57,Y 
       TAX            
       LDA    LFD63,Y 
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       DEY            
       BNE    LFBE7   
       LDX    #$03    
LFC0F: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFC0F   
       LDY    #$0E    
LFC18: DEC    $81     
       STA    WSYNC   
       LDA    LFEB4,Y 
       STA    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($90),Y 
       TAX            
       LDA    LFEB4,Y 
       BIT    $81     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LFC18   
       LDX    #$0B    
LFC3E: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFC3E   
       LDA    #$88    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$0C    
LFC4D: DEC    $81     
       STA    WSYNC   
       LDA    LFD0F,Y 
       STA    GRP0    
       LDA    LFD1B,Y 
       STA    GRP1    
       LDA    LFD27,Y 
       TAX            
       LDA    LFD33,Y 
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       DEY            
       BNE    LFC4D   
       LDX    #$03    
LFC75: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFC75   
       LDY    #$0E    
LFC7E: DEC    $81     
       STA    WSYNC   
       LDA    LFEB4,Y 
       STA    GRP0    
       LDA    ($96),Y 
       STA    GRP1    
       LDA    ($94),Y 
       TAX            
       LDA    LFEB4,Y 
       BIT    $81     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STX    GRP0    
       STA    GRP1    
       DEY            
       BPL    LFC7E   
       LDX    #$0E    
LFCA4: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFCA4   
       LDA    #$2C    
       STA    COLUP1  
       STA    COLUP0  
       STX    NUSIZ1  
       LDY    #$10    
       SEC            
LFCB6: STA    WSYNC   
       DEC    $81     
       LDA    SWCHB   
       AND    #$40    
       BNE    LFCC6   
       LDA    LFE0E,Y 
       BCS    LFCC9   
LFCC6: LDA    LFE1D,Y 
LFCC9: STA    GRP1    
       DEY            
       BNE    LFCB6   
       LDX    #$04    
LFCD0: DEC    $81     
       STA    WSYNC   
       DEX            
       BNE    LFCD0   
       RTS            

LFCD8: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFD00: .byte $1E,$3C,$5A,$78,$00,$1E,$3C,$5A
LFD08: .byte $B4,$B4,$B4,$B4,$0F,$0F,$0F
LFD0F: .byte $0F,$00,$FF,$80,$8F,$81,$81,$8F,$88,$88,$8F,$80
LFD1B: .byte $FF,$00,$FF,$00,$43,$42,$7B,$4A,$7B,$00,$00,$00
LFD27: .byte $FF,$00,$FF,$00,$DE,$10,$9C,$10,$DE,$00,$00,$00
LFD33: .byte $FF,$00,$FF,$01,$E1,$91,$91,$91,$E1,$01,$01,$01
LFD3F: .byte $FF,$00,$FF,$80,$87,$84,$84,$84,$84,$84,$87,$80
LFD4B: .byte $FF,$00,$FF,$00,$D1,$51,$51,$DF,$11,$0A,$C4,$00
LFD57: .byte $FF,$00,$FF,$00,$45,$45,$45,$55,$55,$6D,$45,$00
LFD63: .byte $FF,$00,$FF,$01,$E1,$01,$01,$C1,$01,$01,$E1,$01
LFD6F: .byte $FF,$00,$1C,$04,$04,$0F,$1F,$3E,$FC,$3F,$FF,$3F,$1B,$1B,$1F,$1F
       .byte $27,$43,$80,$80,$40,$08,$0C,$0F,$00,$00,$1E,$FF,$11,$0C,$06,$0F
       .byte $0C,$06,$0B,$0C,$06,$1F,$04,$08,$00,$00,$1E,$FF,$08,$0C,$06,$06
       .byte $0C,$06,$08,$0C,$06,$06,$0C,$06,$0A,$0C,$03,$11,$04,$04,$12,$04
       .byte $04,$12,$04,$04,$17,$04,$04,$1A,$04,$04,$1C,$04,$04,$0B,$0C,$06
       .byte $0D,$0C,$06,$10,$0C,$06,$14,$0C,$06,$0F,$0C,$06,$12,$0C,$06,$17
       .byte $0C,$06,$14,$04,$06,$1A,$04,$06,$1F,$04,$06,$17,$04,$06,$1A,$04
       .byte $06,$0A,$0C,$06,$1A,$04,$06,$1F,$04,$06,$11,$0C,$14,$FF,$0C,$04
       .byte $02,$08,$04,$02,$04,$04,$02,$FF,$01,$01,$02,$02,$01,$02,$FF,$00
       .byte $00,$00,$18,$18,$24,$24,$42,$42,$42,$42,$42,$42,$24,$24,$18
LFE0E: .byte $18,$00,$1C,$1C,$08,$08,$08,$08,$08,$08,$08,$08,$18,$18,$08
LFE1D: .byte $08,$00,$3E,$3E,$20,$20,$10,$10,$0C,$0C,$02,$02,$22,$22,$1C,$1C
       .byte $00,$1C,$1C,$22,$22,$02,$02,$0C,$0C,$04,$04,$02,$02,$3E,$3E,$00
       .byte $04,$04,$04,$04,$3E,$3E,$24,$24,$14,$14,$0C,$0C,$04,$04,$00,$1C
       .byte $1C,$22,$22,$02,$02,$02,$02,$3C,$3C,$20,$20,$3E,$3E,$00,$1C,$1C
       .byte $22,$22,$22,$22,$3C,$3C,$20,$20,$10,$10,$0C,$0C,$00,$10,$10,$10
       .byte $10,$08,$08,$08,$08,$04,$04,$02,$02,$3E,$3E,$00,$1C,$1C,$22,$22
       .byte $22,$22,$1C,$1C,$22,$22,$22,$22,$1C,$1C,$00,$18,$18,$04,$04,$02
       .byte $02,$1E,$1E,$22,$22,$22,$22,$1C,$1C,$00,$00,$18,$18,$18,$18,$7E
       .byte $7E,$7E,$18,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$7E,$7E
       .byte $7E,$00,$00,$00,$00,$00,$00
LFEB4: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFEC3: .byte $06,$06,$06,$FE,$FE,$06,$06,$06
LFECB: .byte $00,$1C,$1C,$1C,$1C,$1C,$1C,$7F,$3E,$1C,$08,$00,$18,$3C,$7E,$7E
       .byte $7E,$3C,$18,$10,$10,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00
LFF00: .byte $00,$0F,$1E,$2D,$3C,$4B,$5A,$69,$78,$87
LFF0A: .byte $00,$00,$02,$03,$03,$0B,$0F,$0F,$2F,$3F
LFF14: .byte $19,$2E,$55,$72
LFF18: .byte $41,$31,$21,$11,$01,$F1,$E1,$D1,$C1,$B1,$A1,$91,$72,$62,$52,$42
       .byte $32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53,$43,$33
       .byte $23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54,$44,$34,$24
       .byte $14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35,$25,$15
       .byte $05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26,$16,$06
       .byte $F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17,$07,$F7
       .byte $E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08,$F8,$E8
       .byte $D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9,$E9,$D9
       .byte $C9,$B9,$A9
LFF9B: .byte $99,$00,$24,$66,$BD,$99,$81,$81
LFFA3: .byte $81,$00,$3C,$42,$42,$42,$42,$42,$3C
LFFAC: LDA    #$FE    
       STA    $DD     
       LDA    #$32    
       STA    $C1     
       LDA    #$17    
       STA    $D9     
       LDA    #$4C    
       STA    $DA     
       LDA    #$1E    
       STA    $C2     
       LDA    #$00    
       STA    $AC     
       STA    $C4     
       LDA    #$50    
       STA    $AB     
       LDA    #$07    
       STA    $C5     
       LDA    #$0F    
       STA    $96     
       STA    $90     
       LDA    #$5A    
       STA    $94     
       LDA    #$C6    
       STA    $AA     
       LDA    #$FD    
       STA    $D0     
       LDA    #$FE    
       STA    $E0     
       STA    $E2     
       RTS            

LFFE7: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$F0,$B4,$B5
