; Disassembly of roms/crazyballoon-ntsc.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/crazyballoon-ntsc.bin
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
REFP1   =  $0C
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
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
LFBB1   =   $FBB1

       ORG $F000
LF000: NOP            
       LDA    #$FF    
       STA    $FC     
       LDA    #$00    
       BEQ    LF03F   
LF009: .byte $04 ;.NOP
       BRK            
       NOP            
       NOP            
       LDA    #$00    
       BEQ    LF06E   
LF011: LDY    $8C     
       LDX    LF701,Y 
LF016: STA    WSYNC   
       STA    HMCLR   
       STA    VBLANK  
       DEX            
       BPL    LF016   
       JSR    LFB73   
       LDX    #$FF    
       STX    PF1     
       STX    PF2     
       INX            
       LDY    #$4E    
       STA    WSYNC   
       STA    HMCLR   
       STX    PF1     
       STX    PF2     
LF033: LDA    $81     
       .byte $C7 ;.DCP
       .byte $8B ;.ANE
       BCC    LF000   
       LDA    ($87),Y 
       STA    HMP0    
       LDA    ($83),Y 
LF03F: STY.w  $00FB   
       STA    GRP0    
       STA    WSYNC   
       STA    HMOVE   
       STX    GRP1    
       LDA    LFE01,Y 
       CMP    $C5     
       PHP            
       TAY            
       LDA    ($B7),Y 
       STA    PF1     
       LDA    ($B9),Y 
       STA.w  $000F   
       .byte $B3 ;.LAX
       LDA    $BBB1,X 
       STA    PF2     
       STX    PF1     
       LDY    $FB     
       LDA    $FC     
       BMI    LF009   
       LDA    ($89),Y 
       STA    HMP0    
       LDA    ($85),Y 
LF06E: LDX    #$1F    
       TXS            
       STA    HMOVE   
       LDX    #$00    
       STX    ENABL   
       STX    PF1     
       STX    PF2     
       STA    GRP0    
       STX    $FC     
       LDA    $D5     
       .byte $C7 ;.DCP
       CMP    $02B0,Y 
       TXA            
       BIT    $D6B3   
       DEY            
       BNE    LF033   
       STA    WSYNC   
       STY    GRP0    
       STY    REFP1   
       STY    NUSIZ1  
       LDX    #$FF    
       STX    PF1     
       STX    PF2     
       TXS            
       LDA    $CD     
       AND    #$FC    
       CLC            
       ADC    #$13    
       STA    $FB     
       LDX    $CE     
       CPX    #$04    
       BCC    LF0AC   
       LDX    #$03    
LF0AC: LDA    LFF23,X 
       STA    NUSIZ0  
       LDA    LFB6F,X 
       SEC            
       LDY    #$00    
       STA    WSYNC   
       STY    CTRLPF  
       STY    PF1     
       STY    PF2     
LF0BF: SBC    #$0F    
       BCS    LF0BF   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    RESP0   
       LDA    $FB     
       STA    WSYNC   
       SEC            
LF0D2: SBC    #$0F    
       BCS    LF0D2   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $C2     
       AND    #$F0    
       STA    $FB     
       LDA    $CD     
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       ORA    $FB     
       STA    COLUPF  
       STA    COLUP1  
       LDA    $CD     
       LSR            
       LSR            
       TAX            
       LDA    $CD     
       AND    #$03    
       TAY            
       LDA    LFF0F,Y 
       STA    $FB     
       LDY    #$07    
LF108: STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       LDA    $FB     
       STA    GRP1    
       LDA    LFEEB,X 
       STA    PF1     
       LDA    LFEFD,X 
       STA    PF2     
       LDA    LFF1B,Y 
       STA    GRP0    
       LDA    #$00    
       STA    PF1     
       STA    HMP0    
       STA    HMP1    
       NOP            
       STA    PF2     
       DEY            
       BPL    LF108   
       INY            
       STY    WSYNC   
       STY    GRP1    
       STY    NUSIZ0  
       STY    GRP0    
       STY    GRP1    
       LDA    #$21    
       STA    CTRLPF  
       LDA    $8C     
       EOR    #$08    
       TAY            
       LDX    LF701,Y 
       INX            
       INX            
       INX            
LF149: STA    WSYNC   
       DEX            
       BPL    LF149   
       LDX    #$1E    
       JMP    LF365   

START:
       SEI            
       CLD            
       LDX    #$00    
       TXA            
       TAY            
LF159: DEX            
       TXS            
       PHA            
       BNE    LF159   
       JSR    LF63E   
       LDA    #$51    
       STA    $83     
       LDA    #$FF    
       STA    $84     
       LDA    #$51    
       STA    $85     
       LDA    #$FF    
       STA    $86     
       LDA    #$51    
       STA    $87     
       LDA    #$FE    
       STA    $88     
       LDA    #$51    
       STA    $89     
       LDA    #$FE    
       STA    $8A     
       LDA    #$03    
       STA    $CE     
       LDA    #$01    
       STA    CTRLPF  
LF189: LDA    #$0E    
LF18B: STA    WSYNC   
       STA    VSYNC   
       LSR            
       BNE    LF18B   
       LDA    #$2B    
       STA    TIM64T  
       LDA    $BF     
       LSR            
       STA    $FB     
       LDY    $82     
       LDX    $82     
       LDA    $DB     
       BMI    LF1AD   
       LSR            
       LSR            
       LSR            
       CLC            
       ADC    #$0E    
       TAX            
       LDY    #$04    
