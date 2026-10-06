; Disassembly of roms/PlanetOfTheApes.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/PlanetOfTheApes.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
VDELP0  =  $25
VDELP1  =  $26
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP1FB  =  $33
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $00,$1E,$33,$33,$33,$33,$33,$1E,$00,$3F,$0C,$0C,$0C,$0C,$3C,$1C
       .byte $00,$3F,$30,$30,$1E,$03,$23,$3E,$00,$1E,$23,$03,$06,$03,$23,$1E
       .byte $00,$06,$06,$3F,$26,$16,$0E,$06,$00,$3E,$23,$03,$3E,$30,$30,$3F
       .byte $00,$1E,$33,$33,$3E,$30,$31,$1E,$00,$0C,$0C,$0C,$06,$03,$21,$3F
       .byte $00,$1E,$33,$33,$1E,$33,$33,$1E,$00,$1E,$23,$03,$1F,$33,$33,$1E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F8,$C0,$C2,$C0,$C2,$C0,$C0
       .byte $00,$F8,$C0,$C2,$E0,$C2,$C0,$F8
LF068: .byte $00,$08,$10,$18,$20,$28,$30,$38,$40,$48,$50,$58,$60
LF075: LDA    $C5     
       AND    #$01    
       BNE    LF086   
       LDA    CXM1P   
       BMI    LF0D4   
       LDA    CXM0P   
       ASL            
       BMI    LF0D4   
       BPL    LF08F   
LF086: LDA    CXM0P   
       BMI    LF0C8   
       LDA    CXM1P   
       ASL            
       BMI    LF0C8   
LF08F: LDA    CXPPMM  
       BPL    LF0C7   
       LDA    $D3     
       JSR    LFC65   
       LDA.wy $009E,Y 
       CMP    #$24    
       BEQ    LF0C7   
       LDX    $E3     
       BMI    LF0A9   
       LDA    $9E,X   
       CMP    #$24    
       BEQ    LF0C7   
LF0A9: LDA    #$20    
       STA    $DF     
       LDA    #$48    
       STA    $D7     
       STA    $C1     
       STA    $D3     
       LDA    #$57    
       LDX    $EB     
       BEQ    LF0BE   
       CLC            
       ADC    #$12    
LF0BE: STA    $94     
       LDA    #$F0    
       STA    $A0     
       JSR    LF5D8   
LF0C7: RTS            

LF0C8: LDY    $EC     
LF0CA: JSR    LF5D8   
       DEY            
       BPL    LF0CA   
       INY            
       STY    $F6     
       RTS            

LF0D4: LDA    $F7     
       JSR    LFC65   
       LDA.wy $009E,Y 
       LDX    #$00    
       STX    $92,Y   
       STX    $9E,Y   
       STX    $F7     
       LDY    #$03    
       CMP    #$24    
       BNE    LF0EF   
       TYA            
       JSR    LF5BD   
       RTS            

LF0EF: CMP    #$F4    
       BNE    LF0FA   
       LDA    #$02    
       INY            
       JSR    LF5BD   
       RTS            

LF0FA: LDA    #$42    
       JSR    LF5BD   
       RTS            

LF100: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40,$52,$52,$52
       .byte $52,$52,$52,$76,$76,$76,$76,$76,$48,$48,$48,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$20,$42,$65,$24,$24,$18,$18,$18
       .byte $18,$5E,$7A,$18,$10,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$06,$04,$04,$AC,$58,$18,$18,$18,$18,$9A,$7C,$38
       .byte $10,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$10,$10,$30,$78,$38,$18,$18,$18,$18,$1C,$18,$10,$18,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$32
       .byte $1E,$1C,$18,$18,$18,$98,$7F,$19,$10,$18,$18,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF1F8: .byte $08,$24,$40,$5C,$78,$CD,$DD,$38,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$8F,$F9,$18
       .byte $10,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F9,$9F,$18,$10,$18,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$10,$18,$18,$18,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$92,$18,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$59,$18,$18,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LF2F8: .byte $F8,$F2,$D4,$F8,$F8,$CD,$33,$14,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$36,$24,$34,$1C,$18,$59,$7F,$18,$10,$18,$18,$00,$00
       .byte $00,$00,$00,$00,$0C,$48,$78,$18,$18,$1A,$3A,$3E,$18,$10,$18,$18
       .byte $00,$00,$00,$00,$36,$24,$34,$1C,$18,$1C,$3C,$3F,$3D,$1C,$18,$1C
       .byte $1C,$18,$00,$00,$00,$00,$0C,$48,$78,$18,$1C,$1C,$1D,$3F,$3C,$1C
       .byte $18,$1C,$1C,$18,$00,$00,$60,$43,$46,$6C,$3C,$38,$38,$39,$7F,$7F
       .byte $78,$38,$30,$38,$38,$30,$00,$00,$0E,$8C,$E6,$7E,$3C,$38,$38,$3A
       .byte $7E,$FE,$78,$38,$30,$38,$38,$30,$1F,$3E,$3C,$18,$18,$18,$18,$18
       .byte $18,$18,$18,$18,$3C,$3C,$7E,$FF,$18,$3C,$2C,$38,$3C,$7C,$1C,$18
       .byte $3C,$14,$10,$10,$7E,$7C,$7C,$38,$38,$38,$7C,$44,$54,$7C,$6C,$7C
       .byte $7C,$54,$7C,$7C,$6C,$7C,$FE,$D6,$92
LF3B1: LDA    $D7     
       CMP    #$30    
       BNE    LF3C0   
