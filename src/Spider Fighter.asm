; Disassembly of roms/Spider Fighter.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Spider Fighter.bin
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
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDV0   =  $19
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
CXP0FB  =  $32
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
LFD20   =   $FD20

       ORG $F000
LF000: .byte $A9,$AE,$E5,$EC,$85,$8D,$4C,$11,$F0,$E6,$FF,$BE,$7C,$FB,$9D,$00
       .byte $00,$C8,$B1,$F5,$85,$1C,$B9,$7D,$FB,$85,$F9,$B1,$F1,$AA,$B1,$F3
       .byte $6C,$F9,$00,$E6,$FF,$C8,$B1,$F5,$85,$1C,$BE,$7B,$FB,$9D,$00,$00
       .byte $10,$E4,$E6,$FF,$EA,$EA,$C8,$B1,$F5,$85,$1C,$B9,$7D,$FB,$85,$F9
       .byte $BE,$7B,$FB,$95,$00,$10,$D4,$E6,$FF,$E6,$FF,$C8,$B1,$F5,$85,$1C
       .byte $B9,$7D,$FB,$85,$F9,$B1,$F1,$AA,$9A,$B1,$F3,$BE,$7B,$FB,$95,$00
       .byte $BA,$6C,$F9,$00
LF064: STA    WSYNC   
       LDA    #$FE    
       STA    $F0     
       STX    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$E0    
       STA    VDELP1  
       STX    COLUP0  
       STY    HMP1    
       DEY            
       STA.w  $0025   
       STY    HMP0    
       STY    RESP0   
       STY    RESP1   
       LDY    #$04    
LF086: DEY            
       BNE    LF086   
       STA.w  $002A   
       STY    GRP1    
       STY    GRP0    
       RTS            

LF091: STA    $F3     
       STA    $F5     
       STY    $F4     
       STY    $F6     
       LDA    LFD58,X 
       STA    NUSIZ0  
       STA    $EC     
       BMI    LF0D5   
       LSR            
       LSR            
       LSR            
       STA    NUSIZ1  
       LDY    #$00    
LF0A9: LDA    ($F5),Y 
       BIT    $EC     
       BVC    LF0B1   
       LDA    #$00    
LF0B1: STA    GRP1    
       LDA    $F1     
       BNE    LF0B9   
       LDA    ($EF),Y 
LF0B9: STA    WSYNC   
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($F3),Y 
       STA    GRP0    
       INY            
       CPY    $ED     
       BNE    LF0A9   
LF0C8: LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    HMCLR   
       RTS            

LF0D5: LDY    $ED     
LF0D7: STA    WSYNC   
       DEY            
       BNE    LF0D7   
       BEQ    LF0C8   
LF0DE: SEC            
       STX    $EC     
       LDX    #$0B    
LF0E3: STY    $F2,X   
       DEX            
       STA    $F2,X   
       SBC    $EC     
       DEX            
       BPL    LF0E3   
       LDX    #$0A    
       JMP    LFFBF   
LF0F2: .byte $C8,$B1,$F5,$85,$1C,$B1,$F1,$AA,$B1,$F3,$85,$02,$85,$1B,$86,$07
       .byte $B1,$EF,$85,$06,$B1,$8D,$85,$08,$85,$1F,$4C,$25,$F1
LF10F: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STX    COLUP1  
       LDA    ($EF),Y 
       STA    COLUP0  
       LDA    ($8D),Y 
       STA    COLUPF  
       STA    ENABL   
       STA    HMCLR   
       INC    $80     
       DEC    $FB     
       STY    $EC     
       INC    $9D     
       INY            
       LDA    ($F5),Y 
       STA    GRP1    
       LDA    ($F1),Y 
       TAX            
       LDA    ($F3),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP1  
       LDA    ($EF),Y 
       STA    COLUP0  
       LDX    $9D     
       LDA    LFF26,X 
       AND    #$0F    
       TAX            
       LDA    $AD,X   
       STA    $F7     
       LDA    $A1,X   
       STA    HMBL    
       LDA    $FB     
       BPL    LF157   
       LDA    #$02    
       STA    $FB     
LF157: CLC            
       INY            
       LDA    ($F5),Y 
       STA    GRP1    
       LDA    ($F1),Y 
       TAX            
       LDA    ($F3),Y 
       STA    WSYNC   
       STA    GRP0    
       STX    COLUP1  
       LDA    ($EF),Y 
       STA    COLUP0  
       LDA    ($8D),Y 
       STA    COLUPF  
       STA    ENABL   
       LDA    $FB     
       ADC    $9E     
       TAX            
       LDA    LFF00,X 
       SBC    $EC     
       STA    $8D     
       INY            
       LDA    ($F5),Y 
       STA    GRP1    
       LDA    ($F1),Y 
       TAX            
       LDA    ($F3),Y 
       NOP            
       NOP            
       NOP            
       STY    ENABL   
       STA    GRP0    
       STX    COLUP1  
       LDA    ($EF),Y 
       STA    COLUP0  
       JMP.ind ($00F7)
