; Disassembly of roms/Towering Inferno.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Towering Inferno.bin
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
RESM0   =  $12
RESM1   =  $13
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
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXP1FB  =  $33
CXM1FB  =  $35
CXPPMM  =  $37
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $B000

START:
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LB006: STA    VSYNC,X 
       DEX            
       BNE    LB006   
       INX            
       STX    $80     
       LDA    #$29    
       STA    TIM64T  
       LDA    #$AA    
       STA    $EC     
       STA    $ED     
LB019: LDX    #$30    
       LDA    #$00    
LB01D: STA    $AF,X   
       DEX            
       BNE    LB01D   
       STX    $99     
       STX    COLUBK  
       STX    $AD     
       STX    HMCLR   
       STX    $F7     
       STX    $A9     
       STX    $AA     
       STX    $F6     
       INX            
       STX    $98     
       LDA    #$10    
       STA    $AF     
       LDX    $80     
       CPX    #$02    
       BNE    LB049   
       LDA    $AE     
       AND    #$0F    
       BEQ    LB04B   
       DEC    $AE     
       BPL    LB04B   
LB049: STA    $AE     
LB04B: LDA    #$A6    
       STA    $EB     
       JMP    LB9DD   
LB052: LDA    $EB     
       AND    #$01    
       TAX            
       RTS            

LB058: LDA    #$00    
       STA    $9E     
       STA    $9F     
       LDA    $80     
       BMI    LB068   
       INC    $9F     
       LDA    #$11    
       STA    $AF     
LB068: LDA    #$00    
       STA    $A9     
       STA    $AA     
       STA    $E1     
       STA    $E0     
       LDA    $F7     
       AND    #$0F    
       ORA    $9E     
       STA    $9E     
       BEQ    LB07F   
       JSR    LB435   
LB07F: LDA    #$50    
       STA    NUSIZ1  
       JSR    LBD08   
       LDX    #$FF    
       STX    $E6     
       STX    $E7     
       INX            
       STX    $BF     
       STX    $AB     
       LDA    #$04    
       STA    $F5     
       STA    $E3     
       LDA    #$3C    
       STA    $EA     
       LDA    $AC     
       STA    $E9     
       JSR    LB052   
       LSR            
       LDA    SWCHB   
       BCC    LB0A9   
       ASL            
LB0A9: BMI    LB0AF   
       LDA    #$FB    
       BNE    LB0B1   
LB0AF: LDA    #$FF    
LB0B1: STA    $F0     
       LDA    #$3B    
       STA    $96     
       INC    $9E,X   
       LDA    $AE,X   
       AND    #$0F    
       TAY            
       LDA    LB110,Y 
       STA    $E8     
       LDX    #$00    
LB0C5: LDA    LB11A,X 
       BPL    LB0D4   
       JSR    LB1AD   
       STA    $C0,X   
       LDA    $ED     
       JMP    LB0D6   
LB0D4: STA    $C0,X   
LB0D6: STA    $D0,X   
       INX            
       CPX    #$0F    
       BNE    LB0C5   
       LDA    $EC     
       CPY    #$09    
       BEQ    LB0FE   
       STA    $9D     
       LDA    $ED     
       STA    $9C     
       LSR            
       BCC    LB0F2   
       LDA    $9D     
       AND    #$FB    
       STA    $9D     
LB0F2: LDA    $9C     
       AND    #$03    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $92     
       BPL    LB10A   
LB0FE: ORA    #$84    
       STA    $9D     
       LDA    $ED     
       STA    $9C     
       LDA    #$30    
       STA    $92     
LB10A: JSR    LB129   
       JMP    LB5D0   
LB110: .byte $74,$16,$26,$36,$64,$86,$C4,$D6,$E6,$F6
LB11A: .byte $77,$77,$77,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$77,$77
LB129: LDX    #$FF    
       STX    $94     
       INX            
       STX    $95     
       STX    $A8     
       STX    REFP1   
       STX    CXCLR   
       STX    $F2     
       STX    $F3     
       INX            
       STX    $93     
       INX            
       STX    $E2     
       LDA    #$10    
       STA    $F4     
       LDA    #$0F    
       STA    $E4     
       STA    WSYNC   
       LDX    #$08    
LB14C: DEX            
       BNE    LB14C   
       STA    RESP1   
       STA    RESM1   
       LDA    #$E0    
       STA    HMP1    
       LDA    #$62    
       STA    $81     
       LDA    #$80    
       STA    $82     
LB15F: STA    WSYNC   
       LDX    #$08    
LB163: DEX            
       BNE    LB163   
       BIT    $80     
       STA    RESM0   
       LDA    #$10    
       STA    RESBL   
       STA    HMM0    
       RTS            

LB171: LDY    #$66    
       STY    $B2     
       STY    $B3     
       LDY    #$FF    
       STY    $B4     
       STY    $B5     
       JSR    LB1AD   
       AND    #$0F    
       TAX            
       LDY    LB19D,X 
       STY    $B9     
       STY    $BA     
       STY    $BB     
       AND    #$0C    
       TAX            
       LDY    LB19D,X 
       STY    $B6     
       STY    $B7     
       STY    $B8     
       LDY    #$00    
       STY    $B1     
       RTS            

LB19D: .byte $AA,$00,$88,$22,$55,$00,$11,$44,$99,$00,$11,$88,$66,$00,$22,$44
LB1AD: LDA    $EC     
       STA    $EE     
       LDA    $ED     
       STA    $EF     
       ASL            
       ROL    $EC     
       ASL            
       ROL    $EC     
       CLC            
       ADC    $EF     
       STA    $ED     
       LDA    #$00    
       ADC    $EC     
       CLC            
       ADC    $EE     
       STA    $EC     
       LDA    #$00    
       INC    $ED     
       ADC    $EC     
       STA    $EC     
       RTS            