LF3B7: INX            
       STX    $DE     
       STX    $DF     
       LDA    #$80    
       STA    $D3     
LF3C0: CMP    #$3F    
       BEQ    LF3B7   
       RTS            

LF3C5: LDX    #$00    
       STX    $F8     
       LDX    #$04    
       LSR            
       BCS    LF3DA   
       LSR            
       LSR            
       LSR            
       LSR            
       BCS    LF3D5   
LF3D4: RTS            

LF3D5: LDA    #$10    
       STA    $F8     
       RTS            

LF3DA: LSR            
       LSR            
       LSR            
       LSR            
       BCS    LF3D4   
       LDA    #$10    
       STA    $F8     
       RTS            

LF3E5: LSR            
       DEX            
       BPL    LF3E5   
       BCC    LF3ED   
       INC    $FA     
LF3ED: DEC    $FB     
       RTS            

LF3F0: .byte $26,$F2,$D4,$D4,$26
LF3F5: .byte $F2,$D4,$74,$74,$26
LF3FA: .byte $22,$22,$22,$F2,$F2,$C8
LF400: .byte $FF,$FF,$7F,$3F,$3F,$1F,$0F,$0F,$0F,$0F,$0F,$1F,$BF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$BF,$1F,$1F,$1F,$1F,$1F,$1F,$1F,$0F,$0F,$0F,$1F
       .byte $3F,$7F,$FF,$FF,$7F,$3F,$1F,$0F,$0F,$0F,$0F,$0F,$1F,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$CF,$0F,$0F,$0F,$1F,$3F,$7F,$3F,$7F,$3F,$1F,$1F
       .byte $1F,$1F,$1F,$1F,$1F,$1F,$7F,$7F,$5F,$4F,$7F,$FF,$CF,$4F,$4F,$4F
       .byte $4F,$CF,$CF,$0F,$0F,$0F,$0F,$0F,$CF,$CF,$4F,$4F,$4F,$4F,$4F,$4F
       .byte $4F,$4F,$CF,$FF,$7F,$5F,$5F,$7F,$7F,$8F,$CF,$EF,$FF,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$8F,$CF,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$8F,$CF,$FF,$0F,$5F,$FF,$FF,$EF
       .byte $EF,$CF,$CF,$CF,$8F,$0F,$8F,$CF,$CF,$CF,$CF,$0F,$0F,$0F,$0F,$0F
       .byte $CF,$CF,$CF,$8F,$8F,$0F,$0F,$0F,$0F,$CF,$FF,$EF,$FF,$FF,$5F
LF4AF: STA    WSYNC   
       STA    HMCLR   
       STA    HMP1,X  
       AND    #$0F    
       TAY            
       NOP            
       NOP            
LF4BA: DEY            
       BPL    LF4BA   
       STA    RESP1,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF4C4: INY            
       TYA            
       AND    #$0F    
       STA    $F8     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $F8     
       CMP    #$0F    
       BCC    LF4DA   
       SBC    #$0F    
       INY            
LF4DA: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    $F8     
       ORA    $F8     
       RTS            

LF4E5: LDX    $ED     
       DEX            
       CPX    #$C0    
       BCC    LF4EE   
       STX    $ED     
LF4EE: RTS            

LF4EF: LDX    #$04    
       LDA    #$00    
LF4F3: STA    $92,X   
       STA    $B7,X   
       DEX            
       BPL    LF4F3   
       STA    $F6     
       STA    $F7     
       RTS            

LF4FF: .byte $20
LF500: .byte $80,$00,$30,$7C,$7C,$38,$00,$00,$00,$00,$00,$80,$C1,$E0,$C1,$E1
       .byte $E0,$C1,$E1,$E0,$C0,$80,$80,$80,$80,$80,$80,$00,$00,$01,$07,$03
       .byte $00,$00,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$07,$00,$00,$00,$00,$01,$03,$01,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0E,$FF,$FB,$0A,$0A,$0A
       .byte $0E,$FF,$FB,$00,$00,$00,$00,$00,$F0,$FF,$1F,$10,$10,$1E,$7F,$7B
       .byte $5A,$5A,$FB,$FF,$0E,$00,$00,$00,$00,$00,$00,$80,$C0,$00,$00,$00
       .byte $00,$00,$00,$00,$C0,$E0,$00,$00,$00,$00,$04,$0E,$0E,$0E,$04,$04
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$00,$00,$00,$00,$80
       .byte $80,$E5,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$7F,$0F,$07,$00,$00,$00
       .byte $40,$E0,$F8,$F8,$F0,$70,$30,$31,$F1,$F1,$E0,$C0,$40,$40,$00
LF5AF: INC    $C8     
       LDY    $C8     
       LDA    LF000,Y 
       EOR    $C9     
       EOR    $C5     
       STA    $C9     
       RTS            

LF5BD: STA    $F8     
LF5BF: LDA.wy $00ED,Y 
       CMP    #$AA    
       BNE    LF5C8   
       LDA    #$00    
LF5C8: SED            
       CLC            
       ADC    $F8     
       STA.wy $00ED,Y 
       LDA    #$01    
       STA    $F8     
       INY            
       BCS    LF5BF   
       CLD            
       RTS            

LF5D8: LDX    #$01    
       LDA    $ED,X   
       CMP    #$0A    
       BEQ    LF5E6   
       SEC            
       SBC    #$10    
       STA    $ED,X   
       RTS            