LF198: .byte $85,$02,$85,$2A,$85,$1B,$86,$07,$B1,$EF,$85,$06,$B1,$8D,$85,$08
       .byte $85,$1F,$4C,$28,$F2,$4C,$1D,$FA,$85,$02,$85,$2A,$85,$1B,$86,$07
       .byte $B1,$EF,$85,$06,$B1,$8D,$85,$08,$85,$1F,$85,$2B,$A6,$80,$B5,$CB
       .byte $F0,$E3,$85,$20,$B5,$D1,$85,$F7,$C8,$B1,$F5,$85,$1C,$B1,$F1,$AA
       .byte $B1,$F3,$85,$02,$85,$1B,$86,$07,$B1,$EF,$85,$06,$A6,$80,$B5,$D6
       .byte $85,$EF,$C8,$B1,$F5,$85,$1C,$B1,$F1,$AA,$B1,$F3,$85,$02,$85,$1B
       .byte $86,$07,$B1,$EF,$45,$8C,$85,$06,$B1,$8D,$85,$08,$85,$1F,$A6,$80
       .byte $B5,$E6,$85,$F4,$B5,$E1,$85,$F3,$E6,$FF,$EA,$C8,$B1,$F5,$85,$1C
       .byte $B1,$F1,$AA,$B1,$F3,$85,$1B,$86,$07,$B1,$EF,$85,$06,$6C,$F7,$00
       .byte $85,$2B,$C8,$B1,$F5,$85,$1C,$B1,$F1,$AA,$B1,$F3,$85,$02,$85,$1B
       .byte $86,$07,$B1,$EF,$85,$06,$C4,$82,$90,$08,$C4,$83,$B0,$04,$A5,$E1
       .byte $D0,$05,$98,$E9,$AF,$49,$FF,$85,$F5,$C8,$B1,$F5,$85,$1C,$B1,$F1
       .byte $AA,$B1,$F3,$85,$02,$85,$1B,$86,$07,$B1,$EF,$85,$06,$B1,$8D,$85
       .byte $08,$85,$1F,$C8,$B1,$F5,$85,$1C,$B1,$F1,$AA,$B1,$F3,$85,$02,$85
       .byte $1B,$86,$07,$B1,$EF,$85,$06,$4C,$F2,$F0
LF282: TXS            
       LDA    #$10    
       STA    CTRLPF  
LF287: LDA    #$1A    
       STA    TIM64T  
       LDA    $90     
       ROL            
       LDA    $8F     
       ROL            
       EOR    $90     
       LDX    $8F     
       STA    $8F     
       STX    $90     
       LDA    $99     
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$A4    
       STA    $85     
       LDX    #$00    
       STX    $84     
       LDA    $B9     
       BPL    LF2C0   
       ASL            
       AND    #$E0    
       ORA    #$13    
       TAY            
       LDA    $B9     
       AND    #$04    
       BNE    LF2BC   
       STY    $85     
       BEQ    LF2C0   
LF2BC: STY    $84     
       STX    $85     
LF2C0: LDA    $EB     
       CMP    #$04    
       BEQ    LF2E6   
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BEQ    LF2E6   
       LDA    #$00    
       LDX    #$2D    
LF2D3: STA    $91,X   
       DEX            
       BPL    LF2D3   
       LDA    #$04    
       STA    $8B     
       LDA    #$84    
       STA    $EB     
       LDA    #$44    
       STA    $BF     
       BNE    LF2FF   
LF2E6: LDA    $8A     
       BNE    LF315   
       LDY    SWCHA   
       INY            
       BEQ    LF2F2   
       STX    $B9     
LF2F2: LDX    #$08    
       STX    $99     
       LDX    #$04    
       STX    $88     
       STX    $8B     
       DEX            
       STX    $89     
LF2FF: LDX    $E0     
       LDA    $BF     
       CMP    #$03    
       BCS    LF30B   
       LDX    #$02    
       BNE    LF311   
LF30B: CMP    #$81    
       BCC    LF330   
       LDX    #$FE    
LF311: STX    $E0     
       BNE    LF330   
LF315: BPL    LF319   
       STX    $B9     
LF319: LDA    $BF     
       BIT    SWCHA   
       BMI    LF328   
       INC    $8F     
       CMP    #$81    
       BCS    LF330   
       LDX    #$02    
LF328: BVS    LF330   
       CMP    #$03    
       BCC    LF330   
       LDX    #$FE    
LF330: LDA    $97     
       BNE    LF33F   
       TXA            
       CLC            
       ADC    $BF     
       STA    $BF     
       JSR    LFE53   
       STA    $CA     
LF33F: LDA    $BF     
       CLC            
       ADC    #$04    
       JSR    LFE53   
       STA    $FC     
       AND    #$0F    
       TAX            
       LDY    LFD39,X 
       STY    $FD     
       LDA    SWCHB   
       BMI    LF365   
       LDX    #$05    
LF358: LDA    $FC     
       STA    $A1,X   
       LDA    $AD,X   
       BEQ    LF362   
       STY    $AD,X   
LF362: DEX            
       BPL    LF358   
LF365: LDA    $EB     
       BPL    LF379   
       STA    $A0     
       AND    #$07    
       STA    $EB     
       TAX            
       LDA    LFF5D,X 
       STA    $87     
       LDA    #$40    
       STA    $8A     
LF379: BEQ    LF3A4   
       LDX    $87     
       BNE    LF3A4   
       STX    $BA     
       STX    $EB     
       STX    $86     
       STX    $8A     
       CMP    #$02    
       BNE    LF39B   
       LDY    $89     
       BNE    LF39B   
       DEC    $8B     
       BPL    LF39B   
       LDY    #$81    
       STY    $C0     
       STY    $EB     
       INC    $8B     
LF39B: ROR    $8A     
       LDX    #$04    
       STX    $88     
       DEX            
       STX    $89     
LF3A4: LDA    $9E     
       CLC            
       ADC    #$03    
       CMP    #$24    
       BCC    LF3AF   
       LDA    #$00    
LF3AF: STA    $9E     
       CMP    #$12    
       BCC    LF3B7   
       SBC    #$12    
LF3B7: LSR            
       TAY            
       BEQ    LF3ED   
       LDA    LFB14,Y 
       STA    $9D     
       LDA    $9E     
       CMP    #$15    
       BEQ    LF424   
       CPY    #$03    
       BEQ    LF3D8   
       LDA    $99     
       CMP    #$0C    
       BCC    LF419   
       LDA    $9E     
       AND    #$01    
       BNE    LF3A4   
       BEQ    LF419   