LB1D2: LDA    CXM1FB  
       BMI    LB21D   
       LDA    CXM1P   
       BPL    LB21D   
       LDA    $95     
       LSR            
       BCC    LB1E3   
       LDA    #$D0    
       BNE    LB1E5   
LB1E3: LDA    #$C0    
LB1E5: STA    $88     
       LDA    $F4     
       SEC            
       SBC    LB996   
       LDY    #$00    
       SEC            
LB1F0: INY            
       SBC    #$0C    
       BCS    LB1F0   
       LDA    ($88),Y 
       TAX            
       AND    #$08    
       BEQ    LB203   
       TXA            
       AND    #$07    
       TAX            
       LDA    LB21E,X 
LB203: STA    $97     
       JSR    LB1AD   
       AND    #$F0    
       ORA    $97     
       STA    ($88),Y 
       LDA    #$01    
       STA    $97     
       JSR    LB299   
       LDA    #$F4    
       STA    $E0     
       LDA    #$20    
       STA    $E1     
LB21D: RTS            

LB21E: .byte $00,$08,$08,$0D,$08,$08,$0C,$0E
LB226: LDA    $EC     
       TAY            
       AND    #$0F    
       CMP    #$0F    
       BNE    LB230   
       DEY            
LB230: TYA            
       AND    #$1F    
       TAX            
       TYA            
       AND    #$F0    
       STA    $97     
       LDA    $C0,X   
       AND    #$0F    
       ORA    $97     
       STA    $C0,X   
       RTS            

LB242: LDA    $E3     
       BMI    LB298   
       BNE    LB25F   
       LDA    $F5     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $97     
       JSR    LB299   
       LDA    #$20    
       STA    $E1     
       LDA    #$FF    
       STA    $E0     
       STA    $E3     
       BNE    LB298   
LB25F: LDA    $E6     
       BEQ    LB298   
       DEC    $EA     
       LDA    $EA     
       AND    #$03    
       BNE    LB272   
       LDA    $BF     
       BNE    LB272   
       JSR    LB226   
LB272: LDA    $EA     
       BNE    LB298   
       LDA    #$3C    
       STA    $EA     
       DEC    $E9     
       BNE    LB298   
       LDA    $AC     
       STA    $E9     
       LDX    #$04    
LB284: LDA    $E7     
       LSR            
       STA    $E7     
       ROL    $E6     
       DEX            
       BNE    LB284   
       DEC    $F5     
       LDA    #$11    
       STA    $E0     
       LDA    #$FF    
       STA    $E1     
LB298: RTS            

LB299: LDA    $EB     
       AND    #$01    
       TAX            
       CLC            
       SED            
       LDA    $84,X   
       ADC    $97     
       STA    $84,X   
       LDA    $86,X   
       ADC    #$00    
       STA    $86,X   
       CLD            
LB2AD: LDA    $84,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $8F     
       LDA    $84,X   
       AND    #$F0    
       STA    $8E     
       LDA    $86,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $8D     
       LDA    $86,X   
       AND    #$F0    
       STA    $8C     
       RTS            

LB2CA: JSR    LB052   
       EOR    #$01    
       TAX            
       LDA    $83     
       STA    HMP1    
       LDY    INPT4,X 
       BPL    LB30E   
       LDX    $F3     
       BNE    LB30E   
       TAX            
       LDA    $A8     
       AND    #$0C    
       BEQ    LB309   
       AND    #$08    
       EOR    #$08    
       STA    REFP1   
       STA    $97     
       LDA    $95     
       AND    #$08    
       CMP    $97     
       BEQ    LB309   
       LDA    $95     
       EOR    #$08    
       STA    $95     
       LDA    $83     
       LDX    $97     
       BEQ    LB305   
       CLC            
       ADC    #$60    
       JMP    LB308   
LB305: SEC            
       SBC    #$60    
LB308: TAX            
LB309: STX    HMM1    
       JMP    LB369   
LB30E: AND    #$F0    
       BEQ    LB31D   
       CMP    #$10    
       BNE    LB31B   
       INC    $F2     
       JMP    LB31D   
LB31B: DEC    $F2     
LB31D: INC    $F3     
       LDA    $F3     
       CMP    #$07    
       BEQ    LB357   
       STA    $97     
       ASL            
       CLC            
       ADC    $97     
       STA    $97     
       LDA    #$00    
       STA    HMM1    
       LDA    $81     
       LDX    $93     
       CPX    #$01    
       BEQ    LB342   
       SEC            
       SBC    #$06    
       SEC            
       SBC    $97     
       JMP    LB348   
LB342: CLC            
       ADC    $97     
       SEC            
       SBC    #$02    
LB348: STA    $F4     
       CMP    LB36A   
       BCS    LB369   
       LDA    $93     
       CMP    #$01    
       BEQ    LB369   
       BNE    LB365   
LB357: LDA    $F2     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM1    
       LDA    #$00    
       STA    $F3     
       STA    $F2     
LB365: LDA    #$10    
       STA    $F4     
LB369: RTS            

LB36A: .byte $5E
LB36B: LDA    $93     
       CMP    #$02    
       BEQ    LB37D   
       LDA    #$F9    
       STA    $A1     
       LDA    #$31    
       STA    $A2     
       LDA    #$38    
       BNE    LB387   
LB37D: LDA    #$F8    
       STA    $A1     
       LDA    #$30    
       STA    $A2     
       LDA    #$39    
LB387: STA    $A4     
       STA    $A5     
       LDA    #$28    
       STA    $A6     
       LDA    #$3E    
       STA    $A3     
       LDA    #$2C    
       STA    $A7     
       LDA    #$30    
       STA    $A0     
       LDA    #$00    
       STA    $A8     
       RTS            

LB3A0: LDA    $E3     
       BMI    LB3EB   
       LDA    $E6     
       CMP    #$F0    
       BNE    LB3CD   
       LDX    $E9     
       DEX            
       STX    $97     
       LDA    $EA     
       ASL            
       ASL            
       ASL            
       ROL    $97     
       LDA    $97     
       CMP    #$05    
       BPL    LB3CD   
       LSR            
       BCS    LB3CD   
       LDA    #$05    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       BNE    LB3FD   