LF5E6: LDA    #$9A    
       STA    $ED,X   
       INX            
       DEC    $ED,X   
       LDA    $ED,X   
       CMP    #$B0    
       BCS    LF5FF   
       LDA    #$B0    
       STA    $ED,X   
       DEX            
       LDA    #$0A    
       STA    $ED,X   
       JSR    LFE2C   
LF5FF: RTS            

LF600: .byte $00,$00,$00,$00,$00,$00,$00,$40,$E0,$F4,$FE,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$EE,$44,$44,$44,$44,$40,$40,$40,$00,$01,$07,$0F
       .byte $02,$00,$00,$00,$00,$80,$C0,$E0,$C0,$80,$00,$00,$00,$00,$01,$0F
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$F8,$00,$00,$01,$03,$07,$03,$01,$01
       .byte $01,$00,$00,$00,$00,$00,$00,$00,$00,$00,$38,$3F,$2F,$3A,$3A,$0E
       .byte $0E,$03,$03,$00,$E0,$20,$E0,$20,$E3,$23,$E3,$02,$02,$03,$07,$0F
       .byte $1C,$30,$3F,$1F,$00,$00,$00,$00,$00,$00,$00,$00,$06,$0F,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$C0,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3C,$3E,$3E,$1F,$0F,$0F,$0F,$0F,$87,$87,$83,$81,$80,$C0,$C0
       .byte $E0,$E0,$F1,$FF,$FF,$FF,$FF,$7F,$3F,$1F,$02,$00,$00,$00,$00

START:
       SEI            
       CLD            
       LDY    #$01    
       STY    $9C     
LF6B5: LDY    $9C     
       LDA    #$00    
       LDX    #$92    
LF6BB: STA    VSYNC,X 
       INX            
       BNE    LF6BB   
       DEX            
       TXS            
       STY    $9C     
       STY    $EC     
       LDA    SWCHB   
       LSR            
       BCC    LF6D5   
       DEC    $D0     
       TYA            
       BNE    LF6D3   
       LDY    #$04    
LF6D3: STY    $F0     
LF6D5: STY    CXCLR   
       LDA    #$AA    
       STA    $F2     
       STA    $F1     
       LDA    #$B6    
       STA    $EF     
       LDA    #$0A    
       STA    $EE     
       LDA    #$C6    
       STA    $ED     
       LDX    #$F0    
       STX    $81     
       STX    $83     
       STX    $85     
       STX    $87     
       STX    $89     
       STX    $8B     
       INX            
       STX    $CF     
       LDA    #$1E    
       STA    $C1     
       STA    REFP0   
       STA    $9D     
       STA    $C4     
       LDX    #$01    
       STX    CTRLPF  
       STX    $DE     
       DEX            
       STX    AUDV0   
       STX    AUDV1   
       STX    RESMP0  
       STX    RESMP1  
       LDA    #$F3    
       STA    $CB     
       LDA    #$80    
       STA    $D3     
       STA    $A3     
       LDA    #$48    
       STA    $97     
       JMP    LF905   
LF724: LDA    $A3     
       STA    COLUBK  
       LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STA    $AB     
       STA    REFP1   
       STA    REFP0   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       PHA            
       PLA            
       PHA            
       PLA            
       STA    RESP0   
       STA    RESP1   
       STA    HMCLR   
       STY    WSYNC   
       LDA    $9D     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$10    
       STA    HMP1    
       STY    WSYNC   
       STA    HMOVE   
       LDA    #$07    
       STA    $F8     
       STA    VDELP0  
       STA    VDELP1  
LF75E: LDY    $F8     
       LDA    ($80),Y 
       STA    $F9     
       STA    WSYNC   
       LDA    ($82),Y 
       TAX            
       LDA    ($8A),Y 
       NOP            
       STA    GRP0    
       LDA    ($88),Y 
       STA    GRP1    
       LDA    ($86),Y 
       STA    GRP0    
       LDA    ($84),Y 
       LDY    $F9     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $F8     
       BPL    LF75E   
       LDA    $AB     
       BMI    LF7A9   
       LDA    #$07    
       STA    $F8     
       STA    WSYNC   
       LDY    #$05    
       LDX    #$0A    
LF794: LDA    $80,X   
       STA.wy $00FA,Y 
       LDA.wy $008C,Y 
       STA    $80,X   
       DEX            
       DEX            
       DEY            
       BPL    LF794   
       DEC    $AB     
       STA    WSYNC   
       BMI    LF75E   
LF7A9: STX    WSYNC   
       LDY    #$05    
       LDX    #$0A    
LF7AF: LDA.wy $00FA,Y 
       STA    $80,X   
       DEX            
       DEX            
       DEY            
       BPL    LF7AF   
       LDX    #$00    
       LDA    $AA     
       JSR    LF4AF   
       STY    WSYNC   
       STA    HMCLR   
       LDA    $C5     
       LSR            
       BCC    LF7CD   
       LDA    #$20    
       BNE    LF7CF   
LF7CD: LDA    #$10    
LF7CF: INY            
       LDX    $94     
       CPX    #$9A    
       BNE    LF7E4   
       STY    $EA     
       STY    $97     
       LDA    #$40    
       STA    $C1     
       LDA    #$50    
       STA    $B9     
       LDA    #$05    
LF7E4: STA    NUSIZ0  
       STA    NUSIZ1  
       STY    VDELP0  
       STY    VDELP1  
       LDA    $EA     
       STA    REFP1   
       LDA    #$0F    
       STA    REFP0   
       STY    WSYNC   
       LDA    #$05    
       STA    $E1     
       LDA    $A4     
       STA    COLUBK  
       LDX    $D1     
       LDA    LF400,X 
       STA    PF0     
       LDA    $A9     
       STA    COLUPF  
       LDX    #$1E    
       TXS            
       LDY    #$00    
       STY    WSYNC   
       JMP    LF8DB   