LF3D8: LDX    #$00    
LF3DA: LDA    $A2,X   
       STA    $A1,X   
       LDA    $AE,X   
       STA    $AD,X   
       INX            
       CPX    #$05    
       BNE    LF3DA   
       LDA    #$00    
       STA    $B2     
       BEQ    LF433   
LF3ED: STY    $9D     
       LDA    $97     
       BNE    LF433   
       BIT    $8A     
       BVS    LF433   
       BMI    LF401   
       LDA    $8F     
       AND    #$03    
       BEQ    LF411   
       BNE    LF41C   
LF401: LDA    INPT4   
       BMI    LF41C   
       LDA    $98     
       AND    #$03    
       BEQ    LF433   
       DEC    $98     
       LDA    #$86    
       STA    $9F     
LF411: LDA    $FC     
       STA    $A6     
       LDA    $FD     
       STA    $B2     
LF419: JMP    LF433   
LF41C: LDA    #$03    
       ORA    $98     
       STA    $98     
       BNE    LF419   
LF424: LDX    #$05    
LF426: LDA    $A6,X   
       STA    $A7,X   
       LDA    $B2,X   
       STA    $B3,X   
       DEX            
       BNE    LF426   
       STX    $B3     
LF433: LDA    $9C     
       LSR            
       BCS    LF44F   
       ORA    $8A     
       BNE    LF446   
       LDA    $B9     
       ADC    #$02    
       BNE    LF444   
       LDA    #$80    
LF444: STA    $B9     
LF446: LDA    $87     
       BEQ    LF44C   
       DEC    $87     
LF44C: JMP    LF576   
LF44F: AND    #$07    
       TAX            
       CPX    #$03    
       BCC    LF460   
       BNE    LF45B   
LF458: JMP    LF4EB   
LF45B: CPX    #$06    
       BCS    LF458   
       DEX            
LF460: LDA    $BA,X   
       CMP    #$40    
       BCC    LF476   
       ADC    #$BF    
       STA    $BA,X   
       AND    #$C0    
       BNE    LF480   
       CPX    #$00    
       BNE    LF47E   
       DEC    $88     
       BCS    LF47E   
LF476: LDA    $BA,X   
       CMP    #$02    
       BCC    LF480   
       EOR    #$01    
LF47E: STA    $BA,X   
LF480: TXA            
       SBC    $99     
       ADC    #$04    
       BPL    LF492   
       BIT    SWCHB   
       BVC    LF492   
       LDA    $DB,X   
       ORA    #$80    
       STA    $DB,X   
LF492: LDA    $BA,X   
       AND    #$06    
       BEQ    LF4E8   
       EOR    #$02    
       ORA    $97     
       BNE    LF4BD   
       LDA    $BF     
       SBC    $C0,X   
       BCC    LF4AE   
       CMP    #$1A    
       BCC    LF4BD   
       LDA    $DB,X   
       AND    #$80    
       BCS    LF4B8   
LF4AE: CMP    #$E6    
       BCS    LF4BD   
       LDA    $DB,X   
       AND    #$80    
       ORA    #$08    
LF4B8: STA    $DB,X   
       JMP    LF4D3   
LF4BD: LDA    $BA     
       BNE    LF4D1   
       LDA    $BA,X   
       CMP    #$04    
       BCC    LF4D1   
       LDA    #$02    
       STA    $BA,X   
       LDA    $DB,X   
       ORA    #$80    
       STA    $DB,X   
LF4D1: LDA    $DB,X   
LF4D3: AND    #$0F    
       TAY            
       BIT    $8F     
       BVC    LF4DC   
       INY            
       INY            
LF4DC: DEY            
       TYA            
       AND    #$0F    
       LDY    $DB,X   
       BPL    LF4E6   
       ORA    #$80    
LF4E6: STA    $DB,X   
LF4E8: JMP    LF571   
LF4EB: BIT    $8A     
       BVS    LF4E8   
       LDA    $98     
       SBC    #$04    
       BCC    LF4F9   
       STA    $98     
       BCS    LF4E8   
LF4F9: LDA    $8F     
       ORA    SWCHB   
       AND    #$40    
       BEQ    LF4E8   
       LDX    #$00    
LF504: LDA    $BA,X   
       AND    #$0E    
       BEQ    LF56C   
       STX    $ED     
       STA    $EC     
       LDA    $C5,X   
       LSR            
       LSR            
       LSR            
       ORA    $9D     
       TAX            
       LDA    LFF27,X 
       AND    #$0F    
       CMP    #$06    
       BCS    LF524   
       LDA    LFF28,X 
       AND    #$0F    
LF524: TAY            
       LDA.wy $00AD,Y 
       BNE    LF56A   
       LDA    $99     
       CMP    #$06    
       BCS    LF543   
       LDX    $EC     
       CPX    #$02    
       BEQ    LF53F   
       CMP    #$03    
       BCS    LF53F   
       LDA.wy $00AE,Y 
       BNE    LF571   
LF53F: LDA    $B7     
       BNE    LF571   
LF543: LDX    $ED     
       LDA    $C0,X   
       CMP    #$83    
       BCS    LF54D   
       ADC    #$03    
LF54D: STY    $F7     
       JSR    LFE53   
       LDY    $F7     
       STA.wy $00A1,Y 
       AND    #$0F    
       TAX            
       LDA    LFD39,X 
       STA.wy $00AD,Y 
       LDA    $A0     
       BNE    LF571   
       LDA    #$85    
       STA    $A0     
       BNE    LF571   
LF56A: LDX    $ED     
LF56C: INX            
       CPX    #$05    
       BNE    LF504   
LF571: LDA    #$24    
       JMP    LF70B   