LB3CD: LDA    #$02    
       STA    AUDC1   
       LDX    #$00    
       LDY    #$0C    
LB3D5: LDA    $C3,X   
       AND    #$08    
       BNE    LB3DC   
       INY            
LB3DC: INX            
       CPX    #$0A    
       BNE    LB3E3   
       LDX    #$10    
LB3E3: CPX    #$1A    
       BNE    LB3D5   
       CPY    #$20    
       BNE    LB3F7   
LB3EB: LDA    #$00    
       STA    AUDV1   
       LDX    $E3     
       BMI    LB3FD   
       STA    $E3     
       BPL    LB3FD   
LB3F7: STY    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
LB3FD: LDA    $E0     
       BEQ    LB427   
       BMI    LB412   
       CMP    #$14    
       BNE    LB40D   
       LDA    $95     
       LSR            
       BCS    LB40D   
       RTS            

LB40D: INC    $E1     
       JMP    LB414   
LB412: DEC    $E1     
LB414: LDA    $E1     
       BMI    LB427   
       CMP    #$20    
       BEQ    LB427   
       STA    AUDF0   
       LDA    $E0     
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       RTS            

LB427: LDA    #$00    
       STA    AUDV0   
       STA    $E0     
       RTS            

LB42E: JSR    LB052   
       LDA    $F5     
       STA    $A9,X   
LB435: LDY    $9E     
       BEQ    LB445   
       LDA    $F7     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    $9F     
       STA    $9F     
       BNE    LB45A   
LB445: LDA    $EB     
       EOR    #$FF    
       STA    $EB     
       AND    #$01    
       TAX            
       LDA    $9E,X   
       BNE    LB445   
       JSR    LB2AD   
       PLA            
       PLA            
       JMP    LB07F   
LB45A: PLA            
       PLA            
       JMP    LB9DD   
LB45F: JSR    LBC4E   
       LDA    $82     
       CMP    LB997   
       BNE    LB46C   
       JSR    LB42E   
LB46C: LDA    $BF     
       BNE    LB476   
       JSR    LB1D2   
       JSR    LB2CA   
LB476: JSR    LB171   
LB479: JSR    LB242   
       JSR    LB15F   
       JSR    LB36B   
       JSR    LB3A0   
       JMP    LB5D0   
LB488: .byte $00,$00,$55,$55,$55,$22,$22,$77,$22,$22
LB492: .byte $00,$00,$AA,$AA,$AA,$44,$44,$EE,$44,$44
LB49C: .byte $00,$00,$EE,$EE,$AA,$AA,$AA,$AA,$EE,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$EE,$44,$44,$44,$44,$44,$CC,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$EE,$88,$88,$CC,$66,$22,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$EE,$22,$22,$EE,$22,$22,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$22,$22,$22,$22,$EE,$AA,$AA,$88,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$22,$22,$66,$CC,$88,$88,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$EE,$AA,$AA,$EE,$88,$88,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$88,$88,$44,$44,$22,$22,$22,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$EE,$EE,$AA,$AA,$EE,$AA,$AA,$EE,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$22,$22,$22,$22,$EE,$AA,$AA,$EE
LB536: .byte $00,$00,$77,$77,$55,$55,$55,$55,$77,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$77,$22,$22,$22,$22,$22,$33,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$77,$11,$11,$33,$66,$44,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$77,$44,$44,$77,$44,$44,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$44,$44,$44,$44,$77,$55,$55,$11,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$44,$44,$66,$33,$11,$11,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$77,$55,$55,$77,$11,$11,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$11,$11,$22,$22,$44,$44,$44,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$77,$77,$55,$55,$77,$55,$55,$77,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$44,$44,$44,$44,$77,$55,$55,$77
LB5D0: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    $9D     
       STA    $91     
       LDA    $9C     
       STA    $90     
       JSR    LB052   
       LDA    $AE,X   
       ASL            
       ASL            
       ASL            
       ASL            
       PHA            
       LDA    $E3     
       BMI    LB60B   
       LDY    $E9     
       DEY            
       STY    $97     
       LDA    $EA     
       ASL            
       ASL            
       ASL            
       ROL    $97     
       LDA    $97     
       CMP    #$05    
       BPL    LB60B   
       LSR            
       BCC    LB607   
       LDA    #$00    
       BEQ    LB60F   
LB607: LDA    #$0C    
       BNE    LB60F   
LB60B: LDA    $E8     
       EOR    #$FF    
LB60F: AND    $9B     
       STA    COLUP0  
       LDY    #$09    
       PLA            
       STA    $97     
LB618: LDA    INTIM   
       BNE    LB618   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    CXCLR   
       LDA    $95     
       LSR            
       BCS    LB62F   
       LDA    #$D0    
       JMP    LB633   
LB62F: STA    RESP0   
       LDA    #$C0    
LB633: STA    $88     
       LDA    $81     
       STA    $8B     
       LDA    $F4     
       STA    $8A     
       LDA    #$80    
       STA    HMP0    
       LDX    #$00    
       STX    HMP1    
       STX    HMM0    
       STX    HMM1    
       LDA    #$02    
       STA    CTRLPF  
       LDA    $EB     
       AND    $9B     
       STA    COLUP1  
       TXA            
       BCC    LB687   
LB656: STA    WSYNC   
       NOP            
       LDA    LB488,Y 
       AND    $E6     
       STA    PF1     
       LDA    LB492,Y 
       AND    $E7     
       STA    PF2     
       TYA            
       ORA    $8C     
       TAX            
       LDA    LB49C,X 
       AND    #$F0    
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       NOP            
       STA    PF2     
       TYA            
       ORA    $97     
       TAX            
       LDA    LB536,X 
       STA    PF0     
       DEY            
       BNE    LB656   
       BEQ    LB6B7   