LF813: LDX    #$1E    
       TXS            
       LDX    $E1     
       LDY    #$1B    
       LDA    $9E,X   
       STA    COLUP0  
       LDA    $97,X   
       STA    $CC     
       LDA    $D8,X   
       STA    $CE     
       LDA    ($CE),Y 
       STA    COLUP1  
       LDA    $A5,X   
       LDX    $D1     
       STA    COLUPF  
       STA    WSYNC   
       LDA    LF400,X 
       STA    PF0     
       LDA    LF500,X 
       STA    PF1     
       LDA    ($CC),Y 
       STA    GRP1    
       LDA    LF600,X 
       STA    PF2     
       LDX    $E1     
       LDA    $B2,X   
       STA    $D4     
       LDA    $AD,X   
       STA    $D5     
       DEY            
       LDA    $BC,X   
       STA    HMP0    
       AND    #$0F    
       TAX            
       NOP            
       LDA    ($CE),Y 
       STA    COLUP1  
       LDA    ($CC),Y 
       DEY            
       CPY    $D5     
       PHP            
       CPY    $D4     
       PHP            
       STA    GRP1    
LF867: DEX            
       BPL    LF867   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($CC),Y 
       STA    GRP1    
       LDA    ($CE),Y 
       STA    COLUP1  
       LDX    #$1E    
       TXS            
       CPY    $D5     
       PHP            
       CPY    $D4     
       PHP            
       INC    $D1     
       LDX    #$1E    
       TXS            
       DEY            
       BNE    LF88E   
LF889: TYA            
       AND    #$03    
       BNE    LF8B0   
LF88E: LDX    $D1     
       LDA    ($CE),Y 
       STA    COLUP1  
       LDA    LF400,X 
       STA    WSYNC   
       STA    PF0     
       LDA    LF500,X 
       STA    PF1     
       LDA    ($CC),Y 
       STA    GRP1    
       LDA    ($CA),Y 
       STA    GRP0    
       LDA    LF600,X 
       STA    PF2     
       INC    $D1     
       DEY            
LF8B0: LDA    ($CC),Y 
       TAX            
       LDA    ($CE),Y 
       STA    COLUP1  
       LDA    ($CA),Y 
       STA    WSYNC   
       STX    GRP1    
       STA    GRP0    
       CPY    $D5     
       PHP            
       CPY    $D4     
       PHP            
       LDX    #$1E    
       TXS            
       DEY            
       BEQ    LF8DB   
       CPY    #$16    
       BNE    LF8D3   
       LDA    $E2     
       STA    $CA     
LF8D3: CMP    #$00    
       BNE    LF889   
       STA    $CA     
       BEQ    LF889   
LF8DB: DEC    $E1     
       STY    $CA     
       STY    GRP0    
       BMI    LF8FD   
       LDX    $E1     
       LDA    $92,X   
       STA    $E2     
       LDA    ($CC),Y 
       TAX            
       LDA    ($CE),Y 
       STA    COLUP1  
       STA    WSYNC   
       STX    GRP1    
       CPY    $D5     
       PHP            
       CPY    $D4     
       PHP            
       JMP    LF813   
LF8FD: LDX    #$FF    
       TXS            
       STX    $E3     
       JMP    LFB68   
LF905: LDX    INTIM   
       BNE    LF905   
       DEX            
       LDA    #$3A    
       STA    WSYNC   
       STA    TIM64T  
       STX    VBLANK  
       STX    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       INX            
       STX    VSYNC   
       LDA    $F6     
       BNE    LF955   
       LDX    #$04    
LF925: LDA    $9E,X   
       CMP    #$F0    
       BNE    LF952   
       LDA    $C1     
       CLC            
       ADC    #$0C    
       CMP    $B7,X   
       BNE    LF952   
       SEC            
       SBC    #$08    
       STA    $C2     
       LDA    $D3     
       JSR    LFC65   
       LDA    #$02    
       STY    $F8     
       CPX    $F8     
       BCC    LF947   
       LSR            
LF947: STA    $F4     
       LDA    LF1F8,X 
       STA    $F6     
       LDA    #$08    
       STA    $E5     
LF952: DEX            
       BPL    LF925   
LF955: LDX    $DE     
       BMI    LF9AA   
       LDA    #$F1    
       STA    $CD     
       LDA    $D3     
       JSR    LFC65   
       STA    $FB     
       TYA            
       TAX            
       LDA    #$2C    
       SEC            
       SBC    $FB     
       STA    $D8,X   
       LDA    #$2C    
       LDY    $DE     
LF971: CLC            
       ADC    #$2C    
       BCC    LF97A   
       INC    $CD     
       LDA    #$2C    
LF97A: DEY            
       BPL    LF971   
       SEC            
       SBC    $FB     
       STA    $97,X   
       LDA    $FB     
       CMP    #$10    
       BCC    LF995   
       BNE    LF98D   
       DEX            
       BPL    LF991   
LF98D: CMP    #$19    
       BCC    LF9AA   
LF991: STX    $E3     
       BPL    LF9AA   
LF995: LDA    $97,X   
       SEC            
       SBC    #$1C    
       DEX            
       BMI    LF9AA   
       STA    $97,X   
       INX            
       LDA    $D8,X   
       SEC            
       SBC    #$1C    
       DEX            
       STA    $D8,X   
       STX    $E3     