LF1AD: LDA    $EE     
       BMI    LF1BB   
       LDA    $EF     
       BNE    LF1BB   
       LDX    #$11    
       LDA    #$00    
       STA    $81     
LF1BB: LDA    $DC     
       BMI    LF1C7   
       LDX    #$12    
       LDY    #$04    
       LDA    #$05    
       STA    $81     
LF1C7: LDA    #$4E    
       SEC            
       SBC    $FB     
       ADC    $81     
       STA    $8B     
       CLC            
       ADC    LFFDC,X 
       STA    $83     
       SEC            
       ADC    $81     
       STA    $85     
       LDA    $8B     
       CLC            
       ADC    LFCC6,Y 
       STA    $87     
       SEC            
       ADC    $81     
       STA    $89     
       ASL    SWCHB   
       BCS    LF1FF   
       CPX    #$00    
       BNE    LF1F6   
       LDY    #$03    
       JSR    LFF27   
LF1F6: CPX    #$07    
       BNE    LF1FF   
       LDY    #$04    
       JSR    LFF27   
LF1FF: LDA    $BF     
       LSR            
       BCC    LF218   
       LDA    $83     
       LDX    $85     
       STA    $85     
       STX    $83     
       LDA    $87     
       LDX    $89     
       STA    $89     
       STX    $87     
       DEC    $85     
       DEC    $89     
LF218: LDA    $80     
       AND    #$07    
       BNE    LF22A   
       LDA    $DA     
       BEQ    LF22A   
       DEC    $DA     
       BNE    LF22A   
       LDA    #$00    
       STA    $DD     
LF22A: LDA    $EE     
       BPL    LF293   
       LDA    $D7     
       CMP    #$FF    
       BNE    LF255   
       LDA    $80     
       AND    #$1F    
       BNE    LF293   
       LDA    $D3     
       ASL            
       SEC            
       SBC    #$0C    
       LDX    $BF     
       JSR    LF632   
       STX    $BF     
       LDA    $D4     
       CLC            
       ADC    #$0C    
       LDX    $C0     
       JSR    LF632   
       STX    $C0     
       BNE    LF293   
LF255: LDA    $D3     
       SEC            
       SBC    #$0E    
       STA    $FB     
       LDA    $BF     
       LSR            
       SEC            
       SBC    #$03    
       SBC    $FB     
       CLC            
       ADC    #$06    
       CMP    #$12    
       BCS    LF293   
       LDA    $DA     
       BNE    LF273   
       LDA    #$10    
       STA    $DA     
LF273: LDA    $DA     
       CMP    #$0B    
       BCS    LF293   
       LDA    $80     
       AND    #$03    
       BNE    LF293   
       LDA    $D1     
       BEQ    LF293   
       LDA    $DD     
       BMI    LF293   
       LDA    $D4     
       CMP    #$50    
       BCS    LF291   
       INC    $C0     
       INC    $C0     
LF291: DEC    $C0     
LF293: LDX    #$13    
       LDA    $D7     
       CMP    #$FF    
       BEQ    LF2A9   
       LDA    $DA     
       TAX            
       LSR            
       LDA    $DD     
       BPL    LF2A9   
       LDX    #$11    
       BCS    LF2A9   
       LDX    #$12    
LF2A9: LDA    #$4E    
       SEC            
       SBC    $D3     
       ADC    $D5     
       STA    $D9     
       CLC            
       ADC    LF91D,X 
       STA    $D6     
       LDX    #$02    
LF2BA: LDA    $C7,X   
       STA    $CA,X   
       DEX            
       BPL    LF2BA   
       LDA    $F0     
       BNE    LF2D5   
       LDA    $D1     
       BEQ    LF2D5   
       LDA    #$AB    
       STA    $CA     
       LDA    #$CD    
       STA    $CB     
       LDA    $D2     
       STA    $CC     
LF2D5: LDA    #$0B    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    VDELP0  
       STA    VDELP1  
       STA    WSYNC   
       LDX    #$07    
LF2E3: DEX            
       BNE    LF2E3   
       STA.w  $0010   
       STA    RESP1   
       LDA    #$14    
       STA    HMP1    
       LSR            
       STA    HMP0    
       STA    WSYNC   
       LDX    #$0B    
LF2F6: TXA            
       LSR            
       LSR            
       TAY            
       LDA.wy $00CA,Y 
       STA    $FB     
       AND    #$0F    
       TAY            
       LDA    #$FD    
       STA    $8D,X   
       STA    $8B,X   
       DEX            
       LDA    LF8F5,Y 
       STA    $8D,X   
       DEX            
       DEX            
       LDA    $FB     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF8F5,Y 
       STA    $8D,X   
       DEX            
       BPL    LF2F6   
       LDA    $93     
       CMP    #$66    
       BNE    LF333   
       LDA    $95     
       CMP    #$0F    
       BNE    LF333   
       LDA    #$55    
       STA    $95     
       LDA    #$FE    
       STA    $96     
LF333: LDA    #$06    
       STA    $FC     
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    $C2     
       STA    COLUPF  
       LDA    $C6     
       LDX    #$04    
       JSR    LFBE9   
       LDA    $DD     
       BMI    LF35D   
       LDA    $D7     
       CMP    #$FF    
       BEQ    LF35D   
       LDA    $DA     
       CMP    #$0C    
       BNE    LF35D   
       LDY    #$05    
       JSR    LFF27   