LF576: LDA    $EB     
       BNE    LF5BD   
       LDA    $BA     
       BNE    LF5C0   
       LDA    $BB     
       ORA    $BC     
       ORA    $BD     
       ORA    $BE     
       ORA    $97     
       BNE    LF5BD   
       STA    $86     
       LDA    $88     
       BNE    LF5C4   
       LDA    #$83    
       STA    $EB     
       LDA    #$40    
       STA    $8A     
       INC    $99     
       LDA    $99     
       CMP    #$10    
       BCC    LF5A4   
       SBC    #$04    
       STA    $99     
LF5A4: LDY    $89     
       CPY    #$03    
       BMI    LF5BD   
       LDX    $8B     
       CPX    #$04    
       BPL    LF5B4   
       INC    $8B     
       BPL    LF5BD   
LF5B4: LDY    #$08    
       JSR    LFE00   
       LDA    #$17    
       STA    $B9     
LF5BD: JMP    LF6BE   
LF5C0: LDA    $9B     
       BNE    LF5C7   
LF5C4: JMP    LF673   
LF5C7: CMP    #$03    
       BEQ    LF602   
       BCS    LF615   
       SBC    #$00    
       BEQ    LF5DD   
       LDA    $C5     
       CMP    #$02    
       BCS    LF612   
       DEC    $9B     
       LDA    #$08    
       STA    $DB     
LF5DD: LDX    $C0     
       CPX    #$04    
       BCS    LF612   
       LDX    $97     
       BNE    LF612   
       STA    $9B     
       BIT    $86     
       BVS    LF5EF   
       STA    $86     
LF5EF: DEC    $89     
       BNE    LF5C4   
       LDA    #$82    
       STA    $EB     
       LDX    #$04    
       LDA    #$00    
LF5FB: STA    $BA,X   
       DEX            
       BNE    LF5FB   
       BEQ    LF612   
LF602: LDA    $C0     
       CMP    #$84    
       BCC    LF60E   
       DEC    $9B     
       LDA    #$0C    
       BNE    LF610   
LF60E: LDA    #$00    
LF610: STA    $DB     
LF612: JMP    LF6BE   
LF615: LDA    $9A     
       ASL            
       BEQ    LF693   
       DEC    $9A     
       LDA    $C5     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       INX            
       LDA    $BA,X   
       BNE    LF612   
       LDA    $C5     
       CMP    LFCF3,X 
       BCS    LF612   
       STX    $EC     
       LDA    $99     
       AND    #$07    
       TAY            
       LDA    LFCF8,Y 
LF63A: DEX            
       BEQ    LF641   
       LSR            
       LSR            
       BPL    LF63A   
LF641: AND    #$03    
       BEQ    LF612   
       ASL            
       CMP    #$06    
       BNE    LF652   
       LDX    $86     
       CPX    #$80    
       BEQ    LF612   
       DEC    $86     
LF652: BIT    $86     
       BVC    LF612   
       LDX    $EC     
       STA    $BA,X   
       BIT    SWCHB   
       BVC    LF664   
       TXA            
       SBC    $99     
       ADC    #$07    
LF664: AND    #$80    
       STA    $DB,X   
       LDA    $C0     
       STA    $C0,X   
       LDA    $C5     
       STA    $C5,X   
       JMP    LF6BE   
LF673: LDA    #$08    
       STA    $BA     
       LDA    #$00    
       STA    $9A     
       LDA    #$02    
       STA    $C0     
       STA    $C5     
       LDA    #$82    
       STA    $DB     
       LDA    #$40    
       LDX    $99     
       CPX    #$03    
       BCC    LF68F   
       LDA    #$28    
LF68F: STA    $9B     
       BNE    LF6BE   
LF693: LDX    $DB     
       BCS    LF699   
       INX            
       INX            
LF699: DEX            
       TXA            
       AND    #$0F    
       ORA    #$80    
       STA    $DB     
       LDA    $86     
       BEQ    LF6A7   
       DEC    $9B     
LF6A7: LDA    $8F     
       AND    #$03    
       CLC            
       ADC    #$01    
       ORA    $9A     
       STA    $9A     
       LDA    $8F     
       AND    #$E0    
       BNE    LF6BE   
       LDA    $9A     
       EOR    #$80    
       STA    $9A     
LF6BE: LDX    #$01    
       LDA    $8A     
       BNE    LF6CA   
       STA    $9F     
       STA    AUDC1   
       BEQ    LF706   
LF6CA: LDA    $A0     
       BMI    LF6D6   
       DEC    $EE     
       LDA    $EE     
       AND    #$03    
       BNE    LF706   
LF6D6: LDA    #$04    
       STA    $EE     
LF6DA: LDY    $9F,X   
       TYA            
       BEQ    LF6FC   
       BPL    LF6EC   
       LDA    LFCE2,Y 
       STA    AUDC0,X 
       LDA    LFCAE,Y 
       STA    $9F,X   
       TAY            
LF6EC: LDA    LFB7B,Y 
       ASL            
       STA    AUDV0,X 
       LDA    LFB7B,Y 
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
       BNE    LF702   
LF6FC: STA    $9F,X   
       STA    AUDC0,X 
       BEQ    LF706   
LF702: INC    $9F,X   
       INC    $9F,X   
LF706: DEX            
       BPL    LF6DA   
       LDA    #$10    
LF70B: STA    $81     
       DEC    $9C     
       LDX    #$FF    
       JSR    LFE45   
       LDX    #$04    
LF716: LDA    $BA,X   
       AND    #$0F    
       STA    $F7     
       CMP    #$02    
       BCC    LF73E   
       BIT    $8A     
       BVS    LF73B   
       CPX    #$00    
       BNE    LF72E   
       LDA    $97     
       BNE    LF73B   
       BEQ    LF741   
LF72E: LDA    SWCHB   
       ASL            
       ORA    $DB,X   
       BMI    LF741   
       LDA    $9C     
       LSR            
       BCC    LF741   