LF9AA: LDA    $CF     
       CMP    #$F4    
       BEQ    LF9F6   
       LDX    #$04    
LF9B2: LDA    $92,X   
       BEQ    LF9CC   
       LDA    $E4     
       BNE    LF9BE   
       LDA    #$01    
       STA    $E4     
LF9BE: DEC    $B7,X   
       LDA    $B7,X   
       CMP    #$FF    
       BEQ    LF9CA   
       CMP    #$04    
       BNE    LF9CE   
LF9CA: LDA    #$99    
LF9CC: STA    $B7,X   
LF9CE: DEX            
       BPL    LF9B2   
       LDA    $C5     
       AND    #$0F    
       BNE    LF9F6   
       DEC    $EB     
       BPL    LF9DF   
       LDA    #$01    
       STA    $EB     
LF9DF: LDX    #$04    
LF9E1: LDA    $92,X   
       BEQ    LF9F3   
       LDY    $EB     
       BNE    LF9EE   
       SEC            
       SBC    #$12    
       BNE    LF9F1   
LF9EE: CLC            
       ADC    #$12    
LF9F1: STA    $92,X   
LF9F3: DEX            
       BPL    LF9E1   
LF9F6: LDX    #$04    
LF9F8: LDY    $B7,X   
       JSR    LF4C4   
       STA    $BC,X   
       DEX            
       BPL    LF9F8   
       LDA    #$0A    
       STA    $F8     
       LSR            
       STA    $F9     
       LDX    #$05    
LFA0B: LDA    $ED,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LFC80   
       LDA    $ED,X   
       AND    #$0F    
       JSR    LFC80   
       DEX            
       CPX    #$02    
       BNE    LFA0B   
LFA20: LDA    $ED,X   
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LFC74   
       LDA    $ED,X   
       AND    #$0F    
       JSR    LFC74   
       DEX            
       BPL    LFA20   
       LDX    #$01    
LFA35: LDA    $F6,X   
       BEQ    LFA72   
       LDY    $C2,X   
       LDA    $F4,X   
       BPL    LFA47   
       INY            
       INY            
       CPY    #$99    
       BCS    LFA6E   
       BCC    LFA50   
LFA47: ASL            
       BPL    LFA52   
       DEY            
       DEY            
       CPY    #$04    
       BCC    LFA6E   
LFA50: STY    $C3     
LFA52: LDY    $F6,X   
       LDA    $F4,X   
       LSR            
       BCC    LFA61   
       DEY            
       DEY            
       CPY    #$04    
       BCC    LFA6E   
       BCS    LFA6A   
LFA61: LSR            
       BCC    LFA72   
       INY            
       INY            
       CPY    #$89    
       BCS    LFA6E   
LFA6A: STY    $F6,X   
       BNE    LFA72   
LFA6E: LDA    #$00    
       STA    $F6,X   
LFA72: DEX            
       BPL    LFA35   
       LDX    $D0     
       INX            
       BEQ    LFADD   
       JSR    LFC8E   
       LDA    #$80    
       LDX    $EA     
       BPL    LFA84   
       LSR            
LFA84: STA    $F3     
       LDA    INPT4   
       EOR    #$80    
       AND    $D2     
       BPL    LFAD0   
       LDA    $DF     
       AND    #$20    
       BNE    LFAB4   
       LDA    $F7     
       BNE    LFAD0   
       LDA    #$08    
       STA    $E5     
       LDA    $F3     
       STA    $F5     
       LDA    $D3     
       SEC            
       SBC    #$08    
       STA    $F7     
       LDA    $C1     
       LDX    $EA     
       BMI    LFAB0   
       CLC            
       ADC    #$09    
LFAB0: STA    $C3     
       BNE    LFAD0   
LFAB4: LDA    $ED     
       CMP    #$C0    
       BEQ    LFAD0   
       LDA    $DF     
       AND    #$0F    
       STA    $DF     
       JSR    LFFC7   
       LDA    #$8B    
       STA    $D3     
       JSR    LF4E5   
       LDA    #$00    
       STA    $96     
       STA    $DE     
LFAD0: LDA    INPT4   
       STA    $D2     
       LDA    $CF     
       CMP    #$F4    
       BEQ    LFADD   
       JSR    LF075   
LFADD: LDA    $C7     
       BNE    LFB5A   
       JSR    LFD31   
       LDA    $DE     
       BMI    LFAF1   
       LDA    $DF     
       AND    #$10    
       BNE    LFAF1   
       JSR    LFE38   
LFAF1: LDY    $C1     
       JSR    LF4C4   
       STA    $AA     
       LDA    $C5     
       AND    #$01    
       TAX            
       LDY    $C2,X   
       JSR    LF4C4   
       STA    $AB     
       STA    $AC     
       LDX    #$02    
LFB08: LDA    $AA,X   
       JSR    LF4AF   
       DEX            
       BNE    LFB08   
       LDX    #$04    
       CPX    $DD     
       BEQ    LFB5A   
LFB16: LDA    $92,X   
       BNE    LFB57   
       LDA    $A5,X   
       CMP    #$26    
       BEQ    LFB57   
       CMP    #$74    
       BEQ    LFB57   
       JSR    LF5AF   
       CMP    $EC     
       BCS    LFB57   
       LDA    #$99    
       STA    $B7,X   
       JSR    LF5AF   
       TAY            
       AND    #$0F    
       CMP    $EC     
       BCS    LFB3F   
       LDY    #$F0    
       LDA    #$57    
       BNE    LFB4C   