LF35D: LDA    INTIM   
       BNE    LF35D   
       JMP    LF011   
LF365: LDA    #$24    
       STA    TIM64T  
       LDA    $EE     
       AND    $DC     
       BPL    LF397   
       LDA    $C4     
       SBC    $C0     
       BMI    LF397   
       SBC    #$0C    
       BPL    LF397   
       LDA    $C3     
       SBC    $BF     
       BMI    LF397   
       SBC    #$0D    
       BPL    LF397   
       LDX    #$01    
       STX    $EF     
       LDA    #$13    
       STA    $EE     
       LDA    $F1     
       BEQ    LF397   
       CLC            
       SED            
       LDA    #$10    
       JSR    LFCB6   
LF397: LDA    $D1     
       BEQ    LF3EC   
       LDA    $DB     
       AND    $EE     
       BPL    LF41C   
       LDA    $CD     
       BEQ    LF3EF   
       LDA    $DC     
       BMI    LF3AF   
       LDA    $BF     
       CMP    #$9D    
       BEQ    LF405   
LF3AF: LDA    WSYNC   
       AND    #$C0    
       BEQ    LF41C   
       LDA    $F0     
       BMI    LF3D0   
       LDA    $CD     
       CMP    #$21    
       BCS    LF3D0   
       LDX    $B3     
       LDY    LFB5F,X 
       LDA    LFA50,Y 
       STA    $BF     
       LDA    LFA51,Y 
       STA    $C0     
       BCC    LF41C   
LF3D0: BIT    SWCHB   
       BVS    LF3EF   
       LDA    $F2     
       BPL    LF41C   
       LDA    #$0F    
       STA    $F2     
       DEC    $F1     
       BMI    LF3EF   
       LDA    $C1     
       EOR    #$06    
       STA    $C1     
LF3E7: LDY    #$00    
       JSR    LFF27   
LF3EC: JMP    LF41C   
LF3EF: LDA    #$00    
       STA    $F2     
       LDA    $DC     
       BPL    LF405   
       INC    $DC     
       LDX    $82     
       LDA    LFD01,X 
       CLC            
       ADC    $C0     
       STA    $C0     
       BNE    LF3E7   
LF405: LDA    #$17    
       STA    $DB     
       DEC    $DC     
       LDY    #$02    
       JSR    LFF27   
       LDA    $DA     
       BEQ    LF41C   
       LDA    #$10    
       STA    $DA     
       LDA    #$FF    
       STA    $DD     
LF41C: STA    CXCLR   
       INC    $80     
       LDA    $F2     
       BMI    LF426   
       DEC    $F2     
LF426: LDA    $D1     
       BEQ    LF466   
       LDA    $80     
       LSR            
       BCS    LF466   
       LDX    $F0     
       BMI    LF440   
       INC    $CD     
       LDA    $CD     
       EOR    #$43    
       BNE    LF466   
       DEC    $F0     
       JMP    LF466   
LF440: LDA    $EE     
       BMI    LF458   
       LDA    $EF     
       BEQ    LF466   
       DEC    $CD     
       BMI    LF454   
       LDA    #$25    
       JSR    LFCAE   
       JMP    LF466   
LF454: LDA    #$00    
       STA    $CD     
LF458: LDA    $80     
       AND    #$1F    
       BNE    LF466   
       DEC    $CD     
       BPL    LF466   
       LDA    #$00    
       STA    $CD     
LF466: LDA    $DB     
       BMI    LF47A   
       DEC    $DB     
       BPL    LF47A   
       DEC    $CE     
       BNE    LF480   
       LDX    #$00    
       STX    $EF     
       LDA    #$11    
       STA    $EE     
LF47A: LDA    $EE     
       BEQ    LF495   
       BNE    LF483   
LF480: JSR    LF63E   
LF483: LDA    SWCHB   
       CMP    $CF     
       BEQ    LF4DD   
       STA    $CF     
       LSR            
       BCS    LF4A6   
       LDA    $D1     
       BEQ    LF4DD   
       BNE    LF499   
LF495: LDA    $EF     
       BNE    LF4BF   
LF499: LDA    #$03    
       STA    $CE     
       LDA    #$00    
       STA    $D1     
       STA    $D2     
       JMP    LF4DA   
LF4A6: LSR            
       BCS    LF4DD   
LF4A9: LDA    $EE     
       BPL    LF4DD   
       LDA    $D1     
       CMP    #$10    
       BCS    LF4DD   
       LDA    #$00    
       STA    $C7     
       STA    $C8     
       STA    $C9     
       LDA    #$03    
       STA    $CE     
LF4BF: LDA    #$00    
       STA    $DA     
       STA    $DD     
       SED            
       LDA    $D2     
       CLC            
       ADC    #$01    
       STA    $D2     
       CLD            
       INC    $D1     
       LDA    $D1     
       EOR    #$15    
       BNE    LF4DA   
       STA    $D1     
       STA    $D2     
LF4DA: JSR    LF63E   
LF4DD: LDA    $D1     
       BNE    LF4EC   
       .byte $A7 ;.LAX
       .byte $0C ;.NOP
       CMP    $D0     
       BEQ    LF4EC   
       STA    $D0     
       TXA            
       BPL    LF4A9   