LB687: STA    WSYNC   
       STA    HMOVE   
       STA    PF1     
       STA    PF2     
       TYA            
       ORA    $8F     
       TAX            
       LDA    LB536,X 
       AND    #$F0    
       STA    $97     
       TYA            
       ORA    $8D     
       TAX            
       LDA    LB49C,X 
       AND    #$0F    
       STA    PF1     
       TYA            
       ORA    $8E     
       TAX            
       LDA    LB536,X 
       AND    #$0F    
       ORA    $97     
       STA    PF2     
       LDA    #$00    
       DEY            
       BNE    LB687   
LB6B7: LDA    #$25    
       AND    $F0     
       STA    CTRLPF  
       LDA    $E8     
       AND    $9B     
       STA    COLUPF  
       LDA    $E4     
       AND    $9B     
       STA    COLUP0  
       STA    WSYNC   
       LDY    #$FF    
       STY    PF1     
       LDY    #$7F    
       STY    PF2     
       STY    ENAM0   
       STY    $F1     
       LDA    #$30    
       STA    NUSIZ0  
       LDY    #$0E    
       LDA    ($88),Y 
       STA    HMP0    
       AND    #$08    
       STA    $E5     
       LDA    #$80    
       STA    PF0     
LB6E9: STA    WSYNC   
       STA    HMOVE   
       LDX    #$0B    
       STX    $97     
       JMP    LB703   
LB6F4: STA    WSYNC   
       LDA    $F1     
       STA    ENAM0   
       JMP    LB703   
LB6FD: STA    WSYNC   
       LDA    $B0,X   
       STA    GRP0    
LB703: LDX    $8B     
       CPX    #$09    
       BCS    LB70D   
       LDA    $A0,X   
       STA    GRP1    
LB70D: LDA    #$00    
       LDX    $8A     
       CPX    #$02    
       BCS    LB717   
       LDA    #$02    
LB717: STA    ENAM1   
       INC    $8B     
       INC    $8A     
       LDX    $97     
       BEQ    LB6E9   
       DEX            
       STX    $97     
       BEQ    LB72D   
       LDA    $E5     
       BNE    LB6FD   
       JMP    LB6F4   
LB72D: DEY            
       BMI    LB7A2   
       LDA    ($88),Y 
       STA    HMP0    
       STA    NUSIZ0  
       AND    #$08    
       STA    $E5     
       TYA            
       BEQ    LB758   
       ASL    $90     
       ROL    $91     
       ROL            
       TAX            
       LDA    LB818,X 
       PHA            
       LDA    #$2C    
       AND    $9B     
       STA    COLUP0  
       STA    ENAM0   
       STA    $F1     
       LDA    $E3     
       BMI    LB7CE   
       JMP    LB7BC   
LB758: LDA    $E2     
       STA    ENABL   
       LDA    $96     
       BEQ    LB782   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       AND    #$03    
       ORA    #$30    
       STA    NUSIZ0  
       LDA    #$03    
       STA    $F1     
       NOP            
       STA    RESM0   
       LDA    $EB     
       AND    $9B     
       STA    COLUP0  
       NOP            
       NOP            
       JMP    LB703   
LB782: NOP            
       ORA    #$20    
       STA    NUSIZ0  
       LDA    #$02    
       STA    $F1     
       LDA    $E8     
       AND    $9B     
       STA    COLUP0  
       LDA    #$60    
       STA    HMM0    
       STA    WSYNC   
       STA    HMOVE   
       STY    PF0     
       STY    PF1     
       STY    PF2     
       JMP    LB703   
LB7A2: LDA    #$00    
       STA    WSYNC   
       STY    PF0     
       STY    PF1     
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STY    PF2     
       TAY            
       LDA    ($88),Y 
       STA    HMP0    
       JMP    LB83C   
LB7BC: TYA            
       ORA    $92     
       TAX            
       LDA    LB7D8,X 
       TAX            
       PLA            
LB7C5: STA    WSYNC   
       STX    PF1     
       STA    PF2     
       JMP    LB703   
LB7CE: CPY    #$01    
       BEQ    LB7BC   
       PLA            
       LDA    #$00    
       TAX            
       BEQ    LB7C5   
LB7D8: BRK            
       .byte $FF ;.ISB
       ORA    ($01,X) 
       BRK            
       CPY    #$00    
       BRK            
       BRK            
       BRK            
       BRK            
LB7E3: CPY    #$00    
       BRK            
       .byte $FF ;.ISB
       BRK            
       BRK            
       .byte $FF ;.ISB
       ORA    ($01,X) 
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $3F ;.RLA
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $FF ;.ISB
       BRK            
       BRK            
       .byte $FF ;.ISB
       ORA    ($01,X) 
       BRK            
       CMP    ($01,X) 
       BRK            
       BRK            
       BRK            
       ORA    ($C1,X) 
       BRK            
       BRK            
       .byte $FF ;.ISB
       BRK            
       BRK            
       .byte $FF ;.ISB
       ORA    ($01,X) 
       BRK            
       ORA    ($01,X) 
       BRK            
       .byte $3F ;.RLA
       BRK            
       ORA    ($01,X) 
       BRK            
       BRK            
       .byte $FF ;.ISB
       BRK            
LB818: BRK            
       BRK            
       .byte $1F ;.SLO
       .byte $1F ;.SLO
       BRK            
       ORA    ($00,X) 
       CPY    #$00    
       BEQ    LB7E3   
       .byte $FF ;.ISB
       BRK            
       CPY    #$00    
       CPY    #$F0    
       .byte $FF ;.ISB
       BRK            
       CPY    #$00    
       CPY    #$C0    
       .byte $FF ;.ISB
       BRK            
       CPY    #$00    
       ORA    ($7F,X) 
       .byte $7F ;.RRA
