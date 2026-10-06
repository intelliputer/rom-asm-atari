; Disassembly of roms/stunt.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/stunt.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
HMP0    =  $20
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
INPT0   =  $38
INPT1   =  $39
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF5D1   
       LDA    #$0A    
       STA    $A9     
       STA    $A7     
       JSR    LF5C8   
LF018: LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$7F    
       STX    VBLANK  
       STA    $90     
       STA    $9C     
       STA    $A3     
       STA    $B3     
       STA    $91     
       STA    $8F     
       LDA    $A9     
       CMP    #$0A    
       BEQ    LF061   
       CMP    #$28    
       BEQ    LF061   
       CMP    #$46    
       BEQ    LF061   
       STA    $91     
       LDA    $A9     
       CMP    #$1E    
       BEQ    LF061   
       CMP    #$3C    
       BEQ    LF061   
       CMP    #$5A    
       BEQ    LF061   
       LDA    $8E     
       STA    $8F     
LF061: LDA    #$04    
       STA    CTRLPF  
       INC    $B4     
       LDA    #$0A    
       STA    $B2     
       LDA    #$AA    
       STA    $92     
       LDA    $A9     
       CMP    #$28    
       BCC    LF07D   
       CMP    #$46    
       BCS    LF07D   
       LDA    #$82    
       STA    $92     
LF07D: LDA    $A6     
       BEQ    LF095   
       LDA    $8C     
       BNE    LF095   
       LDA    $8E     
       BNE    LF090   
       BIT    SWCHA   
       BPL    LF0B3   
       BMI    LF095   
LF090: BIT    SWCHA   
       BVC    LF0B3   
LF095: LDA    $B1     
       CMP    #$32    
       BNE    LF0B8   
       LDA    #$41    
       STA    $AC     
       STA    $AD     
       LDA    $B8     
       CMP    #$0A    
       BNE    LF0B8   
       LDA    #$00    
       STA    $B7     
       STA    $8C     
       STA    $94     
       STX    $9C     
       BEQ    LF0B8   
LF0B3: JSR    LF5C8   
       STX    $8C     
LF0B8: LDA    $B8     
       CLC            
       ADC    $B7     
       STA    $B8     
       CLC            
       ADC    #$08    
       STA    $B9     
       CLC            
       LDA    $B8     
       CMP    #$9B    
       BCC    LF0CF   
       LDA    #$01    
       STA    $B9     
LF0CF: LDA    $B1     
       CMP    $92     
       BEQ    LF0F5   
       LDA    $B0     
       LDX    #$01    
       BEQ    LF0DC   
LF0DB: INX            
LF0DC: SEC            
       SBC    #$28    
       BPL    LF0DB   
       STX    $B7     
       DEC    $B7     
       LDA    $B7     
       CMP    #$01    
       BEQ    LF0F5   
       LDA    $B1     
       CMP    #$32    
       BNE    LF0F5   
       LDA    #$02    
       STA    $B7     
LF0F5: LDA    $AB     
       BEQ    LF0FD   
       STA    $B7     
       BNE    LF113   
LF0FD: LDA    $B1     
       CMP    $92     
       BCS    LF113   
       LDA    $B4     
       AND    #$34    
       BNE    LF113   
       LDY    $B7     
       LDA    $AC     
       CLC            
       ADC    LF7F7,Y 
       STA    $AC     
LF113: LDA    $B1     
       CMP    #$32    
       BEQ    LF12B   
       LDA    $9B     
       STA    $B1     
       LDA    $88     
       BEQ    LF12B   
       DEC    $88     
       LDA    #$19    
       STA    $B1     
       LDA    $9A     
       STA    $B8     
LF12B: LDA    #$09    
       STA    $A0     
       LDA    #$19    
       SEC            
       SBC    $94     
       SBC    $B7     
       STA    $A1     
       LDA    #$0A    
       STA    $A2     
       LDA    $9C     
       BEQ    LF15A   
       LDA    #$01    
       STA    $96     
       LDA    SWCHB   
       AND    #$40    
       BNE    LF14D   
       STA    $96     
LF14D: LDA    #$01    
       STA    $97     
       LDA    SWCHB   
       AND    #$80    
       BNE    LF15A   
       STA    $97     