LF73B: JMP    LF7B7   
LF73E: JMP    LF7CD   
LF741: LDA    $DB,X   
       BPL    LF749   
       AND    #$0F    
       BPL    LF74E   
LF749: AND    #$0F    
       CLC            
       ADC    $81     
LF74E: STA    $EC     
       TAY            
       CLC            
       LDA    LFF2A,Y 
       AND    #$F0    
       TAY            
       LDA    LFB86,Y 
       ADC    $C0,X   
       BMI    LF771   
       BNE    LF77F   
LF761: LDA    #$01    
       STA    $C0,X   
LF765: SEC            
       LDA    #$18    
       SBC    $DB,X   
       AND    #$8F    
       STA    $DB,X   
       JMP    LF781   
LF771: CMP    #$87    
       BCC    LF77F   
       CMP    #$C0    
       BCS    LF761   
       LDA    #$86    
       STA    $C0,X   
       BNE    LF765   
LF77F: STA    $C0,X   
LF781: LDY    $EC     
       LDA    LFF26,Y 
       AND    #$F0    
       TAY            
       LDA    LFB86,Y 
       CLC            
       ADC    $C5,X   
       CMP    LFCEE,X 
       BCS    LF7A3   
LF794: LDA    LFCEE,X 
       STA    $C5,X   
LF799: SEC            
       LDA    #$10    
       SBC    $DB,X   
       STA    $DB,X   
       JMP    LF7B7   
LF7A3: CMP    LFCF3,X 
       BCC    LF7B5   
       BEQ    LF7B5   
       CMP    #$D0    
       BCS    LF794   
       LDA    LFCF3,X 
       STA    $C5,X   
       BNE    LF799   
LF7B5: STA    $C5,X   
LF7B7: LDY    $F7     
       CPY    #$08    
       BCC    LF7C5   
       LDA    $86     
       BNE    LF7C5   
       LDA    #$7C    
       BNE    LF7C8   
LF7C5: LDA    LFD4E,Y 
LF7C8: CLC            
       SBC    $C5,X   
       STA    $D6,X   
LF7CD: LDA    $C0,X   
       JSR    LFE53   
       STA    $CB,X   
       AND    #$0F    
       TAY            
       LDA    LFD39,Y 
       STA    $D1,X   
       LDY    #$FC    
       LDA    $F7     
       AND    #$06    
       BEQ    LF7E5   
       INY            
LF7E5: STY    $E6,X   
       LDY    $F7     
       LDA    LFD44,Y 
       CLC            
       SBC    $C5,X   
       STA    $E1,X   
       DEX            
       BMI    LF817   
       CPX    #$03    
       BNE    LF814   
LF7F8: LDA    INTIM   
       BNE    LF7F8   
       LDY    #$82    
       STY    WSYNC   
       STY    VBLANK  
       STY    VSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STY    WSYNC   
       STA    VSYNC   
       LDA    #$27    
       STA    WSYNC   
       STA    TIM64T  
LF814: JMP    LF716   
LF817: LDX    #$05    
LF819: LDA    $B9,X   
       AND    #$0E    
       BEQ    LF85A   
       LDA    $C4,X   
       LSR            
       LSR            
       LSR            
       ORA    $9D     
       TAY            
       LDA    LFF26,Y 
       AND    #$0F    
       CMP    #$06    
       BCC    LF839   
       LDA    LFF27,Y 
       AND    #$0F    
       CMP    #$06    
       BCS    LF85A   
LF839: TAY            
       LDA.wy $00AD,Y 
       BEQ    LF85A   
       SEC            
       LDA.wy $00A1,Y 
       SBC    $CA,X   
       STA    $F8     
       AND    #$0E    
       ORA    $EB     
       BNE    LF85A   
       CPX    #$01    
       BNE    LF855   
       LDA    $86     
       BEQ    LF889   
LF855: JSR    LFF66   
       BCS    LF85F   
LF85A: DEX            
       BNE    LF819   
       BEQ    LF889   
LF85F: LDA    #$00    
       STA.wy $00AD,Y 
       LDA    $B9,X   
       AND    #$06    
       TAY            
       LDA    #$81    
       STA    $B9,X   
       LDX    #$03    
LF86F: LDA    $BB,X   
       AND    #$0E    
       CMP    #$06    
       BEQ    LF87E   
       DEX            
       BPL    LF86F   
       LDA    #$80    
       STA    $86     
LF87E: BIT    $8A     
       BPL    LF889   
       LDA    #$87    
       STA    $A0     
       JSR    LFE00   
LF889: LDA    #$FF    
       STA    $8E     
       LDA    $C5     
       CLC            
       ADC    #$0D    
       STA    $83     
       LDA    $C5     
       SBC    #$0F    
       BPL    LF89C   
       LDA    #$00    
LF89C: STA    $82     
       LDA    $91     
       EOR    #$48    
       BNE    LF8AB   
       LDX    #$05    
LF8A6: STA    $91,X   
       DEX            
       BNE    LF8A6   
LF8AB: LDX    #$05    
       LDY    #$0A    
LF8AF: LDA    $91,X   
       STA.wy $00F2,Y 
       LDA    #$FC    
       STA.wy $00F3,Y 
       DEX            
       DEY            
       DEY            
       BPL    LF8AF   
       LDX    $84     
       JSR    LF064   
       LDA    $85     
       STA    COLUBK  
LF8C7: LDA    INTIM   
       BNE    LF8C7   
       STA    WSYNC   
       STA    VBLANK  
       JSR    LFFBF   
       LDA    $89     
       BNE    LF8D9   
       LDA    #$01    
LF8D9: ASL            
       ASL            
       ASL            
       ASL            
       SBC    #$8C    
       EOR    #$FF    
       STA    $81     
       CLC            
       ADC    #$10    
       CMP    #$7D    
       BCC    LF8EC   
       LDA    #$7C    