LB836: STA    WSYNC   
       DEX            
       BNE    LB836   
       RTS            

LB83C: JSR    LB1AD   
       LDA    $BF     
       BEQ    LB84B   
       LDX    #$12    
       JSR    LB836   
       JMP    LB90D   
LB84B: LDX    #$0D    
       JSR    LB836   
       STX    $83     
       LDA    $EB     
       LSR            
       LDA    SWCHA   
       BCS    LB865   
       AND    #$0F    
       STA    $97     
       ASL            
       ASL            
       ASL            
       ASL            
       JMP    LB86D   
LB865: AND    #$F0    
       STA    $97     
       LSR            
       LSR            
       LSR            
       LSR            
LB86D: ORA    $97     
       STA    $97     
       ORA    #$CC    
       TAX            
       LDA    $97     
       ORA    #$33    
       TAY            
       STA    WSYNC   
       LDA    $81     
       CMP    LB996   
       BCS    LB888   
       CPX    #$DD    
       BNE    LB888   
       LDX    #$FF    
LB888: STA    WSYNC   
       LDA    CXP1FB  
       AND    #$C0    
       BNE    LB894   
       LDA    CXM0P   
       BPL    LB8C0   
LB894: LDA    $94     
       ORA    #$CC    
       CMP    #$EE    
       BEQ    LB8A4   
       CMP    #$DD    
       BEQ    LB8A8   
       LDX    #$FF    
       BNE    LB8AA   
LB8A4: LDX    #$DD    
       BNE    LB8AA   
LB8A8: LDX    #$EE    
LB8AA: LDA    $94     
       ORA    #$33    
       CMP    #$BB    
       BEQ    LB8BA   
       CMP    #$77    
       BEQ    LB8BE   
       LDY    #$FF    
       BNE    LB8C0   
LB8BA: LDY    #$77    
       BNE    LB8C0   
LB8BE: LDY    #$BB    
LB8C0: STY    $97     
       TXA            
       AND    $97     
       STA    $94     
       STA    WSYNC   
       LDA    #$FF    
       CPX    #$EE    
       BEQ    LB8D5   
       CPX    #$DD    
       BEQ    LB8DA   
       BNE    LB8DC   
LB8D5: INC    $81     
       JMP    LB8DC   
LB8DA: DEC    $81     
LB8DC: CPY    #$BB    
       BEQ    LB8E6   
       CPY    #$77    
       BEQ    LB8EF   
       BNE    LB8F5   
LB8E6: LDA    #$10    
       STA    $83     
       INC    $82     
       JMP    LB8F5   
LB8EF: LDA    #$F0    
       STA    $83     
       DEC    $82     
LB8F5: STA    WSYNC   
       LDA    $EB     
       LSR            
       LDA    SWCHA   
       EOR    #$FF    
       BCC    LB905   
       LSR            
       LSR            
       LSR            
       LSR            
LB905: STA    $A8     
       AND    #$03    
       BEQ    LB90D   
       STA    $93     
LB90D: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
       LDA    $95     
       EOR    #$01    
       STA    $95     
LB920: LDA    INTIM   
       BNE    LB920   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$26    
       STA    TIM64T  
       LSR    $BF     
       LSR    $AB     
       LDA    $BF     
       BCC    LB93A   
       ORA    #$80    
       BNE    LB93C   
LB93A: AND    #$7F    
LB93C: STA    $BF     
       AND    #$0F    
       STA    COLUBK  
       LDX    $E6     
       BNE    LB94E   
       LDA    #$00    
       STA    $96     
       LDA    $BF     
       BEQ    LB977   
LB94E: LDA    $BF     
       BEQ    LB958   
       CMP    #$01    
       BEQ    LB987   
       BNE    LB974   
LB958: LDA    CXPPMM  
       BMI    LB977   
       AND    #$40    
       BEQ    LB974   
       LDA    $E2     
       BEQ    LB96C   
       LDA    #$F8    
       STA    $E0     
       LDA    #$20    
       STA    $E1     
LB96C: LDA    #$00    
       STA    $E2     
       LDA    $E8     
       STA    $E4     
LB974: JMP    LB45F   
LB977: LDA    #$CC    
       STA    $BF     
       STA    $AB     
       LDA    #$FF    
       STA    $E1     
       LDA    #$14    
       STA    $E0     
       BNE    LB974   
LB987: LDA    $96     
       BEQ    LB99A   
       LSR            
       AND    #$FB    
       STA    $96     
       JSR    LB129   
       JMP    LB479   
LB996: .byte $59
LB997: .byte $39
LB998: .byte $01,$10
LB99A: JSR    LB052   
       LDA    $80     
       CMP    #$84    
       BNE    LB9B5   
       TAY            
       LDA    LB998,X 
       STA    $97     
       LDA    $F7     
       ORA    $97     
       STA    $F7     
       CMP    #$11    
       BEQ    LB9D8   
       BNE    LB9C3   
LB9B5: LDA    $80     
       BMI    LB9BF   
       CMP    #$03    
       BEQ    LB9C3   
       BNE    LB9D8   
LB9BF: CMP    #$85    
       BEQ    LB9CA   
LB9C3: DEC    $AE,X   
LB9C5: INC    $9E,X   
       JSR    LB435   
LB9CA: LDA    #$00    
       STA    $84,X   
       STA    $86,X   
       STA    $A9,X   
       LDA    #$10    
       STA    $AE,X   
       BNE    LB9C5   
LB9D8: PHA            
       PHA            
       JMP    LBC69   
LB9DD: LDA    #$74    
       STA    $AB     
LB9E1: LDA    #$10    
       STA    $F4     
       LDA    #$04    
       STA    $96     
       LDA    #$EA    
       STA    $81     
       LDA    #$40    
       STA    $F5     
       LDA    #$00    
       STA    $90     
       STA    $91     
       STA    $92     
       STA    $93     
       STA    $F1     
       STA    REFP1   
       STA    $E0     
       STA    $E1     
       STA    AUDV0   
       LDA    #$1F    
       STA    $94     
       LDA    #$A6    
       STA    $EB     
       JSR    LBA1A   
       LDA    $99     
       BEQ    LBA17   
       JSR    LBA41   