LFB3F: TYA            
       BMI    LFB48   
       LDY    #$24    
       LDA    #$0F    
       BNE    LFB4C   
LFB48: LDY    #$F4    
       LDA    #$33    
LFB4C: STY    $9E,X   
       LDY    $EB     
       BEQ    LFB55   
       CLC            
       ADC    #$12    
LFB55: STA    $92,X   
LFB57: DEX            
       BPL    LFB16   
LFB5A: STA    CXCLR   
       LDA    INTIM   
       BNE    LFB5A   
       STA    WSYNC   
       STA    VBLANK  
       JMP    LF724   
LFB68: STA    WSYNC   
       LDA    #$FF    
       STA    VBLANK  
       LDA    #$33    
       STA    TIM64T  
       DEC    $C4     
       BPL    LFB8D   
       INC    $C4     
       LDA    SWCHB   
       LSR            
       BCC    LFB8A   
       LSR            
       BCS    LFB8D   
       LDA    $9C     
       ADC    #$01    
       AND    #$03    
       STA    $9C     
LFB8A: JMP    LF6B5   
LFB8D: INC    $C5     
       BNE    LFBCB   
       INC    $C6     
       BNE    LFB9B   
       LDA    #$FF    
       STA    $C7     
       STA    $D0     
LFB9B: LDA    $D0     
       CMP    #$01    
       BNE    LFBBC   
       JSR    LF4EF   
       STA    $D7     
       STA    $DF     
       LDA    #$80    
       STA    $D3     
       STA    $C1     
       DEC    $D0     
       LDA    $EF     
       CMP    #$B9    
       BEQ    LFBB8   
       INC    $EF     
LFBB8: LDA    #$F1    
       STA    $CF     
LFBBC: LDA    #$20    
       AND    $DF     
       BNE    LFBC8   
       LDA    $D7     
       CMP    #$D0    
       BCC    LFBCB   
LFBC8: JSR    LF5D8   
LFBCB: LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDY    #$04    
LFBD5: STX    GRP0,Y  
       STX    $97,Y   
       DEY            
       BPL    LFBD5   
       LDX    #$09    
LFBDE: STY    $AD,X   
       DEX            
       BPL    LFBDE   
       LDX    $D0     
       INX            
       BNE    LFC03   
       LDA    $C7     
       BEQ    LFC00   
       LDA    $C5     
       BNE    LFC00   
       STA    $D3     
       LDX    #$0C    
LFBF4: LDA    $9D,X   
       CLC            
       ADC    #$09    
       AND    #$F7    
       STA    $9D,X   
       DEX            
       BPL    LFBF4   
LFC00: JMP    LF905   
LFC03: LDA    $DE     
       BPL    LFC10   
       LDA    $C5     
       AND    #$03    
       BNE    LFC10   
       JSR    LF5D8   
LFC10: LDA    $DF     
       TAY            
       AND    #$10    
       BEQ    LFC2C   
       CPY    #$70    
       BEQ    LFC21   
       LDA    #$70    
       STA    $DF     
       BNE    LFC2C   
LFC21: LDA    CXP1FB  
       BPL    LFC28   
       JSR    LFFC7   
LFC28: LDA    #$00    
       STA    $DF     
LFC2C: LDA    $C5     
       AND    #$01    
       TAX            
       LDY    $E4,X   
       LDA    LFFD5,Y 
       BNE    LFC3E   
       STA    AUDV0,X 
       STA    $E4,X   
       BEQ    LFC4F   
LFC3E: CMP    #$10    
       BCS    LFC46   
       STA    AUDC0,X 
       BNE    LFC4D   
LFC46: STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       STA    AUDV0,X 
LFC4D: INC    $E4,X   
LFC4F: LDA    $C5     
       AND    #$01    
       TAX            
       LDA    $F6,X   
       BEQ    LFC62   
       JSR    LFC65   
       STA.wy $00AD,Y 
       TAX            
       DEX            
       STX    $B2,Y   
LFC62: JMP    LF905   
LFC65: LDY    #$00    
       CMP    #$1C    
       BCC    LFC73   
LFC6B: INY            
       SEC            
       SBC    #$1C    
       CMP    #$1C    
       BCS    LFC6B   
LFC73: RTS            

LFC74: TAY            
       LDA    LF068,Y 
       LDY    $F9     
       STA.wy $008C,Y 
       DEC    $F9     
       RTS            

LFC80: TAY            
       LDA    LF068,Y 
       LDY    $F8     
       STA.wy $0080,Y 
       DEC    $F8     
       DEC    $F8     
       RTS            

LFC8E: LDA    $DF     
       AND    #$20    
       BEQ    LFC95   
       RTS            

LFC95: LDY    SWCHA   
       TYA            
       CPY    #$FF    
       BEQ    LFCB6   
       LDX    #$00    
       STX    $C6     
       STX    $C7     
       AND    #$80    
       BEQ    LFCB7   
       TYA            
       AND    #$40    
       BEQ    LFCD2   
LFCAC: TYA            
       AND    #$20    
       BEQ    LFCF9   
       TYA            
       AND    #$10    
       BEQ    LFD15   
LFCB6: RTS            

LFCB7: STA    $EA     
       LDA    $C1     
       CMP    #$99    
       BEQ    LFCC3   
       INC    $C1     
       BNE    LFCAC   
LFCC3: JSR    LF4EF   
       JSR    LF3B1   
       LDA    #$05    
       STA    $C1     
       INC    $D7     
       JMP    LFCAC   