LF4EC: LDA    $80     
       AND    #$01    
       TAX            
       BNE    LF51A   
       LDA    $D1     
       BEQ    LF51A   
       LDA    $DB     
       BPL    LF51A   
       LDA    $EE     
       BPL    LF51A   
       LDA    $DC     
       BPL    LF518   
       LDA    SWCHA   
       ASL            
       BCS    LF50B   
       INC    $C0     
LF50B: ASL            
       BCS    LF510   
       DEC    $C0     
LF510: ASL            
       BCS    LF515   
       DEC    $BF     
LF515: ASL            
       BCS    LF51A   
LF518: INC    $BF     
LF51A: LDA    $80     
       AND    #$02    
       BNE    LF540   
       LDA    $E0,X   
       CLC            
       ADC    $E6,X   
       STA    $E0,X   
       LDA    $E2,X   
       LDY    $E6,X   
       BMI    LF52F   
       LDA    $E4,X   
LF52F: CMP    $E0,X   
       BNE    LF540   
       TYA            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $E6,X   
       LDY    #$01    
       JSR    LFF27   
LF540: LDA    $DE,X   
       STA    $C5     
       LDA    $E0,X   
       STA    $C6     
       LDA    $B6     
       BEQ    LF563   
       LDA    $80     
       AND    #$0F    
       BNE    LF563   
       INC    $8C     
       LDA    $8C     
       AND    #$0F    
       STA    $8C     
       TAX            
       LDA    LF7FB,X 
       CLC            
       ADC    $BF     
       STA    $BF     
LF563: LDA    $BF     
       CMP    #$15    
       BCS    LF56B   
       LDA    #$15    
LF56B: CMP    #$9E    
       BCC    LF571   
       LDA    #$9D    
LF571: STA    $BF     
       LDA    #$8E    
       CMP    $C0     
       BCS    LF57B   
       STA    $C0     
LF57B: LDA    $80     
       AND    #$07    
       BNE    LF592   
       LDA    $DB     
       ORA    LF592   
       BPL    LF592   
       INC    $82     
       LDA    $82     
       EOR    #$0E    
       BNE    LF592   
       STA    $82     
LF592: INC    $E8     
       LDA    $E8     
       EOR    #$10    
       BNE    LF619   
       STA    $E8     
       LDA    $D1     
       BNE    LF5F2   
       LDX    #$01    
       LDA    $ED     
       BNE    LF5B5   
       DEX            
       LDA    $E9     
       CMP    #$03    
       BNE    LF5B5   
       LDA    $EB     
       CMP    #$04    
       BNE    LF5B5   
       DEC    $ED     
LF5B5: TXA            
       LDA    LFC00,X 
       CLC            
       ADC    $E9,X   
       TAY            
       LDA    LFC00,Y 
       CLC            
       ADC    $EB,X   
       TAY            
       LDA    LFC00,Y 
       BEQ    LF5D8   
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF13,Y 
       STA    AUDC0,X 
       LDA    #$0A    
LF5D8: STA    AUDV0,X 
       INC    $EB,X   
       LDA    $EB,X   
       EOR    #$08    
       BNE    LF5EC   
       STA    $EB,X   
       INC    $E9,X   
       LDA    $E9,X   
       AND    #$07    
       STA    $E9,X   
LF5EC: DEX            
       BPL    LF5B5   
       JMP    LF619   
LF5F2: LDA    $EE     
       BMI    LF619   
       LDX    #$00    
       STX    AUDV1   
       LDX    $EF     
       CLC            
       ADC    LFC62,X 
       TAX            
       LDA    LFC62,X 
       BEQ    LF615   
       STA    AUDF0   
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF13,Y 
       STA    AUDC0   
       LDA    #$0A    
LF615: STA    AUDV0   
       DEC    $EE     
LF619: LDA    $D1     
       BEQ    LF62A   
       LDA    $EE     
       BPL    LF62A   
       LDX    #$01    
       JSR    LFCD4   
       DEX            
       JSR    LFCD4   
LF62A: LDA    INTIM   
       BNE    LF62A   
       JMP    LF189   
LF632: STA    $FB     
       CPX    $FB     
       BEQ    LF63D   
       DEX            
       BCS    LF63D   
       INX            
       INX            
LF63D: RTS            

LF63E: LDX    #$FF    
       STX    $EE     
       STX    $F2     
       STX    $DB     
       STX    $DC     
       INX            
       STX    $8C     
       STX    $F0     
       STX    $EA     
       STX    $EC     
       STX    $E9     
       STX    $EB     
       STX    $ED     
       STX    AUDV0   
       STX    AUDV1   
       STX    $F3     
       STX    $F4     
       INX            
       STX    $F1     
       LDA    #$0A    
       STA    $81     
       LDX    $D1     
       STX    $CD     
       LDY    LFB43,X 
       LDX    #$03    
LF66F: LDA    LFA01,Y 
       STA    $B3,X   
       DEY            
       DEX            
       BPL    LF66F   
       LDX    $B5     
       LDY    LFB68,X 
       LDX    #$09    
LF67F: LDA    LFAFD,Y 
       STA    $DE,X   
       DEY            
       DEX            
       BPL    LF67F   
       LDA    $80     
       ORA    #$02    
       STA    $80     
       LDX    $B3     
       LDY    LFB5F,X 
       LDX    #$0D    
LF695: LDA    LFA55,Y 
       STA    $B7,X   
       DEY            
       DEX            
       BPL    LF695   
       LDX    $B4     
       LDY    LFB58,X 
       LDX    #$05    