LF15A: LDA    #$28    
       LDX    $8F     
       STA    $98     
       LDA    #$3F    
       STA    $93     
       LDA    $96,X   
       BNE    LF170   
       LDA    #$50    
       STA    $98     
       LDA    #$0F    
       STA    $93     
LF170: LDA    $99     
       STA    $BA     
       LDA    $B5,X   
       CLC            
       ADC    #$64    
       STA    $99     
       LDA    $96,X   
       BNE    LF186   
       LDA    $99     
       CLC            
       ADC    #$0A    
       STA    $99     
LF186: LDA    $B4     
       AND    #$04    
       BNE    LF198   
       LDA    $9C     
       BNE    LF198   
       LDA    #$12    
       STA    $A3     
       LDA    #$1C    
       STA    $B2     
LF198: LDA    $B4     
       AND    #$1F    
       BNE    LF1A6   
       LDA    $94     
       CMP    #$05    
       BEQ    LF1A6   
       INC    $94     
LF1A6: LDA    $B1     
       CMP    #$82    
       BEQ    LF1F4   
       LDA    $B1     
       CMP    #$19    
       BEQ    LF1F4   
       LDA    $9D     
       BNE    LF1EB   
       LDA    $B4     
       AND    $93     
       BNE    LF1C0   
       LDA    $B7     
       STA    $95     
LF1C0: LDX    $95     
       CPX    $B7     
       BCC    LF1C9   
       JMP    LF290   
LF1C9: LDA    #$2E    
       STA    $B2     
       LDA    #$00    
       STA    $94     
       LDA    $A9     
       CMP    #$28    
       BCS    LF1DA   
       JMP    LF290   
LF1DA: LDA    $B8     
       CMP    #$8C    
       BCC    LF1E3   
       JMP    LF290   
LF1E3: INX            
       CPX    $B7     
       BCC    LF1EB   
       JMP    LF290   
LF1EB: LDA    #$40    
       STA    $B2     
       STA    $9D     
       JMP    LF27C   
LF1F4: LDA    $B8     
       CMP    #$20    
       BCC    LF21D   
       LDA    $AA     
       CMP    #$01    
       BEQ    LF21D   
       LDA    CXP0FB  
       BPL    LF21D   
       LDA    $AA     
       CLC            
       ADC    #$06    
       STA    $AA     
       STA    CXCLR   
       STA    $9D     
       LDA    #$07    
       STA    $A0     
       LDA    #$04    
       STA    $A1     
       LDA    #$0E    
       STA    $A2     
       BNE    LF25C   
LF21D: LDA    $B8     
       STA    CXCLR   
       CMP    #$10    
       BCC    LF290   
       CMP    $AC     
       BCS    LF237   
       INC    $AA     
       LDA    $AA     
       CMP    #$0A    
       BCC    LF25C   
       LDA    #$0A    
       STA    $AA     
       BNE    LF25C   
LF237: DEC    $AA     
       LDA    $AA     
       CMP    #$01    
       BCS    LF25C   
       LDA    $AB     
       BNE    LF247   
       LDA    $B8     
       STA    $AD     
LF247: LDA    #$01    
       STA    $AA     
       STA    $AB     
       LDA    #$0C    
       STA    $A0     
       LDA    #$03    
       STA    $A1     
       LDA    $A3     
       CLC            
       ADC    #$05    
       STA    $A2     
LF25C: LDA    #$24    
       CLC            
       ADC    $AA     
       STA    $B3     
       LDA    $AA     
       CMP    #$01    
       BNE    LF290   
       LDA    #$00    
       CLC            
       ADC    $A3     
       STA    $B3     
       LDA    $9D     
       BNE    LF27C   
       LDA    $AD     
       CMP    $99     
       BCC    LF27C   
       STA    $9D     
LF27C: LDA    $9D     
       BEQ    LF290   
       LDA    #$36    
       STA    $B3     
       LDA    #$03    
       STA    $A0     
       LDA    #$02    
       STA    $A1     
       LDA    #$0A    
       STA    $A2     
LF290: LDA    $9C     
       BEQ    LF29C   
       LDA    #$00    
       STA    $A0     
       STA    $A1     
       STA    $A2     
LF29C: LDA    $A0     
       STA    AUDC0   
       LDA    $A1     
       STA    AUDF0   
       LDA    $A2     
       STA    AUDV0   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF2B7   
       JSR    LF5D1   
       STA    $A6     
       JSR    LF5C8   