LBA17: JMP    LBDC5   
LBA1A: STA    WSYNC   
       LDX    #$08    
LBA1E: DEX            
       BNE    LBA1E   
       STA    RESP0   
       STA    RESP1   
       LDA    #$70    
       STA    HMP0    
       LDA    #$30    
       STA    HMP1    
       RTS            

LBA2E: .byte $00,$04,$07,$0B,$0E,$12,$15,$19,$1C,$20
LBA38: LDA    $AE     
       CMP    $AF     
       BPL    LBA40   
       LDA    $AF     
LBA40: RTS            

LBA41: JSR    LBA38   
       STA    $97     
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       DEY            
       LDA    LB110,Y 
       STA    $AB     
       LDA    $97     
       AND    #$0F    
       TAY            
       LDA    LBA2E,Y 
       STA    $97     
       LDX    #$00    
LBA5D: CPX    $97     
       BMI    LBA77   
       TXA            
       LSR            
       BCS    LBA69   
       LDA    #$08    
       BNE    LBA79   
LBA69: LSR            
       BCS    LBA71   
       LDA    $ED     
       JMP    LBA79   
LBA71: JSR    LB1AD   
       JMP    LBA79   
LBA77: AND    #$F7    
LBA79: STA    $BB,X   
       INX            
       CPX    #$20    
       BNE    LBA5D   
       LDA    #$00    
       TAX            
LBA83: STA    $DB,X   
       INX            
       CPX    #$05    
       STA    $BC     
       BNE    LBA83   
       RTS            

LBA8D: LDY    $96     
       LDA    LBACE,Y 
       STA    $A0     
       LDA    LBAD6,Y 
       STA    $A1     
       LDA    LBADE,Y 
       STA    $A2     
       CPY    #$07    
       BEQ    LBAAA   
       CPY    #$01    
       BEQ    LBAB3   
       LDA    $95     
       BEQ    LBAB3   
LBAAA: LDA    #$01    
       STA    $95     
       DEC    $96     
       JMP    LBAB9   
LBAB3: LDA    #$00    
       STA    $95     
       INC    $96     
LBAB9: LDA    #$08    
       STA    $A3     
       LDA    #$F3    
       STA    $A4     
       LDA    #$3F    
       STA    $A5     
       LDA    #$0E    
       STA    $A6     
       LDA    #$00    
       STA    $A7     
       RTS            

LBACE: .byte $00,$07,$03,$01,$00,$40,$60,$70
LBAD6: .byte $00,$08,$1C,$3F,$7F,$3E,$1C,$08
LBADE: .byte $00,$78,$68,$48,$08,$09,$0B,$0F
LBAE6: LDY    #$00    
       STY    $B1     
       LDY    #$60    
       STY    $B2     
       LDY    #$F0    
       STY    $B3     
       JSR    LB1AD   
       AND    #$0F    
       TAX            
       LDY    LB19D,X 
       AND    #$0C    
       TAX            
       LDA    LB19D,X 
       AND    #$F0    
       STA    $B4     
       TYA            
       AND    #$F0    
       STA    $B5     
       RTS            

LBB0B: LDA    $90     
       CMP    #$20    
       BEQ    LBB1E   
       LDA    #$1F    
       STA    AUDC1   
       STA    AUDF1   
       LDA    #$0A    
       STA    AUDV1   
       INC    $90     
       RTS            

LBB1E: LDA    #$1A    
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    $91     
       CMP    #$32    
       BEQ    LBB40   
       TAX            
       INC    $91     
       LDA    LBB98,X 
       STA    HMP1    
       LSR            
       BCC    LBB97   
       LSR            
       BCC    LBB3D   
       DEC    $81     
       RTS            

LBB3D: INC    $81     
       RTS            

LBB40: LDA    $92     
       CMP    #$81    
       BEQ    LBB4B   
       INC    $92     
       DEC    $81     
       RTS            

LBB4B: LDA    #$1F    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDV1   
       LDA    $A9     
       BNE    LBB5B   
       LDA    $AA     
       BEQ    LBB5F   
LBB5B: JSR    LBBE3   
       RTS            

LBB5F: LDA    $94     
       CMP    #$1F    
       BEQ    LBB69   
       JSR    LBBE9   
       RTS            

LBB69: JSR    LBC37   
       LDA    $93     
       CMP    #$60    
       BNE    LBB95   
       LDA    $AE     
       AND    #$0F    
       CMP    #$09    
       BEQ    LBB82   
       LDA    $AF     
       AND    #$0F    
       CMP    #$09    
       BNE    LBB85   
LBB82: INC    $AD     
       RTS            

LBB85: LDX    #$A6    
       STX    $EB     
       LDA    #$00    
       STA    $97     
       JSR    LB2AD   
       LDA    #$01    
       STA    $F1     
       RTS            

LBB95: INC    $93     
LBB97: RTS            

LBB98: .byte $01,$01,$01,$01,$01,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F3,$F3,$F3,$F3,$F3,$F3,$F3
       .byte $F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3,$F3
       .byte $F3,$F3
LBBCA: LDY    #$01    
LBBCC: LDA    $8C     
       STA    $97     
       TYA            
       CLC            
       ADC    $97     
       TAX            
       LDA    LB49C,X 
       AND    #$F0    
       STA.wy $00E0,Y 
       INY            
       CPY    #$0A    
       BNE    LBBCC   
       RTS            

LBBE3: LDA    $94     
       CMP    #$1F    
       BEQ    LBC06   
LBBE9: STA    AUDF0   
       TAY            
       LDA    $80     
       BPL    LBBF8   
       LDA    $F3     
       BEQ    LBBF8   
       TYA            
       EOR    #$FF    
       TAY            