LF6A5: LDA    LFAD3,Y 
       STA    $D3,X   
       DEY            
       DEX            
       BPL    LF6A5   
       LDA    $D4     
       SEC            
       SBC    #$01    
LF6B3: LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       ASL            
       TAX            
       LDA    $B7,X   
       STA    $FB     
       LDA    $B8,X   
       STA    $FC     
       LDA    #$99    
       STA    $B7,X   
       LDA    #$00    
       STA    $B8,X   
       LDY    #$19    
LF6CC: LDA    ($FB),Y 
       STA.wy $0099,Y 
       DEY            
       BPL    LF6CC   
       LDX    $D3     
       LDA    LFE00,X 
       TAX            
       LDY    #$05    
LF6DC: LDA    $99,X   
       AND    $D8     
       STA    $99,X   
       DEX            
       DEY            
       BPL    LF6DC   
       RTS            

LF6E7: .byte $00,$30,$7A,$6A,$6B,$7B,$7B,$73,$5A,$5A,$7B,$73,$01,$00,$06,$07
       .byte $0F,$09,$08,$08,$09,$0F,$0F,$07,$03,$00
LF701: .byte $00,$01,$02,$03,$04,$05,$06,$07,$08,$07,$06,$05,$04,$03,$02,$01
       .byte $00,$E0,$FD,$3D,$25,$25,$65,$6D,$6D,$6D,$6D,$0D,$00,$18,$5A,$5A
       .byte $DA,$CE,$DE,$DA,$5A,$5A,$DE,$DE,$8C,$00,$00,$80,$81,$33,$73,$7F
       .byte $FE,$DE,$DE,$DE,$D3,$73,$60,$00,$B8,$BE,$BE,$98,$9C,$8D,$8D,$BD
       .byte $BD,$9D,$01,$00,$00,$40,$49,$69,$6B,$7B,$7B,$7B,$5B,$59,$49,$08
       .byte $00,$00,$00,$03,$03,$03,$03,$03,$07,$07,$05,$04,$04,$00,$FF,$FF
       .byte $FE,$F8,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F8,$F8,$F0,$F0,$F0,$FC
       .byte $FF,$FF,$FF,$E0,$E0,$E0,$E0,$E0,$FF,$07,$00,$00,$00,$00,$08,$FC
       .byte $E0,$00,$00,$00,$00,$81,$C3,$7C,$38,$10,$01,$01,$03,$00,$C0,$C0
       .byte $E0,$F8,$80,$00,$00,$00,$00,$07,$1F,$FE,$FC,$18,$00,$00,$00,$00
       .byte $02,$3C,$3C,$0C,$04,$02,$00,$80,$C0,$C0,$FC,$FF,$E0,$E0,$E0,$E0
       .byte $E0,$FF,$FF,$FE,$FC,$FC,$F8,$F0,$F0,$F0,$F0,$F8,$F8,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F8,$FE,$FF,$80,$00,$00,$00,$00,$07,$1F,$FE,$FC,$18
       .byte $00,$00,$00,$00,$02,$3C,$1C,$0C,$04,$00,$00,$80,$C0,$C0,$FC,$FF
       .byte $E0,$E0,$E0,$E0,$E0,$FF,$FF,$FF,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F8
       .byte $F8,$F0,$F0,$F0,$F0,$F0,$F8,$F8,$FF,$FF
LF7FB: .byte $FF,$01,$01,$01,$01,$01,$01,$01,$01,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $C0,$80,$00,$00,$00,$07,$1F,$1F,$0E,$06,$06,$06,$06,$8E,$FE,$FE
       .byte $3E,$0E,$06,$00,$00,$C0,$E0,$E0,$F0,$FF,$FF,$81,$00,$00,$00,$00
       .byte $20,$78,$EF,$47,$00,$00,$00,$00,$F8,$1C,$0E,$06,$01,$00,$C0,$E0
       .byte $F0,$F0,$F8,$FF,$FF,$FF,$FE,$FE,$F8,$F0,$F0,$F8,$F8,$F0,$F0,$F0
       .byte $F0,$F8,$FC,$F8,$F0,$F0,$F0,$F0,$F0,$F0,$F8,$FC,$FF,$FF,$C0,$80
       .byte $00,$00,$00,$07,$1F,$1F,$0E,$06,$06,$06,$06,$8E,$FE,$FF,$3F,$0F
       .byte $06,$02,$00,$C0,$E0,$E0,$F0,$FF,$FF,$81,$00,$00,$00,$00,$20,$78
       .byte $EF,$47,$02,$00,$00,$00,$F8,$1C,$0E,$06,$03,$00,$C0,$E0,$F0,$F0
       .byte $F8,$FF,$FF,$FC,$F8,$F0,$F0,$F0,$F0,$F0,$F8,$F8,$FC,$FF,$FF,$FE
       .byte $FE,$FC,$F0,$F0,$F0,$F8,$F8,$F0,$F0,$F0,$F8,$FF,$FF,$3C,$00,$00
       .byte $00,$00,$C2,$FE,$FE,$FC,$C0,$80,$00,$20,$60,$E0,$F8,$FE,$0E,$02
       .byte $00,$00,$60,$E0,$F0,$FF,$FF,$00,$00,$00,$20,$FE,$E0,$80,$80,$80
       .byte $C0,$C0,$80,$00,$00,$00,$80,$FF,$7F,$1F,$00,$00,$00,$00,$80,$FF
       .byte $FF,$FC,$F8,$F0,$F0,$F8,$F0,$F0,$F8,$FC,$FF,$FF,$E0,$E0,$E0,$E0
       .byte $E0,$FF,$FF,$FF,$E0,$E0,$E0,$E0,$E0,$FF