LF2B7: LDA    SWCHB   
       AND    #$02    
       BEQ    LF2C4   
       LDA    #$00    
       STA    $A8     
       BEQ    LF2EA   
LF2C4: JSR    LF5D1   
       STA    $A7     
       LDA    $A8     
       BEQ    LF2D5   
       LDA    $B4     
       AND    #$1F    
       STA    $A8     
       BNE    LF2EA   
LF2D5: LDA    $A9     
       LDX    #$00    
       STX    $B4     
       CLC            
       ADC    #$0A    
       STA    $A8     
       STA    $A9     
       CMP    #$64    
       BNE    LF2EA   
       LDA    #$0A    
       STA    $A9     
LF2EA: LDA    $B8     
       LDX    $8F     
       CMP    #$A0    
       BCS    LF2F5   
       JMP    LF369   
LF2F5: LDA    #$00    
       STA    $B8     
       STA    $9A     
       LDA    #$3C    
       STA    $88     
       LDA    $9D     
       BNE    LF310   
       LDA    $B1     
       CLC            
       ADC    #$28    
       STA    $B1     
       STA    $9B     
       CMP    #$AA    
       BNE    LF369   
LF310: LDA    #$32    
       STA    $90     
       STA    $B1     
       STA    $9B     
       LDA    #$0A    
       STA    $B8     
       LDA    #$00    
       STA    $AB     
       STA    $AA     
       LDA    $9D     
       BNE    LF340   
       LDA    $B5,X   
       CMP    #$30    
       BEQ    LF355   
       CLC            
       ADC    #$06    
       STA    $B5,X   
       LDA    $AE,X   
       CLC            
       ADC    #$0A    
       STA    $AE,X   
       CMP    #$64    
       BNE    LF340   
       LDA    #$00    
       STA    $AE,X   
LF340: LDA    $9D     
       BEQ    LF369   
       LDA    #$00    
       STA    $9D     
       LDA    $A4,X   
       CMP    $98     
       BCS    LF355   
       CLC            
       ADC    #$0A    
       STA    $A4,X   
       BNE    LF369   
LF355: LDA    $8D     
       BNE    LF361   
       LDA    $91     
       BEQ    LF361   
       INC    $8D     
       BNE    LF369   
LF361: LDA    #$00    
       STA    $A6     
       LDA    #$FF    
       STA    $86     
LF369: LDA    #$00    
       STA    $B0     
       STA    $BC     
       LDX    $8E     
       LDA    $81     
       STA    COLUBK  
       LDA    $82     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $84,X   
       STA    COLUPF  
       LDA    $9D     
       BEQ    LF389   
       LDA    $85     
       STA    COLUP0  
       STA    COLUP1  
LF389: LDX    #$04    
LF38B: LDY    #$00    
       LDA    $B8,X   
       CMP    #$52    
       BCC    LF397   
       SBC    #$4B    
       LDY    #$05    
LF397: CPX    #$02    
       ADC    #$02    
LF39B: INY            
       SBC    #$0F    
       BCS    LF39B   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF3AC: DEY            
       BPL    LF3AC   
       STA    RESP0,X 
       DEX            
       BPL    LF38B   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $8F     
       LDA.wy $00AE,Y 
       STA    $9E     
       LDX    $A4,Y   
       LDA    $A7     
       BEQ    LF3D7   
       LDX    $A9     
       LDA    #$FF    
       STA    $86     
       LDA    #$14    
       STA    $9E     
       LDA    $91     
       BNE    LF3D7   
       LDA    #$0A    
       STA    $9E     
LF3D7: LDA    INTIM   
       BNE    LF3D7   
       STA    WSYNC   
       STA    VBLANK  
LF3E0: JSR    LF521   
       CMP    #$14    
       BEQ    LF3E9   
       BNE    LF3E0   
LF3E9: STA    WSYNC   
       INY            
       INX            
       INC    $BC     
       INC    $9E     
       LDA    #$00    
       STA    PF0     
       LDA    LF6F4,X 
       STA    PF1     
       LDA    #$00    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STX    $9F     
       LDX    $9E     
       LDA    LF6F4,X 
       STA    PF1     
       LDX    $9F     
       LDA    #$00    
       STA    PF2     
       CPY    #$0A    
       BNE    LF3E9   
       JSR    LF521   
       LDA    #$32    
       STA    $9E     
       JSR    LF557   
       LDA    #$5A    
       STA    $9E     
       JSR    LF557   