LF8EC: STA    $FA     
       STA    WSYNC   
       STA    $F1     
       STA    VDELP0  
       INC    $ED     
       LDA    #$AC    
       STA    $8D     
       LDA    #$78    
       STA    $EF     
       STA    RESP0   
       LDX.w  $0088   
       LDA    #$08    
       STA    $ED     
       LDY    #$FC    
       CPX    #$04    
       STA    RESP1   
       BCS    LF913   
       LDA    $BA     
       BEQ    LF914   
LF913: DEX            
LF914: LDA    $B9     
       BPL    LF92C   
       AND    #$08    
       BEQ    LF92C   
       LDA    $84     
       ORA    $85     
       LDY    #$A5    
LF922: STA    WSYNC   
       STA    COLUBK  
       DEY            
       BNE    LF922   
       JMP    LFAB6   
LF92C: LDA    $B9     
       BPL    LF932   
       LDX    #$00    
LF932: LDA    #$00    
       STA    $F1     
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$92    
       JSR    LF091   
       LDA    #$BF    
       STA    $EF     
       LDA    $99     
       LSR            
       LSR            
       TAX            
       LDA    LFF90,X 
       STA    $F1     
       LDY    $81     
       LDX    $9B     
       CPX    #$01    
       BNE    LF95B   
       CPY    $C0     
       BCC    LF95B   
       LDY    $C0     
LF95B: STY    $F9     
       TYA            
       STA    WSYNC   
       JSR    LFE53   
       LDX    #$00    
       STX    $D0     
       JSR    LFD1F   
       STA    WSYNC   
       INX            
       LDA    $FA     
       JSR    LFE53   
       JSR    LFD1F   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $89     
       CLC            
       ADC    #$06    
       TAX            
       LDA    $B9     
       BPL    LF985   
       LDX    #$00    
LF985: LDA    #$08    
       STA    $ED     
       LDA    $99     
       ASL            
       AND    #$18    
       ADC    #$BF    
       LDY    #$FE    
       STA    WSYNC   
       JSR    LF091   
       LDY    #$01    
       STY    $80     
       TAX            
       STA    $FB     
       STA    COLUPF  
       STA    NUSIZ1  
       STA    NUSIZ0  
       LDA    $CC     
       JSR    LFD1F   
       STA    WSYNC   
       LDA    $82     
       BEQ    LF9B7   
       LDA    #$FC    
       STA    $F6     
       LDA    #$B0    
       BNE    LF9BD   
LF9B7: LDA    $E6     
       STA    $F6     
       LDA    $E1     
LF9BD: STA    $F5     
       LDA    $E7     
       STA    $F4     
       LDA    $E2     
       STA    $F3     
       LDA    $D6     
       STA    $F1     
       LDA    $D7     
       STA    $EF     
       LDA    $CB     
       INX            
       JSR    LFD1F   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$01    
       LDA    #$F0    
       STA    $F8     
       LDA    #$F1    
       STA    $FA     
       LDA    ($F5),Y 
       STA    GRP1    
       STA    HMCLR   
       LDA    $EB     
       CMP    #$03    
       BCS    LF9F9   
       DEC    $9D     
       LDA    ($F1),Y 
       TAX            
       LDA    ($F3),Y 
       JMP    LF10F   
LF9F9: LDX    $B9     
       JSR    LF064   
       LDX    #$32    
LFA00: STA    WSYNC   
       DEX            
       BPL    LFA00   
       LDX    #$08    
       LDY    #$FC    
       LDA    #$78    
       JSR    LF0DE   
       LDX    #$3D    
LFA10: STA    WSYNC   
       DEX            
       BNE    LFA10   
       STX    VDELP0  
       STX    NUSIZ0  
       LDA    #$2D    
       STA    $8D     
       STA    HMCLR   
       LDX    #$FF    
       TXS            
       INX            
       LDA    $CA     
       JSR    LFD1F   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$7F    
       LDA    ($8D),Y 
       STA    COLUPF  
       STA    ENABL   
       INY            
       LDA    $EB     
       CMP    #$01    
       BEQ    LFAA3   
       LDA    $97     
       BNE    LFA72   
       STA    CXCLR   
LFA41: STA    WSYNC   
       LDA    LFE1B,Y 
       STA    COLUP0  
       LDA    LFE73,Y 
       STA    GRP0    
       LDA    ($8D),Y 
       STA    COLUPF  
       STA    ENABL   
       INY            
       CPY    #$88    
       BNE    LFA41   
       BIT    CXP0FB  
       BVC    LFAAA   
       LDA    $8A     
       BPL    LFAAA   
       LDA    $8D     
       CMP    #$20    
       BCC    LFAAA   
       LDA    #$88    
       STA    $97     
       STA    $A0     
       LDA    #$A0    
       STA    $98     
       BNE    LFAAA   
LFA72: DEC    $97     
       BNE    LFA80   
       DEC    $8B     
       BPL    LFA80   
       INC    $8B     
       LDX    #$81    
       STX    $EB     
LFA80: CMP    #$38    
       LDA    #$00    
       STA    ENABL   
       BCC    LFAA3   
LFA88: LDA    $97     
       ORA    #$F0    
       AND    LFD20,Y 
       STA    WSYNC   
       STA    COLUBK  
       LDA    #$1C    
       STA    COLUP0  
       LDA    LFE73,Y 
       STA    GRP0    
       INY            
       CPY    #$88    
       BNE    LFA88   
       BEQ    LFAAA   
LFAA3: LDY    #$08    
LFAA5: STA    WSYNC   
       DEY            
       BNE    LFAA5   
LFAAA: LDY    #$00    
       STY    $F1     
       STA    WSYNC   
       STY    ENABL   
       STY    GRP0    
       STY    COLUBK  