LFCD2: LDA    #$FF    
       STA    $EA     
       LDA    $C1     
       CMP    #$04    
       BEQ    LFCE0   
       DEC    $C1     
       BNE    LFCAC   
LFCE0: JSR    LF4EF   
       JSR    LF3B1   
       LDA    #$88    
       STA    $C1     
       LDA    $D7     
       BNE    LFCF4   
       LDA    #$0F    
       STA    $D7     
       BNE    LFCAC   
LFCF4: DEC    $D7     
       JMP    LFCAC   
LFCF9: LDA    $D3     
       CMP    #$13    
       BEQ    LFD02   
       DEC    $D3     
       RTS            

LFD02: JSR    LF4EF   
       LDA    #$8B    
       STA    $D3     
       LDA    $D7     
       CLC            
       ADC    #$10    
       STA    $D7     
       LDA    #$10    
       STA    $DF     
       RTS            

LFD15: LDA    $D3     
       CMP    #$8B    
       BEQ    LFD1E   
       INC    $D3     
       RTS            

LFD1E: JSR    LF4EF   
       LDA    #$13    
       STA    $D3     
       LDA    $D7     
       CMP    #$10    
       BCC    LFD30   
       SEC            
       SBC    #$10    
       STA    $D7     
LFD30: RTS            

LFD31: LDY    #$00    
       LDA    $D7     
       JSR    LF3C5   
       LDA    $D7     
       CMP    #$30    
       BCS    LFD52   
       LDA    $F8     
       CLC            
       ADC    #$C8    
       STA    $A4     
LFD45: LDA    LF3F0,X 
       STA    $A5,X   
       DEX            
       BPL    LFD45   
       STY    $D1     
       STY    $DD     
       RTS            

LFD52: CMP    #$40    
       BCS    LFD6D   
       INY            
       STY    $DD     
       LDA    $F8     
       CLC            
       ADC    #$CA    
       STA    $A4     
LFD60: LDA    LF3F5,X 
       STA    $A5,X   
       DEX            
       BPL    LFD60   
       LDX    #$23    
       STX    $D1     
       RTS            

LFD6D: TAY            
       CMP    #$70    
       BCS    LFD95   
       AND    #$0F    
       CMP    #$06    
       BCC    LFD99   
       CMP    #$0A    
       BCS    LFD99   
       TYA            
       LDA    $F8     
       CLC            
       ADC    #$FA    
       STA    $A4     
LFD84: LDA    LF3FA,X 
       STA    $A5,X   
       DEX            
       BPL    LFD84   
       LDA    #$46    
       STA    $D1     
       LDA    #$02    
       STA    $DD     
       RTS            

LFD95: CMP    #$D0    
       BCS    LFDB2   
LFD99: TYA            
       LDA    $F8     
       CLC            
       ADC    #$1A    
       STA    $A4     
       DEX            
       STX    $DD     
       INX            
LFDA5: LDA    LF2F8,X 
       STA    $A5,X   
       DEX            
       BPL    LFDA5   
       LDA    #$69    
       STA    $D1     
       RTS            

LFDB2: LDY    #$04    
       STY    $DD     
       AND    #$F1    
       CMP    #$F1    
       BEQ    LFDCB   
       LDX    #$8C    
       STX    $D1     
       STA    $A4     
       SEC            
LFDC3: ROR            
       STA.wy $00A5,Y 
       DEY            
       BPL    LFDC3   
       RTS            

LFDCB: LDX    #$F3    
       STX    $CD     
       INX            
       STX    $CF     
       LDX    $C5     
       LDA    #$00    
LFDD6: STA.wy $0092,Y 
       INX            
       STX    $A5,Y   
       DEY            
       BPL    LFDD6   
       STA    $D3     
       TXA            
       AND    #$F7    
       STA    $A4     
       TXA            
       AND    #$7F    
       STA    $D1     
       INY            
       STY    $CE     
       TXA            
       ORA    #$6C    
       STA    $A0     
       LDA    #$80    
       STA    $99     
       LDA    #$9A    
       STA    $94     
       LDA    $D0     
       CMP    #$01    
       BEQ    LFE21   
       LDA    #$1A    
       STA    $E4     
       STA    $E5     
       INC    $EC     
       LDA    #$01    
       STA    $D0     
       STA    $C5     
       LDA    #$10    
       CLC            
       ADC    $EC     
       LDY    #$04    
       JSR    LF5BD   
       LDA    $ED     
       CMP    #$C9    
       BEQ    LFE21   
       INC    $ED     
LFE21: LDA    $E4     
       BNE    LFE2B   
       LDA    #$1A    
       STA    $E4     
       STA    $E5     
LFE2B: RTS            

LFE2C: LDX    #$FF    
       STX    $DE     
       STX    $D0     
       INX            
       STX    AUDV0   
       STX    AUDV1   
       RTS            

LFE38: LDA    $DF     
       BMI    LFE6C   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LFE99   
       LDA    $DF     
       AND    #$07    
       CMP    #$07    
       BEQ    LFE4F   
       INC    $DF     
       BNE    LFE99   
LFE4F: LDA    $E5     
       BNE    LFE57   
       LDA    #$21    
       STA    $E5     
LFE57: LDA    $DF     
       AND    #$F0    
       STA    $DF     
       LDX    $DE     
       CPX    #$03    
       BCS    LFE6C   
       DEX            
       BPL    LFE68   
       LDX    #$02    
LFE68: STX    $DE     
       BPL    LFE99   