LF426: JSR    LF521   
       LDA    $BC     
       CMP    #$7B    
       BEQ    LF431   
       BNE    LF426   
LF431: LDX    $8F     
       LDA    $B5,X   
       STA    $9F     
       CLC            
       ADC    #$06    
       STA    $9E     
       LDY    #$00    
       LDX    $B3     
       LDA    $B1     
       CMP    #$82    
       BEQ    LF44C   
       LDX    #$36    
       LDA    $80     
       STA    COLUP1  
LF44C: INY            
       CPY    #$0D    
       BEQ    LF473   
       INX            
       LDA    LF759,X 
       STA    WSYNC   
       STA    GRP0    
       LDA    LF7A2,X 
       STA    GRP1    
       LDA    LF60F,Y 
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BEQ    LF44C   
LF473: LDY    $9F     
       LDA    #$05    
       STA    CTRLPF  
       LDA    $B1     
       CMP    #$82    
       BEQ    LF481   
       LDX    #$00    
LF481: INX            
       LDA    LF759,X 
       STA    WSYNC   
       STA    GRP0    
       LDA    LF7A2,X 
       STA    GRP1    
       LDA    #$7F    
       STA    PF0     
       LDA    LF61C,Y 
       STA    PF1     
       LDA    LF652,Y 
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       LDA    LF6BE,Y 
       STA    PF1     
       LDA    LF688,Y 
       STA    PF2     
       INY            
       CPY    $9E     
       BNE    LF481   
       LDX    #$FF    
       JSR    LF593   
       LDA    #$2B    
       STA    TIM64T  
       LDA    $B4     
       BNE    LF4C7   
       INC    $87     
       DEC    $89     
       BPL    LF4C7   
       LDA    #$FF    
       STA    $86     
LF4C7: LDA    SWCHB   
       LDX    #$07    
       LDY    #$0B    
       AND    #$08    
       BEQ    LF4D6   
       LDX    #$F7    
       LDY    #$05    
LF4D6: LDA    $86     
       BMI    LF4DC   
       LDX    #$FF    
LF4DC: AND    $87     
       STA    $8A     
       STX    $8B     
       LDX    #$05    
LF4E4: LDA    LF7EB,Y 
       EOR    $8A     
       AND    $8B     
       STA    $80,X   
       DEY            
       DEX            
       BPL    LF4E4   
       LDA    $91     
       BEQ    LF519   
       LDA    $8D     
       CMP    #$02    
       BCC    LF507   
       LDA    $86     
       BEQ    LF519   
       LDA    $B4     
       AND    #$3F    
       BNE    LF519   
       STX    $90     
LF507: LDA    $90     
       BEQ    LF519   
       LDX    $8E     
       INX            
       TXA            
       AND    #$01    
       STA    $8E     
       LDA    $8D     
       BEQ    LF519   
       INC    $8D     
LF519: LDA    INTIM   
       BNE    LF519   
       JMP    LF018   
LF521: LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       INC    $BC     
       LDA    $8E     
       BNE    LF546   
       LDA    $BC     
       BIT    INPT0   
       BMI    LF53F   
       STA    $B0     
       BPL    LF543   
LF53F: STA    $9F     
       BMI    LF543   
LF543: LDA    $BC     
       RTS            

LF546: LDA    $BC     
       BIT    INPT1   
       BMI    LF550   
       STA    $B0     
       BPL    LF554   
LF550: STA    $9F     
       BMI    LF554   
LF554: LDA    $BC     
       RTS            

LF557: JSR    LF521   
       CMP    $9E     
       BEQ    LF560   
       BNE    LF557   
LF560: LDX    $B2     
       LDA    $83     
       STA    COLUPF  
       LDA    $B1     
       CMP    $9E     
       BEQ    LF56E   
       LDX    #$00    
LF56E: INY            
       CPY    #$09    
       BEQ    LF592   
       INX            
       STA    WSYNC   
       LDA    LF759,X 
       STA    GRP0    
       LDA    LF7A2,X 
       STA    GRP1    
       LDA    #$7F    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       BEQ    LF56E   
LF592: TAX            
LF593: LDA    $84     
       STA    $9E     
       LDY    #$09    