LFAB6: LDA    #$08    
       NOP            
       STA    $ED     
       LDA    #$9B    
       STA    $EF     
       STA    RESP0   
       PHA            
       PLA            
       LDA.w  $0085   
       LDY    #$FE    
       STA    RESP1   
       STA    WSYNC   
       STA    COLUBK  
       STA    WSYNC   
       LDX    $8B     
       LDA    $8A     
       BNE    LFAD7   
       TAX            
LFAD7: LDA    #$F3    
       STA    WSYNC   
       JSR    LF091   
       LDA    #$6B    
       LDY    $8A     
       BNE    LFAF7   
       LDA    $9C     
       LSR            
       LSR            
       LSR            
       CMP    #$0B    
       BCS    LFAEF   
       LDA    #$0B    
LFAEF: CMP    #$13    
       BCC    LFAF5   
       LDA    #$12    
LFAF5: ADC    #$60    
LFAF7: STA    $ED     
       LDX    $85     
       JSR    LF064   
       LDA    $84     
       STA    COLUBK  
       LDA    $ED     
       LDY    #$FB    
       LDX    #$10    
       STA    WSYNC   
       JSR    LF0DE   
       STA    WSYNC   
       STA    COLUBK  
       JMP    LF287   
LFB14: .byte $00,$10,$00,$20,$30,$00,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$F7,$95,$87,$80,$90,$F0,$AD,$A9,$E9,$A9,$ED,$41,$0F,$00,$47
       .byte $41,$77,$55,$75,$00,$00,$00,$50,$58,$5C,$56,$53,$11,$F0,$00,$03
       .byte $00,$4B,$4A,$6B,$00,$08,$00,$BA,$8A,$BA,$A2,$3A,$80,$FE,$00,$80
       .byte $80,$AA,$AA,$BA,$22,$27,$02,$E9,$AB,$AF,$AD,$E9,$00,$00,$00,$00
       .byte $00,$11,$11,$17,$15,$17,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$77,$51,$73,$51,$77,$00
LFB7B: .byte $00,$10,$57,$0F,$00,$14,$2F,$98,$37,$FF,$3F
LFB86: .byte $00,$46,$14,$4E,$98,$55,$FF,$6D,$64,$74,$14,$83,$98,$93,$FF,$A3
       .byte $01,$B3,$14,$C3,$B0,$D3,$10,$D3,$0F,$D3,$14,$D3,$98,$00,$FF,$F1
       .byte $02,$E2,$14,$D3,$98,$C3,$FF,$BC,$64,$AE,$14,$A6,$98,$9F,$FF,$97
       .byte $FF,$8D,$14,$8B,$B0,$8A,$10,$00,$0F,$FF,$14,$B7,$98,$CF,$FF,$AF
       .byte $FE,$A7,$14,$7F,$98,$8F,$FF,$00,$64,$47,$14,$84,$98,$FA,$FF,$00
       .byte $64,$DF,$14,$E6,$B0,$EF,$10,$FE,$0F,$FC,$14,$FA,$98,$00,$FF,$77
       .byte $64,$9D,$14,$B3,$98,$D3,$FF,$F9,$64,$00,$14,$83,$98,$24,$FF,$52
       .byte $64,$00,$14,$54,$B0,$56,$10,$69,$0F,$97,$1E,$33,$33,$33,$33,$33
       .byte $33,$1E,$1E,$0C,$0C,$0C,$0C,$0C,$1C,$0C,$3F,$30,$30,$1E,$03,$03
       .byte $23,$1E,$1E,$23,$03,$06,$06,$03,$23,$1E,$06,$06,$06,$3F,$26,$16
       .byte $0E,$06,$3E,$23,$03,$03,$3E,$30,$30,$3F,$1E,$33,$33,$33,$3E,$30
       .byte $31,$1E,$0C,$0C,$0C,$0C,$06,$03,$21,$3F,$1E,$33,$33,$1E,$1E,$33
       .byte $33,$1E,$1E,$23,$03,$1F,$33,$33,$33,$1E,$00,$3C,$22,$22,$3C,$22
       .byte $22,$3C,$00,$64,$94,$94,$96,$65,$00,$00,$00,$99,$A4,$A4,$A5,$24
       .byte $00,$00,$00,$C0,$20,$C0,$00,$E0,$00,$00,$08,$15,$05,$05,$19,$11
       .byte $11,$1C,$C6,$29,$29,$29,$29,$29,$29,$C6,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$18,$7E,$FF,$54,$FF
       .byte $FF,$2A,$FF,$7E,$18,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFCAE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$2A,$32,$94,$A1,$4A,$24,$A1,$1A,$81,$52,$24,$41,$00,$00
       .byte $00,$00,$00,$00
LFCE2: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFCEE: .byte $00,$00,$20,$40,$60
LFCF3: .byte $6F,$13,$33,$53,$6F
LFCF8: .byte $33,$BA,$AB,$FF,$9B,$D5,$AB,$97

START:
       SEI            
       LDA    #$00    
       TAX            
LFD04: STA    VSYNC,X 
       INX            
       BNE    LFD04   
       CLD            
       LDX    #$04    
       LDY    #$03    
       STY    $8F     
LFD10: STY    $C0,X   
       LDA    LFCEE,X 
       STA    $C5,X   
       STY    $CB,X   
       DEX            
       BPL    LFD10   
       JMP    LF282   
LFD1F: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
       LDA    $80     
       INY            
LFD29: DEY            
       BNE    LFD29   
       STA    RESP0,X 
       RTS            