LF8F5: .byte $0F,$15,$22,$28,$2F,$36,$3D,$1B,$4A,$44,$51,$58,$5F,$66,$FF,$FC
       .byte $F8,$F0,$F0,$F8,$F0,$F0,$F8,$F8,$FC,$FF,$FF,$FE,$FE,$FC,$F0,$F0
       .byte $F0,$F8,$FC,$F0,$F0,$F0,$F8,$FF
LF91D: .byte $1E,$80,$80,$80,$80,$80,$80,$80,$70,$5F,$4F,$3F,$2F,$1E,$1E,$1E
       .byte $1E,$90,$A0,$A0,$FF,$3C,$10,$00,$00,$00,$C2,$FE,$FE,$FC,$C0,$80
       .byte $01,$20,$60,$E0,$F8,$FE,$0F,$02,$00,$00,$60,$E0,$F0,$FF,$FF,$FF
       .byte $FE,$FC,$F8,$F8,$F0,$F0,$C0,$80,$80,$80,$C0,$F0,$F0,$F8,$F8,$F8
       .byte $F8,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$E0,$C0,$80,$00,$00,$38
       .byte $3C,$7F,$FF,$FF,$FE,$FC,$FC,$F0,$F0,$F0,$F0,$E0,$C0,$00,$00,$01
       .byte $01,$01,$FF,$FF,$FF,$FF,$FF,$7F,$1E,$0E,$07,$07,$06,$06,$03,$83
       .byte $83,$83,$C3,$C3,$C3,$C0,$E0,$F0,$F0,$F8,$FF,$FF,$83,$83,$83,$83
       .byte $83,$C0,$E0,$E0,$F0,$F0,$F0,$E0,$E0,$E1,$E1,$F1,$F1,$E1,$E0,$E0
       .byte $F0,$F0,$F8,$FC,$FF,$FF,$FF,$FF,$FE,$FC,$F8,$F0,$E0,$C0,$C1,$C1
       .byte $C0,$C0,$C0,$C0,$C0,$C0,$C1,$C2,$C2,$E2,$F1,$F0,$F8,$FC,$FF,$FF
       .byte $80,$80,$80,$80,$C0,$F0,$3C,$0F,$03,$01,$80,$C0,$C0,$C0,$80,$00
       .byte $03,$04,$04,$04,$03,$50,$28,$94,$52,$FF,$80,$80,$80,$80,$C0,$F0
       .byte $3C,$0F,$03,$01,$C0,$20,$E0,$E0,$C0,$00,$03,$04,$04,$04,$03,$50
       .byte $88,$24,$12,$FF
LFA01: .byte $00,$01,$01,$00,$01,$00,$02,$00,$02,$00,$03,$00,$03,$00,$00,$00
       .byte $01,$00,$02,$FF,$04,$05,$00,$00,$05,$00,$00,$00,$04,$00,$00,$FF
       .byte $06,$00,$04,$00,$01,$06,$02,$00,$02,$02,$03,$00,$03,$03,$00,$00
       .byte $01,$02,$02,$FF,$04,$04,$00,$00,$05,$03,$00,$00,$04,$03,$00,$FF
       .byte $06,$00,$04,$FF,$07,$00,$00,$00,$07,$00,$05,$00,$07,$00,$05
LFA50: .byte $FF
LFA51: .byte $08,$00,$06,$00
LFA55: .byte $E7,$F6,$11,$F7,$2B,$F7,$45,$F7,$72,$8A,$42,$AA,$00,$00,$5F,$F7
       .byte $79,$F7,$93,$F7,$AD,$F7,$18,$80,$42,$AA,$9E,$32,$5F,$F7,$79,$F7
       .byte $C7,$F7,$AD,$F7,$18,$80,$42,$AA,$9E,$32,$E1,$F7,$0B,$F8,$25,$F8
       .byte $3F,$F8,$18,$2B,$54,$CA,$54,$35,$E1,$F7,$59,$F8,$73,$F8,$3F,$F8
       .byte $18,$2B,$54,$CA,$54,$35,$8D,$F8,$A7,$F8,$C1,$F8,$DB,$F8,$90,$7D
       .byte $1E,$6A,$6A,$88,$03,$F9,$31,$F9,$C1,$F8,$DB,$F8,$90,$7D,$1E,$6A
       .byte $6A,$88,$4B,$F9,$65,$F9,$7F,$F9,$99,$F9,$9C,$48,$42,$AA,$1C,$8E
       .byte $B3,$F9,$CD,$F9,$E7,$F9,$B3,$F9,$18,$48,$1E,$CA,$1C,$67
LFAD3: .byte $00,$00,$00,$00,$00,$FF,$4A,$17,$10,$6D,$FD,$FF,$27,$1F,$10,$6D
       .byte $FD,$EF,$4E,$7F,$10,$6D,$FD,$EF,$27,$3B,$10,$6D,$FD,$FB,$4E,$4C
       .byte $0C,$EF,$FF,$FF,$20,$80,$0C,$EF,$FF,$FF