LF599: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       STX    ENAM0   
       LDX    $9E     
       STX    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       TAX            
       STY    $9E     
       LDA    $83     
       AND    #$F0    
       ORA    $9E     
       STA    $9E     
       STA    WSYNC   
       INC    $BC     
       DEY            
       CPY    #$FE    
       BNE    LF599   
       STA    WSYNC   
       LDA    $80     
       STA    COLUBK  
       RTS            

LF5C8: LDA    #$78    
       STA    $89     
       LDA    #$00    
       STA    $86     
       RTS            

LF5D1: LDA    #$00    
       STA    $90     
       STA    $8E     
       STA    $AB     
       STA    $A6     
       STA    $A7     
       STA    $9D     
       STA    $B5     
       STA    $B6     
       STA    $A4     
       STA    $A5     
       STA    $8D     
       STA    $B3     
       TAY            
       LDA    #$0A    
       STA    $B8     
       STA    $AE     
       STA    $AF     
       STA    $B2     
       LDA    #$12    
       STA    $B9     
       LDA    #$32    
       STA    $B1     
       STA    $9B     
       RTS            

LF601: .byte $D0,$FB,$A8,$60,$29,$0F,$85,$A6,$0A,$0A,$65,$A6,$69,$04
LF60F: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$7F
LF61C: .byte $02,$06,$0E,$1E,$3E,$7E,$02,$06,$0E,$1E,$3E,$7E,$02,$06,$0E,$1E
       .byte $3E,$7E,$02,$06,$0E,$1E,$3E,$7E,$02,$06,$0E,$1E,$3E,$7E,$02,$06
       .byte $0E,$1E,$3E,$7E,$02,$06,$0E,$1E,$3E,$7E,$02,$06,$0E,$1E,$3E,$7E
       .byte $02,$06,$0E,$1E,$3E,$7E
LF652: .byte $05,$0D,$1D,$3D,$7D,$FD,$15,$35,$75,$F5,$F5,$F5,$55,$D5,$D5,$D5
       .byte $D5,$D5,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
       .byte $55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55,$55
       .byte $55,$55,$55,$55,$55,$55
LF688: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$00,$00,$80,$C0
       .byte $E0,$F0,$80,$C0,$E0,$F0,$F8,$FC,$A0,$B0,$B8,$BC,$BE,$BF,$A8,$AC
       .byte $AE,$AF,$AF,$AF,$AA,$AB,$AB,$AB,$AB,$AB,$AA,$AA,$AA,$AA,$AA,$AA
       .byte $AA,$AA,$AA,$AA,$AA,$AA
LF6BE: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$01,$03,$00,$00,$01,$03,$07,$0F,$01,$03,$07,$0F,$1F,$3F
       .byte $05,$0D,$1D,$3D,$7D,$FD
LF6F4: .byte $00,$07,$07,$05,$05,$05,$05,$05,$05,$07,$07,$02,$02,$06,$06,$02
       .byte $02,$02,$02,$07,$07,$07,$07,$01,$01,$07,$07,$04,$04,$07,$07,$07
       .byte $07,$01,$01,$03,$03,$01,$01,$07,$07,$05,$05,$05,$05,$05,$07,$07
       .byte $01,$01,$01,$07,$07,$04,$04,$07,$07,$01,$01,$07,$07,$07,$07,$04
       .byte $04,$07,$07,$05,$05,$07,$07,$07,$07,$01,$01,$02,$02,$04,$04,$04
       .byte $04,$07,$07,$05,$05,$07,$07,$05,$05,$07,$07,$07,$07,$05,$05,$07
       .byte $07,$01,$01,$07,$07
LF759: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$1E,$1F,$0C,$0F
       .byte $2F,$13,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$1E,$1F
       .byte $0C,$0F,$17,$2B,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18
       .byte $3C,$3F,$19,$2E,$10,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$14,$09,$17,$02
LF7A2: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0,$10,$08
       .byte $FA,$E4,$0A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E0
       .byte $10,$08,$F4,$EA,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$40
       .byte $E8,$90,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$08,$14,$08,$74,$98,$FC,$3C,$18
LF7EB: .byte $10,$83,$FF,$27,$00,$43,$00,$03,$0F,$07,$00,$03
LF7F7: .byte $00,$FF,$00,$01,$02,$00,$F0,$B4,$F5