LBBF8: TYA            
       STA    AUDC0   
       INC    $94     
       LDA    #$F0    
       STA    HMBL    
       LDA    #$0F    
       STA    AUDV0   
       RTS            

LBC06: LDA    #$00    
       STA    $94     
       JSR    LBC40   
       LDX    #$00    
LBC0F: STX    $F3     
       LDA    $A9,X   
       BEQ    LBC2F   
       LDA    #$25    
       STA    $97     
       LDA    $EB     
       STA    $F2     
       STX    $EB     
       JSR    LB299   
       LDA    $F2     
       STA    $EB     
       LDA    #$51    
       STA    $F4     
       LDX    $F3     
       DEC    $A9,X   
       RTS            

LBC2F: CPX    #$01    
       BEQ    LBC37   
       INX            
       JMP    LBC0F   
LBC37: LDA    #$10    
       STA    $F4     
       LDA    #$00    
       STA    AUDV0   
       RTS            

LBC40: STA    WSYNC   
       LDX    #$0C    
LBC44: DEX            
       BNE    LBC44   
       STA    RESBL   
       LDA    #$40    
       STA    HMBL    
       RTS            

LBC4E: LDY    #$FF    
       LDA    SWCHB   
       AND    #$08    
       BNE    LBC59   
       LDY    #$0F    
LBC59: STY    $9B     
       LDA    SWCHB   
       LSR            
       BCS    LBCB4   
       LDA    #$00    
       STA    $F6     
       LDA    $98     
       BNE    LBCB8   
LBC69: LDA    #$01    
       STA    $98     
       LDA    $99     
       EOR    #$01    
       BNE    LBC78   
       PLA            
       PLA            
       JMP    LB019   
LBC78: STA    $99     
       JSR    LBA41   
       LDA    $80     
       AND    #$7F    
       CMP    #$04    
       BPL    LBC87   
       BNE    LBC89   
LBC87: ORA    #$80    
LBC89: STA    $80     
       JSR    LBA1A   
       LDA    #$A6    
       STA    $EB     
       LDA    $80     
       CMP    #$02    
       BEQ    LBCAF   
       CMP    #$04    
       BEQ    LBCAF   
       LDA    #$00    
       STA    $84     
       STA    $85     
       STA    $86     
       STA    $87     
       LDX    #$00    
       JSR    LB2AD   
       INX            
       JSR    LB2AD   
LBCAF: PLA            
       PLA            
       JMP    LBDC5   
LBCB4: LDA    #$00    
       STA    $98     
LBCB8: RTS            

LBCB9: LDA    SWCHB   
       AND    #$02    
       BNE    LBCEF   
       LDA    $9A     
       BNE    LBCF8   
       LDA    #$01    
       STA    $9A     
LBCC8: LDA    $80     
       AND    #$7F    
       CMP    #$07    
       BNE    LBCD5   
       LDA    #$01    
       STA    $80     
       RTS            

LBCD5: INC    $80     
       LDX    #$00    
       STX    $84     
       STX    $86     
       STX    $85     
       STX    $87     
       LDY    #$10    
       STY    $AE     
       STY    $AF     
       JSR    LB2AD   
       INX            
       JSR    LB2AD   
       RTS            

LBCEF: LDA    #$00    
       STA    $9A     
       LDA    #$40    
       STA    $F5     
LBCF7: RTS            

LBCF8: INC    $F5     
       LDA    $F5     
       BPL    LBCF7   
       AND    #$08    
       BEQ    LBCF7   
       LDA    #$80    
       STA    $F5     
       BNE    LBCC8   
LBD08: JSR    LB052   
       LDA    $AE,X   
       TAY            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $97     
       TYA            
       AND    #$0F    
       CLC            
       ADC    $97     
       TAY            
       DEY            
       LDA    LBD22,Y 
       STA    $AC     
       RTS            

LBD22: .byte $14,$12,$10,$0E,$0C,$0B,$0A,$09,$07,$06,$05,$04,$04,$03,$03,$03
       .byte $03,$03,$03
LBD35: LDA    $F6     
       BMI    LBD6E   
       LDA    $AD     
       AND    #$7F    
       CMP    #$5F    
       BNE    LBD6E   
       LDX    #$01    
       STX    $99     
       DEX            
       STX    $AD     
LBD48: LDA    $AE,X   
       STA    $97     
       AND    #$0F    
       CMP    #$09    
       BNE    LBD66   
       LDA    $97     
       AND    #$F0    
       CMP    #$90    
       BEQ    LBD62   
       CLC            
       ADC    #$10    
LBD5D: STA    $AE,X   
       JMP    LBD66   
LBD62: LDA    #$10    
       BNE    LBD5D   
LBD66: INX            
       CPX    #$02    
       BNE    LBD48   
       JMP    LB9E1   
LBD6E: LDA    $F1     
       BEQ    LBD86   
       INC    $AE     
       INC    $AF     
       LDA    $80     
       CMP    #$87    
       BNE    LBD83   
       JSR    LBA38   
       STA    $AE     
       STA    $AF     
LBD83: JMP    LB058   
LBD86: JSR    LBC4E   
       LDA    $99     
       BNE    LBDB3   
       JSR    LBA8D   
       LDA    #$04    
       STA    $96     
       LDA    #$00    
       STA    AUDV1   
       LDA    $80     
       AND    #$7F    
       CMP    #$04    
       BPL    LBDA4   
       LDA    #$A6    
       BNE    LBDA8   
LBDA4: LDA    $EB     
       EOR    #$FF    
LBDA8: STA    $EB     
       JSR    LBA1A   
       JSR    LBCB9   
       JMP    LBDBC   
LBDB3: JSR    LBB0B   
       JSR    LBA8D   
       JSR    LBAE6   
LBDBC: JSR    LB052   
       JSR    LB2AD   
       JSR    LBBCA   