LFD2F: .byte $06,$0C,$2A,$44,$02,$54,$5C,$6A,$76,$04
LFD39: .byte $00,$0B,$09,$25,$23,$34,$32,$4B,$49,$47,$47
LFD44: .byte $B0,$D0,$C0,$E0,$A0,$A0,$80,$80,$90,$90
LFD4E: .byte $8D,$8D,$8D,$8D,$B4,$A9,$9F,$97,$76,$82
LFD58: .byte $C0,$40,$41,$43,$03,$03,$C0,$40,$00,$08,$18,$01,$03,$0C,$0C,$02
       .byte $08,$08,$07,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$42,$5A,$5A,$42
       .byte $3C,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$81,$42,$24,$24,$18,$3C,$3C,$18
       .byte $24,$24,$42,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$81,$42,$24,$18,$FF,$3C,$7E,$99
       .byte $24,$42,$81,$81,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$C3,$24,$18,$7E,$99,$3C,$5A
       .byte $A5,$42,$24,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFE00: LDA    #$00    
       BIT    SWCHB   
       BVC    LFE1B   
       CPY    #$08    
       BEQ    LFE1B   
       LDA    $99     
       CMP    #$08    
       BCC    LFE15   
       TYA            
       ADC    #$09    
       TAY            
LFE15: LDA    $99     
       LSR            
       LSR            
       AND    #$01    
LFE1B: STA    $EC     
LFE1D: LDX    #$04    
LFE1F: LDA    $91,X   
       AND    #$78    
       CPX    #$03    
       BCC    LFE2C   
       CLC            
       ADC    LFEDF,Y 
       INY            
LFE2C: CMP    #$50    
       STA    $91,X   
       BCC    LFE3C   
       SBC    #$50    
       STA    $91,X   
       LDA    $90,X   
       ADC    #$07    
       STA    $90,X   
LFE3C: DEX            
       BPL    LFE1F   
       DEY            
       DEY            
       DEC    $EC     
       BPL    LFE1D   
LFE45: INX            
       LDA    $91,X   
       BNE    LFE52   
       LDA    #$80    
       STA    $91,X   
       CPX    #$04    
       BCC    LFE45   
LFE52: RTS            

LFE53: TAY            
       AND    #$0F    
       STA    $EC     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $ED     
       CLC            
       ADC    $EC     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $ED     
       BCS    LFE6E   
       CMP    #$F0    
       BCC    LFE71   
LFE6E: ADC    #$10    
       CLC            
LFE71: ADC    #$01    
LFE73: EOR    #$70    
       RTS            

LFE76: .byte $13,$66,$86,$C7,$2F,$66,$66,$23,$C7,$86,$66,$1F,$1F,$66,$86,$C7
       .byte $26,$66,$66,$2F,$C7,$86,$66,$17,$17,$0F,$15,$16,$44,$44,$17,$17
       .byte $17,$C7,$C8,$50,$50,$47,$18,$18,$40,$50,$50,$57,$57,$46,$33,$33
       .byte $46,$57,$57,$C6,$C7,$C6,$B6,$1F,$A5,$A8,$A8,$B6,$C6,$C7,$1F,$C7
       .byte $C6,$B6,$17,$A5,$A8,$A8,$B6,$C6,$C7,$38,$7C,$FE,$FE,$FE,$FE,$7C
       .byte $38,$28,$50,$28,$58,$28,$34,$08,$04,$7C,$DE,$F6,$7C,$6C,$38,$38
       .byte $10,$02,$02,$06,$0E,$1C,$38,$F0,$00
LFEDF: .byte $00,$08,$28,$00,$18,$00,$28,$00,$00,$28,$00,$20,$00,$10,$10,$08
       .byte $00,$10,$00,$28,$18,$3C,$3C,$E7,$DB,$FF,$DB,$99,$00,$00,$00,$00
       .byte $00
LFF00: .byte $A9,$A5,$95,$91,$A1,$A9,$95,$A1,$A9,$A5,$91,$A9,$A5,$95,$A9,$A1
       .byte $A9,$91,$A1,$A9,$95,$91,$A9,$A5,$95,$A9,$A5,$A9,$91,$A1,$A9,$95
       .byte $A1,$A9,$A5,$91,$A9,$A9
LFF26: .byte $00
LFF27: .byte $16
LFF28: .byte $26,$21
LFF2A: .byte $27,$27,$22,$18,$08,$33,$49,$49,$44,$4A,$4A,$35,$06,$16,$21,$27
       .byte $17,$12,$18,$08,$03,$09,$39,$34,$3A,$3A,$35,$0B,$06,$06,$10,$17
       .byte $07,$11,$18,$18,$12,$19,$19,$13,$0A,$3A,$34,$3B,$36,$30,$36,$37
       .byte $01,$17,$18
LFF5D: .byte $12,$F8,$59,$63,$39,$0A,$04,$0A,$0B
LFF66: LDA    $CA,X   
       ASL            
       LDA    $CA,X   
       ROR            
       STA    $F7     
       LDA.wy $00A1,Y 
       ASL            
       LDA.wy $00A1,Y 
       ROR            
       CLC            
       SBC    $F7     
       STA    $F7     
       LDA    $F8     
       AND    #$0F    
       BEQ    LFF89   
       LDA    $F7     
       CLC            
       BMI    LFF88   
       CMP    #$3D    
LFF88: RTS            

LFF89: LDA    $F7     
       SBC    #$09    
       CMP    #$BB    
       RTS            

LFF90: .byte $25,$54,$44,$18,$00,$00,$00,$00,$1E,$1E,$36,$36,$46,$46,$66,$66
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$87,$87,$CA,$CA,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFBF: STA    WSYNC   
       LDA    #$07    
       STA    $EC     
LFFC5: LDY    $EC     
       LDA    ($F2),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    ($F6),Y 
       STA    GRP0    
       LDA    ($FA),Y 
       STA    $ED     
       LDA    ($F8),Y 
       TAX            
       LDA    ($FC),Y 
       TAY            
       LDA    $ED     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STX    GRP0    
       DEC    $EC     
       BPL    LFFC5   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDX    #$FE    
       STX    $F2     
       RTS            

LFFFC: .byte $00,$FD,$00,$FD