LFAFD: .byte $00,$00,$14,$14,$00,$00,$00,$00,$00,$00,$01,$01,$64,$64,$58,$58
       .byte $88,$88,$01,$01,$06,$06,$3C,$3C,$00,$00,$00,$00,$00,$00,$06,$13
       .byte $3C,$6C,$24,$38,$3C,$6C,$FF,$FF,$01,$01,$6C,$6C,$00,$00,$00,$00
       .byte $00,$00,$0A,$10,$28,$32,$18,$28,$30,$40,$FF,$FF,$11,$11,$74,$38
       .byte $6C,$30,$74,$38,$FF,$FF
LFB43: .byte $03,$07,$0B,$0F,$13,$17,$1B,$1F,$23,$27,$2B,$2F,$33,$37,$3B,$3F
       .byte $43,$47,$4B,$4F,$53
LFB58: .byte $05,$0B,$11,$17,$1D,$23,$29
LFB5F: .byte $0D,$1B,$29,$37,$45,$53,$61,$6F,$7D
LFB68: .byte $09,$13,$1D,$27,$31,$3B,$45
LFB6F: .byte $00,$76,$66,$56
LFB73: LDY    $FC     
       NOP            
       NOP            
       LDA    ($8D),Y 
       STA    WSYNC   
       STA.w  $001B   
       LDA    ($8F),Y 
       STA    GRP1    
       LDA    ($91),Y 
       STA    GRP0    
       LDA    ($93),Y 
       STA    $FB     
       .byte $B3 ;.LAX
       STA    $B1,X   
       .byte $97 ;.SAX
       LDY    $FB     
       STY    GRP1    
       STX    GRP0    
       STA    GRP1    
       STA    GRP0    
       DEC    $FC     
       BPL    LFB73   
       LDY    #$00    
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       LDA    $C1     
       STA    COLUP0  
       LDX    #$05    
       LDY    #$42    
       LDA    $D7     
       CMP    #$FF    
       BEQ    LFBC4   
       LDX    #$00    
       LDY    $C2     
       LDA    $DA     
       BEQ    LFBC4   
       LDY    #$1E    
LFBC4: STY    COLUP1  
       STX    NUSIZ1  
       LDA    $D4     
       CMP    #$50    
       BCS    LFBD2   
       LDA    #$08    
       STA    REFP1   
LFBD2: LDA    $C0     
       SEC            
       STA    WSYNC   
LFBD7: SBC    #$0F    
       BCS    LFBD7   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    RESP0   
       LDX    #$01    
       LDA    $D4     
LFBE9: SEC            
       STA    WSYNC   
LFBEC: SBC    #$0F    
       BCS    LFBEC   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFBFF: .byte $FF
LFC00: .byte $02,$2A,$0A,$12,$1A,$0A,$0A,$12,$22,$1A,$DF,$BF,$D4,$BF,$DF,$BF
       .byte $D4,$D8,$D7,$B7,$DF,$B7,$D7,$B7,$DF,$D8,$D4,$B4,$DB,$B4,$D4,$B4
       .byte $DB,$D8,$DB,$BD,$D2,$BD,$DB,$BD,$D2,$D7,$4A,$32,$3A,$42,$4A,$32
       .byte $52,$5A,$AF,$B1,$AF,$AE,$AE,$AE,$AF,$B3,$B3,$B1,$AF,$AE,$AE,$AC
       .byte $AB,$AB,$AB,$AE,$AF,$B1,$B1,$B1,$B1,$B1,$BA,$B7,$B4,$B3,$B3,$B3
       .byte $B1,$AF,$B3,$B4,$B7,$BA,$BA,$BA,$B7,$AF,$AF,$AF,$AF,$B1,$B3,$B3
       .byte $B3,$B3
LFC62: .byte $16,$02,$00,$00,$00,$AC,$AC,$AC,$1A,$1D,$1F,$1D,$1F,$AB,$AC,$AC
       .byte $1D,$AB,$B3,$B3,$AC,$AC,$00,$00,$00,$B0,$B0,$B0,$B1,$AD,$AA,$AD
       .byte $AD,$AD,$AE,$AE,$B0,$B0,$B0,$B0
LFC8A: .byte $00,$00,$01,$00,$00,$01
LFC90: .byte $00,$00,$00,$00,$00,$01
LFC96: .byte $07,$04,$08,$0C,$0C,$08
LFC9C: .byte $BF,$2F,$3F,$14,$1E,$9F
LFCA2: .byte $5F,$3F,$77,$1F,$1F,$FF
LFCA8: .byte $07,$03,$0F,$01,$01,$3F
LFCAE: SED            
       CLC            
       ADC    $C9     
       STA    $C9     
       LDA    #$00    
LFCB6: ADC    $C8     
       STA    $C8     
       BCC    LFCC4   
       LDA    #$00    
       ADC    $C7     
       STA    $C7     
       INC    $CE     
LFCC4: CLD            
       RTS            

LFCC6: .byte $02,$02,$18,$2E,$44,$5A,$70,$86,$86,$70,$5A,$44,$2E,$18
LFCD4: LDY    $F5,X   
       DEC    $F3,X   
       BPL    LFCE2   
       INC    $F3,X   
       LDA    #$00    
       STA    AUDV0,X 
       BEQ    LFD00   
LFCE2: LDY    $F5,X   
       LDA    $F7,X   
       CLC            
       ADC    LFC8A,Y 
       STA    $F7,X   
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       LDA    $F9,X   
       CLC            
       ADC    LFC90,Y 
       AND    #$7F    
       STA    $F9,X   
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
LFD00: RTS            