LFE6C: LDX    $DE     
       LDA    $C5     
       BIT    $DF     
       BVC    LFE75   
       ASL            
LFE75: AND    #$07    
       BNE    LFE86   
       INC    $DE     
       INX            
       CPX    #$07    
       BCS    LFE86   
       DEC    $D3     
       DEC    $D3     
       DEC    $D3     
LFE86: CPX    #$09    
       BNE    LFE99   
       BIT    $DF     
       BVC    LFE94   
       LDA    #$07    
       STA    $DE     
       BNE    LFE99   
LFE94: LDX    #$FF    
       STX    $DE     
       RTS            

LFE99: LDA    $D3     
       CMP    #$8B    
       BNE    LFEA0   
       RTS            

LFEA0: LDX    #$00    
       STX    $FA     
       INX            
       STX    $FB     
       LDX    $DE     
       CPX    #$03    
       BCC    LFEBC   
       CPX    #$07    
       BCC    LFEB3   
       LDX    #$06    
LFEB3: DEX            
       DEX            
       DEX            
LFEB6: CLC            
       ADC    #$03    
       DEX            
       BPL    LFEB6   
LFEBC: STA    $F8     
       SEC            
       LDA    #$9B    
       SBC    $F8     
       LSR            
       LSR            
       STA    $F8     
       LDX    $DD     
       BEQ    LFED1   
LFECB: CLC            
       ADC    #$23    
       DEX            
       BNE    LFECB   
LFED1: TAY            
       LDA    $C1     
       CMP    #$50    
       BCC    LFEDD   
       LDA    #$97    
       SEC            
       SBC    $C1     
LFEDD: LSR            
       LSR            
       STA    $F9     
       TAX            
       CMP    #$04    
       BCS    LFEFE   
LFEE6: LDA    LF400,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       JSR    LF3E5   
       BMI    LFF3B   
       LDX    $F9     
       INX            
       TXA            
       CPX    #$04    
       BNE    LFEE6   
       INC    $F9     
       BPL    LFF02   
LFEFE: CMP    #$0C    
       BCS    LFF22   
LFF02: LDA    $F9     
       SEC            
       SBC    #$04    
       TAX            
LFF08: LDA    LF500,Y 
LFF0B: ASL            
       DEX            
       BPL    LFF0B   
       BCC    LFF13   
       INC    $FA     
LFF13: DEC    $FB     
       BMI    LFF3B   
       LDX    $F9     
       DEX            
       DEX            
       DEX            
       CPX    #$08    
       BNE    LFF08   
       INC    $F9     
LFF22: LDA    $F9     
LFF24: SEC            
       SBC    #$0C    
       TAX            
       LDA    LF600,Y 
       JSR    LF3E5   
       BMI    LFF3B   
       LDX    $F9     
       TXA            
       CPX    #$13    
       BEQ    LFF24   
       INX            
       TXA            
       BNE    LFF24   
LFF3B: LDA    $F8     
       LDX    #$04    
LFF3F: SEC            
       SBC    #$07    
       BMI    LFF47   
       DEX            
       BNE    LFF3F   
LFF47: TXA            
       LDX    $DD     
       BEQ    LFF52   
LFF4C: CLC            
       ADC    #$05    
       DEX            
       BNE    LFF4C   
LFF52: TAX            
       LDA    LF3F0,X 
       LDY    $FA     
       CMP    #$26    
       BEQ    LFFA1   
       CMP    #$74    
       BEQ    LFFB4   
       CPY    #$00    
       BEQ    LFF82   
       LDA    SWCHA   
       ASL            
       BCC    LFF7E   
LFF6A: ASL            
       BCC    LFF7A   
LFF6D: ASL            
       BCC    LFF77   
       ASL            
       BCC    LFF74   
       RTS            

LFF74: DEC    $D3     
       RTS            

LFF77: INC    $D3     
       RTS            

LFF7A: INC    $C1     
       BNE    LFF6D   
LFF7E: DEC    $C1     
       BNE    LFF6A   
LFF82: BIT    $DF     
       BVC    LFFA0   
       LDX    $DE     
       CPX    #$07    
       BCC    LFF8E   
       LDX    #$06    
LFF8E: DEX            
       DEX            
       DEX            
LFF91: INC    $D3     
       INC    $D3     
       INC    $D3     
       DEX            
       BPL    LFF91   
       LDX    #$00    
       STX    $DE     
       STX    $DF     
LFFA0: RTS            

LFFA1: CPY    #$02    
       BNE    LFF82   
       LDA    #$A0    
       STA    $DF     
       CPY    $DE     
       BCC    LFFB3   
       STY    $DE     
       LDA    #$12    
       STA    $E5     
LFFB3: RTS            

LFFB4: CPY    #$02    
       BNE    LFF82   
       LDA    #$C0    
       STA    $DF     
       CPY    $DE     
       BCC    LFFC6   
       STY    $DE     
       LDA    #$12    
       STA    $E5     
LFFC6: RTS            

LFFC7: LDA    #$28    
       LDX    $C1     
       CPX    #$50    
       BCC    LFFD2   
       CLC            
       ADC    #$48    
LFFD2: STA    $C1     
       RTS            

LFFD5: .byte $00,$0C,$17,$26,$35,$24,$18,$00,$08,$F8,$F9,$EA,$EB,$DC,$CD,$BE
       .byte $AF,$00,$08,$61,$52,$43,$32,$21,$32,$00,$0C,$CF,$AD,$8B,$AD,$CF
       .byte $00,$08,$AB,$00,$C2,$00,$20,$AF,$F6,$AF,$F6