LBDC5: LDA    $F6     
       BMI    LBDDC   
       LDA    $AD     
       BEQ    LBDE0   
       LDA    SWCHB   
       AND    #$0A    
       BNE    LBDE0   
       LDA    INPT4   
       BMI    LBDE0   
       LDA    INPT5   
       BMI    LBDE0   
LBDDC: LDA    #$FF    
       BNE    LBDE2   
LBDE0: LDA    #$00    
LBDE2: STA    $F6     
LBDE4: LDA    INTIM   
       BNE    LBDE4   
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    NUSIZ1  
       LDA    #$02    
       STA    CTRLPF  
       LDA    $EB     
       LSR            
       BCC    LBE0E   
       LDA    #$00    
       STA    COLUP1  
       LDA    $EB     
       AND    $9B     
       STA    COLUP0  
       BNE    LBE18   
LBE0E: LDA    #$00    
       STA    COLUP0  
       LDA    $EB     
       AND    $9B     
       STA    COLUP1  
LBE18: LDA    #$00    
       STA    $97     
       LDY    #$09    
LBE1E: STA    WSYNC   
       STA    PF1     
       LDA    $97     
       STA    PF2     
       TYA            
       ORA    $8F     
       TAX            
       LDA    LB536,X 
       AND    #$F0    
       STA    $97     
       TYA            
       ORA    $8E     
       TAX            
       LDA    LB536,X 
       AND    #$0F    
       ORA    $97     
       STA    $97     
       TYA            
       ORA    $8D     
       TAX            
       LDA    LB49C,X 
       AND    #$0F    
       ORA.wy $00E0,Y 
       DEY            
       BNE    LBE1E   
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    CTRLPF  
       LDA    $AD     
       AND    $9B     
       STA    COLUBK  
       LDA    $AB     
       AND    $9B     
       STA    COLUPF  
       LDA    #$2D    
       AND    $9B     
       STA    COLUP0  
       AND    #$F7    
       STA    COLUP1  
       LDA    $81     
       STA    $8B     
       LDA    $F4     
       STA    $8A     
       LDA    #$03    
       STA    NUSIZ0  
       LDX    #$25    
       BNE    LBEBB   
       LDY    #$04    
LBE7F: STA    WSYNC   
LBE81: STY    $97     
       LDY    $8B     
       CPY    #$08    
       BCS    LBE8E   
       LDA.wy $00A0,Y 
       STA    GRP1    
LBE8E: LDA    $BB,X   
       AND    #$08    
       BEQ    LBE9E   
       LDY    $97     
       LDA.wy $00B1,Y 
       STA    GRP0    
       JMP    LBEAC   
LBE9E: LDA    #$00    
       LDY    $8A     
       CPY    #$03    
       BCS    LBEA8   
       LDA    #$02    
LBEA8: STA    ENABL   
       LDY    $97     
LBEAC: INC    $8A     
       INC    $8B     
       DEY            
       BMI    LBEBB   
       BNE    LBE7F   
       STA    WSYNC   
       STY    PF2     
       BEQ    LBE81   
LBEBB: LDA    $F6     
       BEQ    LBEC5   
       LDA    LBFB1,X 
       JMP    LBEC8   
LBEC5: LDA    LBFD6,X 
LBEC8: STA    PF2     
       LDY    #$04    
       DEX            
       BNE    LBE81   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$08    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BIT    $80     
       STX    GRP1    
       STX    GRP0    
       LDA    #$1A    
       AND    $9B     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       STA    WSYNC   
       STX    PF0     
       STX    PF1     
       STX    PF2     
       LDX    #$0F    
       LDA    $99     
       BEQ    LBF0B   
LBF03: STA    WSYNC   
       DEX            
       BPL    LBF03   
       JMP    LBF7C   
LBF0B: LDA    #$10    
       STA    HMP1    
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    $80     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $97     
       LDA    #$00    
LBF1E: STA    PF2     
       STA    WSYNC   
       STA    HMOVE   
       LDA    LBF4E,X 
       STA    GRP0    
       LDA    LBF5D,X 
       STA    GRP1    
       TXA            
       SBC    #$05    
       AND    #$0F    
       ORA    $97     
       LDY    LBF6C,X 
       STY    GRP0    
       STA    HMCLR   
       TAY            
       LDA    LB49C,Y 
       AND    #$0F    
       STA    PF2     
       LDA    #$00    
       DEX            
       BPL    LBF1E   
       STA    PF2     
       JMP    LBF7C   
LBF4E: .byte $00,$00,$05,$0A,$EA,$28,$4E,$80,$E7,$08,$EB,$AA,$AB,$A8,$A7
LBF5D: .byte $00,$00,$A8,$A8,$EA,$AA,$EF,$00,$91,$51,$51,$57,$55,$55,$97
LBF6C: .byte $00,$00,$B7,$A1,$B2,$A4,$B7,$00,$77,$54,$54,$72,$51,$55,$72,$00
LBF7C: LDX    #$0D    
       JSR    LB836   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    TIM8T   
       LDA    $99     
       BEQ    LBFA0   
       LDA    $80     
       BPL    LBFA0   
       LDA    $F1     
       BNE    LBFA0   
       LDA    $EB     
       EOR    #$FF    
       STA    $EB     
LBFA0: LDA    INTIM   
       BNE    LBFA0   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$29    
       STA    TIM64T  
       JMP    LBD35   
LBFB1: .byte $00,$00,$F8,$00,$48,$48,$58,$58,$68,$68,$48,$48,$00,$48,$48,$48
       .byte $48,$78,$48,$48,$30,$00,$40,$40,$40,$40,$78,$48,$48,$78,$00,$F8
       .byte $00,$00,$00,$00,$00
LBFD6: .byte $00,$00,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8
       .byte $A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8,$A8,$F8
       .byte $00,$00,$00,$00,$00,$00,$00,$B0,$00,$B0