LFD01: .byte $FB,$FB,$FC,$FD,$00,$03,$04,$05,$05,$04,$03,$00,$FD,$FC,$38,$44
       .byte $44,$44,$44,$44,$38,$10,$10,$10,$10,$30,$10,$10,$10,$10,$08,$04
       .byte $7C,$7C,$40,$20,$18,$04,$44,$38,$44,$04,$18,$08,$04,$7C,$08,$08
       .byte $7C,$48,$28,$18,$08,$38,$44,$04,$04,$78,$40,$7C,$38,$44,$44,$78
       .byte $40,$20,$1C,$70,$08,$04,$3C,$44,$44,$38,$44,$44,$38,$44,$44,$38
       .byte $F3,$82,$82,$83,$82,$82,$83,$C2,$05,$08,$88,$08,$08,$C8,$1E,$10
       .byte $90,$9C,$90,$90,$9E,$78,$40,$40,$40,$40,$40,$40,$03,$07,$07,$01
       .byte $07,$07,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$07,$07,$01
       .byte $01,$01,$07,$07,$0F,$07,$03,$01,$01,$05,$01,$07,$07,$03,$07,$07
       .byte $13,$07,$07,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$07,$27
       .byte $13,$27,$07,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$47,$27
       .byte $03,$27,$47,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$83,$47
       .byte $07,$03,$07,$47,$8F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$07
       .byte $07,$03,$07,$07,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03,$07
       .byte $07,$01,$01,$07,$07,$0F,$07,$03,$01,$01,$05,$01,$07,$07,$03,$07
       .byte $01,$01,$07,$07,$0F,$07,$07,$03,$01,$05,$01,$01,$07,$07,$03
LFE00: .byte $00
LFE01: .byte $00,$00,$00,$00,$01,$01,$01,$02,$02,$02,$03,$03,$03,$04,$04,$04
       .byte $05,$05,$05,$06,$06,$06,$07,$07,$07,$08,$08,$08,$09,$09,$09,$0A
       .byte $0A,$0A,$0B,$0B,$0B,$0C,$0C,$0C,$0D,$0D,$0D,$0E,$0E,$0E,$0F,$0F
       .byte $0F,$10,$10,$10,$11,$11,$11,$12,$12,$12,$13,$13,$13,$14,$14,$14
       .byte $15,$15,$15,$16,$16,$16,$17,$17,$17,$18,$18,$18,$19,$19,$19,$00
       .byte $00,$F0,$F0,$F0,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0,$00
       .byte $00,$00,$00,$00,$50,$00,$00,$F0,$F0,$F0,$F0,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$00,$00,$00,$00,$F0
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$00,$00,$F0,$00,$00,$00
       .byte $30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$10,$00,$00,$10,$00,$00,$00,$D0,$00,$00,$10
       .byte $10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$C0,$00,$00,$10,$10,$10,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$10,$10,$00,$00,$00,$00,$00,$B0,$00
LFEEB: .byte $00,$80,$C0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF
LFEFD: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$07,$0F,$1F,$3F,$7F
       .byte $FF,$FF
LFF0F: .byte $00,$80,$C0,$E0
LFF13: .byte $04,$06,$07,$08,$0F,$0C,$01,$03
LFF1B: .byte $10,$38,$7C,$7C,$7C,$7C,$38,$10
LFF23: .byte $00,$00,$01,$03
LFF27: LDA    $EE     
       BPL    LFF4F   
       LDA    $D1     
       BEQ    LFF4F   
       LDX    #$01    
       LDA    $F3     
       CMP    $F4     
       BCS    LFF39   
       LDX    #$00    
LFF39: LDA    LFC96,Y 
       STA    AUDC0,X 
       LDA    LFC9C,Y 
       STA    $F7,X   
       LDA    LFCA2,Y 
       STA    $F9,X   
       LDA    LFCA8,Y 
       STA    $F3,X   
       STY    $F5,X   
LFF4F: RTS            

LFF50: .byte $00,$10,$10,$10,$10,$10,$10,$38,$7C,$7C,$10,$00,$00,$38,$10,$10
       .byte $10,$10,$10,$7C,$7C,$38,$00,$10,$10,$10,$10,$10,$10,$7C,$7C,$38
       .byte $00,$00,$00,$38,$10,$10,$10,$10,$38,$7C,$7C,$10,$00,$10,$10,$10
       .byte $10,$10,$38,$7C,$7C,$10,$00,$00,$00,$38,$10,$10,$10,$10,$7C,$7C
       .byte $38,$00,$00,$10,$10,$10,$10,$38,$7C,$7C,$10,$00,$00,$00,$00,$38
       .byte $10,$10,$10,$7C,$7C,$38,$00,$00,$00,$38,$7C,$5C,$10,$00,$00,$10
       .byte $6C,$64,$38,$00,$00,$08,$74,$4C,$10,$00,$00,$10,$4C,$20,$18,$00
       .byte $00,$44,$52,$20,$92,$00,$00,$AA,$10,$88,$44,$00,$00,$38,$7C,$7C
       .byte $10,$00,$00,$10,$7C,$7C,$38,$00,$00,$00,$00,$00
LFFDC: .byte $44,$44,$2E,$18,$02,$18,$2E,$44,$44,$2E,$18,$02,$18,$2E,$72,$66
       .byte $5A,$89,$7E,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$C3,$FF,$FF,$7E
       .byte $53,$F1,$53,$F1
