; Disassembly of roms/Armor Ambush.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Armor Ambush.bin
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
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
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
LF000: BIT    $B1     
       BPL    LF011   
       LDA    #$D4    
       LDX    #$00    
       JSR    LFE00   
       LDA    #$45    
       INX            
       JMP    LFE00   
LF011: LDA    $A0     
       AND    #$01    
       TAX            
       STA    $9A     
       LDA    $8A,X   
       BEQ    LF021   
       JSR    LF0E3   
       BNE    LF034   
LF021: LDA    #$D8    
       STA    COLUBK  
       LDA    $BD     
       STA    COLUPF  
       LDA    $BC     
       STA    CTRLPF  
       LDA    #$00    
       STA    $BB     
       JMP    LF046   
LF034: LDA    #$D8    
       STA    COLUPF  
       LDA    $BD     
       STA    COLUBK  
       LDA    $BC     
       AND    #$FB    
       STA    CTRLPF  
       LDA    #$FF    
       STA    $BB     
LF046: LDX    $9A     
       LDA.wx $008A,X 
       LSR            
       STA    $9A     
       LDA    #$88    
       SEC            
       SBC    $9A     
       STA    $C6     
       LDA    #$F7    
       SBC    #$00    
       STA    $C7     
       LDA.wx $0084,X 
       JSR    LFA20   
       LDX    #$04    
       JSR    LFE00   
       LDX    #$03    
       LDA    #$06    
       STA    $9C     
LF06C: LDA    $80,X   
       JSR    LFA20   
       JSR    LFE00   
       LDA    $86,X   
       CPX    #$01    
       ADC    #$01    
       LSR            
       STA    $9A     
       LDA    #$60    
       SEC            
       SBC    $9A     
       LDY    $9C     
       STA.wy $00BE,Y 
       LDA    #$FC    
       SBC    #$00    
       STA.wy $00BF,Y 
       CPX    #$02    
       BCS    LF0C3   
       LDA    $8E,X   
       CMP    #$10    
       BCS    LF0A9   
       AND    #$08    
       STA    REFP0,X 
       LDY    $8E,X   
       CPY    #$09    
       BCC    LF0AC   
       TYA            
       EOR    #$0F    
       TAY            
       INY            
       BPL    LF0AC   
LF0A9: SBC    #$07    
       TAY            
LF0AC: STY    $9A     
       LDA    LF0CB,Y 
       SEC            
       SBC    $86,X   
       LDY    $9C     
       STA.wy $00C8,Y 
       LDY    $9A     
       LDA    LF0D7,Y 
       LDY    $9C     
       STA.wy $00C9,Y 
LF0C3: DEC    $9C     
       DEC    $9C     
       DEX            
       BPL    LF06C   
       RTS            

LF0CB: .byte $D0,$E0,$F0,$00,$D0,$E0,$F0,$00,$D0,$E0,$F0,$00
LF0D7: .byte $FB,$FB,$FB,$FB,$FC,$FC,$FC,$FC,$FD,$FD,$FD,$FD
LF0E3: LDA    $8A,X   
       SEC            
       SBC    #$03    
       LSR            
       STA    $9B     
       LSR            
       TAY            
       LDA    $84,X   
LF0EF: LSR            
       LSR            
       CMP    #$14    
       BCC    LF11F   
       SBC    #$14    
       TAX            
       LDA    ($CC),Y 
       LSR            
       TXA            
       BCC    LF11F   
       CMP    #$08    
       BCC    LF118   
       SBC    #$08    
       CMP    #$08    
       BCC    LF111   
       SBC    #$08    
       TAX            
       LDA    LF14A,X 
       AND    ($CC),Y 
       RTS            

LF111: TAX            
       LDA    LF142,X 
       AND    ($CE),Y 
       RTS            

LF118: TAX            
       LDA    LF14A,X 
       AND    ($D0),Y 
       RTS            

LF11F: ADC    #$04    
       CMP    #$08    
       BCC    LF13B   
       SBC    #$08    
       CMP    #$08    
       BCC    LF134   
       SBC    #$08    
       TAX            
       LDA    LF142,X 
       AND    ($D0),Y 
       RTS            

LF134: TAX            
       LDA    LF14A,X 
       AND    ($CE),Y 
       RTS            

LF13B: TAX            
       LDA    LF142,X 
       AND    ($CC),Y 
       RTS            

LF142: .byte $01,$02,$04,$08,$10,$20,$40,$80
LF14A: .byte $80,$40,$20,$10,$08,$04,$02,$01
LF152: LDA    $B1     
       AND    #$03    
       BNE    LF19C   
       CPX    #$00    
       BNE    LF166   
       LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       JMP    LF16B   
LF166: LDA    SWCHA   
       AND    #$0F    
LF16B: EOR    #$0F    
       BEQ    LF18B   
       LDY    $8C,X   
       CPY    #$02    
       BNE    LF192   
       CMP    #$02    
       BEQ    LF19F   
       STA    $9D     
       AND    #$04    
       BNE    LF1DD   
       LDA    $9D     
       AND    #$08    
       BNE    LF1E1   
LF185: LDA    $9D     
       AND    #$01    
       BNE    LF205   
LF18B: LDA    LF19D,X 
       AND    $B1     
       BNE    LF1AF   
LF192: LDA    $AD,X   
       BPL    LF198   
       INC    $AD,X   
LF198: LDA    #$02    
       STA    $A1,X   
LF19C: RTS            

LF19D: .byte $20,$10
LF19F: DEC    $A1,X   
       BPL    LF19C   
       LDA    LF19D,X 
       ORA    $B1     
       STA    $B1     
       LDA    #$80    
       STA    $A1,X   
       RTS            

LF1AF: LDA    LF19D,X 
       EOR    #$FF    
       AND    $B1     
       STA    $B1     
       LDA    $88,X   
       BEQ    LF19C   
LF1BC: LDA    $88,X   
       LDY    $86,X   
       STA    $86,X   
       STY    $88,X   
       LDA    $82,X   
       LDY    $80,X   
       STA    $80,X   
       STY    $82,X   
       LDA    $90,X   
       LDY    $8E,X   
       STA    $8E,X   
       STY    $90,X   
       LDA    $A5,X   
       LDY    $A3,X   
       STA    $A3,X   
       STY    $A5,X   
       RTS            

LF1DD: LDA    #$02    
       BNE    LF1E3   
LF1E1: LDA    #$FE    
LF1E3: LDY    $A7,X   
       CPY    #$04    
       BNE    LF1EA   
       ASL            
LF1EA: JSR    LF6A8   
       ADC    $8E,X   
       AND    #$0F    
       LDY    $8E,X   
       STY    $9C     
       STA    $8E,X   
       JSR    LF2BB   
       CMP    #$00    
       BNE    LF185   
       LDA    $9C     
       STA    $8E,X   
       JMP    LF185   
LF205: LDA    $AD,X   
       BEQ    LF20B   
       BPL    LF211   
LF20B: CMP    #$F8    
       BEQ    LF211   
       DEC    $AD,X   
LF211: LDA    #$00    
       STA    $9A     
       LDA    $80,X   
       STA    $9C     
       LDA    $86,X   
       STA    $9D     
       LDY    $8E,X   
       LDA    LF31B,Y 
       JSR    LF2FB   
       JSR    LF6A8   
       BNE    LF22C   
       INC    $9A     
LF22C: ADC    $80,X   
       CMP    #$97    
       BCS    LF234   
       STA    $80,X   
LF234: LDA    LF32B,Y 
       JSR    LF2FB   
       JSR    LF6A8   
       BNE    LF241   
       INC    $9A     
LF241: ADC    $86,X   
       CMP    #$0F    
       BCC    LF24D   
       CMP    #$C0    
       BCS    LF24D   
       STA    $86,X   
LF24D: LDA    $9A     
       BNE    LF282   
       JSR    LF2BB   
       CMP    #$00    
       BNE    LF27F   
       LDA    $9C     
       LDY    $80,X   
       STA    $80,X   
       STY    $9C     
       JSR    LF2BB   
       CMP    #$00    
       BNE    LF27F   
       LDA    $9C     
       LDY    $80,X   
       STA    $80,X   
       STY    $9C     
       LDA    $9D     
       STA    $86,X   
       JSR    LF2BB   
       CMP    #$00    
       BNE    LF27F   
       LDA    $9C     
       STA    $80,X   
       RTS            

LF27F: STA    $A7,X   
       RTS            

LF282: LDA    #$64    
       STA    $A7,X   
       JSR    LF2BB   
       JSR    LF2F1   
       JSR    LF2A5   
       JSR    LF2F1   
       JSR    LF2B0   
       JSR    LF2F1   
       CMP    #$00    
       BNE    LF2A4   
       LDA    $9C     
       STA    $80,X   
       LDA    $9D     
       STA    $86,X   
LF2A4: RTS            

LF2A5: LDA    $8E,X   
       LSR            
       LSR            
       CLC            
       ADC    #$10    
       TAY            
       JMP    LF2BD   
LF2B0: LDA    $8E,X   
       LSR            
       LSR            
       CLC            
       ADC    #$14    
       TAY            
       JMP    LF2BD   
LF2BB: LDY    $8E,X   
LF2BD: STX    $9A     
       LDA    $86,X   
       SEC            
       SBC    LF353,Y 
       LSR            
       LSR            
       PHP            
       STA    $9B     
       LDA    $80,X   
       CLC            
       ADC    LF33B,Y 
       LDY    $9B     
       JSR    LF0EF   
       BEQ    LF2EB   
       PLP            
       TYA            
       ADC    #$00    
       TAY            
       LDA    ($CC),Y 
       LSR            
       LSR            
       AND    #$03    
       CMP    #$03    
       BNE    LF2EE   
       LDA    #$04    
       JMP    LF2EE   
LF2EB: PLP            
       LDA    #$03    
LF2EE: LDX    $9A     
       RTS            

LF2F1: CMP    $A7,X   
       BCS    LF2F8   
       STA    $A7,X   
       RTS            

LF2F8: LDA    $A7,X   
       RTS            

LF2FB: STA    $9B     
       LDA    $A7,X   
       CMP    #$02    
       BCC    LF310   
       BEQ    LF310   
       CMP    #$03    
       BNE    LF30C   
       LDA    $9B     
       RTS            

LF30C: LDA    $9B     
       ASL            
       RTS            

LF310: LDA    $9B     
       LSR            
       ADC    #$00    
       EOR    #$40    
       SEC            
       SBC    #$40    
       RTS            

LF31B: .byte $00,$FD,$FA,$F8,$F7,$F8,$FA,$FD,$00,$03,$06,$08,$09,$08,$06,$03
LF32B: .byte $0D,$0C,$09,$05,$00,$FB,$F7,$F4,$F3,$F4,$F7,$FB,$00,$05,$09,$0C
LF33B: .byte $05,$02,$02,$00,$00,$00,$02,$02,$04,$05,$06,$08,$08,$08,$06,$06
       .byte $00,$02,$07,$05,$07,$02,$00,$05
LF353: .byte $02,$02,$03,$05,$08,$0A,$0D,$0E,$0E,$0E,$0D,$0A,$08,$05,$03,$02
       .byte $02,$0B,$0A,$03,$02,$03,$0A,$0B
LF36B: LDA    $8A,X   
       BNE    LF3B9   
       LDA    $98,X   
       BEQ    LF376   
       DEC    $98,X   
       RTS            

LF376: LDA    $8C,X   
       CMP    #$02    
       BNE    LF387   
       LDA    REFP1,X 
       BMI    LF3FC   
       LDA    LF19D,X 
       ORA    #$03    
       AND    $B1     
LF387: BNE    LF3FC   
       DEC    $98,X   
       BPL    LF3FC   
       LDY    $8E,X   
       LDA    $86,X   
       SEC            
       SBC    LF353,Y 
       ADC    #$02    
       STA    $8A,X   
       LDA    $80,X   
       CLC            
       ADC    LF33B,Y 
       STA    $84,X   
       LDA    LF31B,Y 
       ASL            
       ASL            
       STA    $94,X   
       LDA    LF32B,Y 
       ASL            
       ASL            
       STA    $96,X   
       LDA    #$23    
       STA    $98,X   
       JSR    LFE36   
       JMP    LFB00   
LF3B9: DEC    $98,X   
       BEQ    LF42C   
       LDA    $84,X   
       STA    $9C     
       LDA    $8A,X   
       STA    $9D     
       LDA    $94,X   
       JSR    LF6A8   
       ADC    $84,X   
       CMP    #$A0    
       BCC    LF3D8   
       BIT    SWCHB   
       BVC    LF42C   
       JMP    LF461   
LF3D8: STA    $84,X   
       LDA    $96,X   
       JSR    LF6A8   
       ADC    $8A,X   
       CMP    #$03    
       BCC    LF3E9   
       CMP    #$C5    
       BCC    LF3F1   
LF3E9: BIT    SWCHB   
       BVC    LF42C   
       JMP    LF46F   
LF3F1: STA    $8A,X   
       STX    $9A     
       JSR    LF0E3   
       BNE    LF3FD   
       LDX    $9A     
LF3FC: RTS            

LF3FD: LDX    $9A     
       INC    $9B     
       LSR    $9B     
       LDY    $9B     
       LDA    ($CC),Y 
       AND    #$0C    
       CMP    #$00    
       BEQ    LF439   
       CMP    #$08    
       BNE    LF3FC   
       LDA    #$0F    
       STA    $9A     
       LDA    $98,X   
       SEC            
       SBC    #$0F    
       BCC    LF42C   
LF41C: LSR    $9A     
       SEC            
       SBC    #$05    
       BCS    LF41C   
       LDA    $9A     
       EOR    #$0F    
       AND    $9F     
       BEQ    LF42C   
       RTS            

LF42C: LDA    #$12    
       CMP    $98,X   
       BCS    LF434   
       STA    $98,X   
LF434: LDA    #$00    
       STA    $8A,X   
       RTS            

LF439: BIT    SWCHB   
       BVC    LF42C   
       LDA    $9D     
       LDY    $8A,X   
       STA    $8A,X   
       STY    $9D     
       JSR    LF0E3   
       BEQ    LF46D   
       INC    $9B     
       LSR    $9B     
       LDY    $9B     
       LDA    ($CC),Y 
       AND    #$0C    
       BNE    LF46D   
       LDX    $9A     
       LDA    $9D     
       STA    $8A,X   
       LDA    $9C     
       STA    $84,X   
LF461: LDA    $94,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $94,X   
       JMP    LF478   
LF46D: LDX    $9A     
LF46F: LDA    $96,X   
       EOR    #$FF    
       CLC            
       ADC    #$01    
       STA    $96,X   
LF478: LDA    $98,X   
       CLC            
       ADC    #$06    
       STA    $98,X   
       RTS            

LF480: LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    REFP0   
       STA    REFP1   
       LDA    #$C4    
       STA    COLUBK  
       LDA    #$00    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$02    
       STA    NUSIZ1  
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$42    
       STA    $CC     
       LDA    #$FD    
       STA    $CD     
       LDA    #$4E    
       STA    $CE     
       LDA    #$FD    
       STA    $CF     
       LDA    #$5A    
       STA    $D0     
       LDA    #$FD    
       STA    $D1     
       LDX    #$00    
       JSR    LF510   
       LDY    #$32    
LF4C7: STA    WSYNC   
       DEY            
       BNE    LF4C7   
       JSR    LF536   
       LDA    #$70    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$66    
       STA    $CC     
       LDA    #$FD    
       STA    $CD     
       LDA    #$72    
       STA    $CE     
       LDA    #$FD    
       STA    $CF     
       LDA    #$7E    
       STA    $D0     
       LDA    #$FD    
       STA    $D1     
       LDX    #$01    
       JSR    LF510   
       LDY    #$0A    
LF4F4: STA    WSYNC   
       DEY            
       BNE    LF4F4   
       JSR    LF536   
       LDA    #$00    
       STA    VDELP0  
       LDA    #$00    
       STA    COLUP0  
       LDY    #$64    
LF506: STA    WSYNC   
       DEY            
       BNE    LF506   
       LDA    #$02    
       STA    VBLANK  
       RTS            

LF510: LDA    $AB,X   
       AND    #$0F    
       ASL            
       STA    $9A     
       ASL            
       ADC    $9A     
       STA    $CA     
       LDA    #$FD    
       STA    $CB     
       LDA    $AB,X   
       AND    #$F0    
       BNE    LF528   
       LDA    #$A0    
LF528: LSR            
       LSR            
       STA    $9A     
       LSR            
       ADC    $9A     
       STA    $C8     
       LDA    #$FD    
       STA    $C9     
       RTS            

LF536: LDY    #$0B    
LF538: LDA    ($CC),Y 
       STA    WSYNC   
       STA    GRP0    
       LDA    ($CE),Y 
       STA    GRP1    
       LDA    ($D0),Y 
       STA    GRP0    
       STY    $9A     
       TYA            
       LSR            
       TAY            
       LDA    ($CA),Y 
       TAX            
       LDA    ($C8),Y 
       STX    GRP1    
       STA    GRP0    
       STX    GRP1    
       LDY    $9A     
       DEY            
       BPL    LF538   
       INY            
       STY    GRP0    
       STY    GRP1    
       STY    GRP0    
       RTS            

LF563: TXA            
       EOR    #$01    
       TAX            
       STX    $9A     
       JSR    LF578   
       LDX    $9A     
       TXA            
       EOR    #$01    
       TAX            
       JSR    LF578   
       LDX    $9B     
       RTS            

LF578: STX    $9B     
       LDA    WSYNC,X 
       ASL            
       BPL    LF5A6   
       LDA    $8C,X   
       CMP    #$02    
       BNE    LF5A6   
       LDX    $9A     
       LDA    $98,X   
       LDX    $9B     
       CMP    #$24    
       BCS    LF593   
       CMP    #$21    
       BCS    LF5A6   
LF593: INC    $A3,X   
       LDA    $A3,X   
       CMP    #$03    
       BCC    LF5C3   
LF59B: JSR    LF5CB   
       LDX    $9A     
       JSR    LFE45   
       JMP    LF42C   
LF5A6: LDA    NUSIZ0,X
       ASL            
       BPL    LF615   
       INC    $A5,X   
       LDA    $A5,X   
       CMP    #$03    
       BCC    LF5C3   
       LDA    $8C,X   
       CMP    #$02    
       BEQ    LF5BD   
       LDA    #$00    
       STA    $86,X   
LF5BD: JSR    LF1BC   
       JMP    LF59B   
LF5C3: LDX    $9A     
       JSR    LFE41   
       JMP    LF42C   
LF5CB: INX            
       TXA            
       DEX            
       ORA    $B1     
       STA    $B1     
       LDA    #$01    
       STA    $8C,X   
       LDA    #$10    
       STA    $8E,X   
       LDA    $88,X   
       BNE    LF5E2   
       LDA    #$0F    
       BNE    LF5E4   
LF5E2: LDA    #$08    
LF5E4: STA    $92,X   
       SED            
       SEC            
       LDA    $AB,X   
       SBC    #$01    
       STA    $AB,X   
       CLD            
       BNE    LF5F7   
       LDA    $B1     
       ORA    #$40    
       STA    $B1     
LF5F7: RTS            

LF5F8: LDA    $A0     
       AND    #$06    
       BNE    LF614   
       LDA    $8C,X   
       CMP    #$01    
       BNE    LF614   
       DEC    $92,X   
       BEQ    LF616   
       INC    $8E,X   
       LDA    $8E,X   
       CMP    #$13    
       BCC    LF614   
       LDA    #$10    
       STA    $8E,X   
LF614: CLC            
LF615: RTS            

LF616: INX            
       TXA            
       DEX            
       EOR    $B1     
       STA    $B1     
       LDY    $88,X   
       BEQ    LF63F   
       LDA    $B1     
       AND    #$08    
       BNE    LF64B   
       STY    $86,X   
       LDA    $82,X   
       STA    $80,X   
       LDA    $90,X   
       STA    $8E,X   
       LDA    $A5,X   
       STA    $A3,X   
       LDA    #$02    
       STA    $8C,X   
       LDA    #$00    
       STA    $88,X   
       CLC            
       RTS            

LF63F: LDA    #$00    
       STA    $86,X   
       STA    $8C,X   
       LDA    $92     
       ORA    $93     
       BNE    LF65B   
LF64B: LDA    $B1     
       AND    #$F7    
       ORA    #$A0    
       STA    $B1     
       LDA    #$00    
       STA    $AD     
       STA    $AE     
       SEC            
       RTS            

LF65B: LDA    $B1     
       ORA    #$08    
       STA    $B1     
       CLC            
       RTS            

LF663: LDA    $8C,X   
       CMP    #$02    
       BNE    LF6A7   
       LDA    $A0     
       LSR            
       AND    #$01    
       TAY            
       LDA    #$00    
       STA    $9B     
       INX            
       LDA    LFB88,X 
       DEX            
       STA    $9A     
       LDA    ($9A),Y 
       BEQ    LF6A7   
       SEC            
       SBC    $86,X   
       BCS    LF687   
       EOR    #$FF    
       ADC    #$01    
LF687: CMP    #$09    
       BCS    LF6A7   
       INX            
       LDA    LFB8B,X 
       DEX            
       STA    $9A     
       LDA    ($9A),Y 
       SEC            
       SBC    $80,X   
       BCS    LF69D   
       EOR    #$FF    
       ADC    #$01    
LF69D: CMP    #$06    
       BCS    LF6A7   
       JSR    LF5CB   
       JMP    LFE45   
LF6A7: RTS            

LF6A8: CLC            
       ADC    $9E     
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$08    
       SEC            
       SBC    #$08    
       CLC            
       RTS            

LF6B6: LDA    #$07    
       CLC            
       ADC    $9E     
       AND    #$0F    
       STA    $9E     
       RTS            

LF6C0: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $01,$01,$01,$01,$01,$00,$F0,$F0,$F0,$F0,$30,$00,$08,$08,$08,$08
       .byte $08,$08,$FC,$FC,$FC,$FC,$FC,$0C,$70,$00,$01,$01,$71,$71,$70,$70
       .byte $70,$70,$00,$08,$08,$08,$18,$28,$58,$A8,$08,$01,$01,$01,$00,$08
       .byte $08,$08,$88,$48,$09,$65,$F5,$F5,$F5,$F5,$B5,$05,$05,$04,$04,$04
       .byte $04,$00,$FC,$FC,$FC,$FC,$FC,$0C,$00,$04,$04,$04,$05,$05,$05,$05
       .byte $05,$05,$01,$01,$01,$08,$08,$08,$09,$09,$31,$31,$31,$31,$30,$30
       .byte $00,$04,$04,$04,$04,$04,$04,$05,$05,$05,$59,$29,$59,$29,$09,$FD
       .byte $FD,$FD,$FC,$FC,$0C,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01
       .byte $01,$09,$09,$09,$09,$09,$0B,$0B,$31,$30,$30,$30,$30,$30,$00,$FC
       .byte $FC,$FC,$FD,$FD,$0D,$F1,$F1,$F1,$F0,$F0,$F0,$00,$08,$08,$08,$08
       .byte $09,$09,$09,$01,$01,$00,$00,$00,$04,$04,$04,$04,$04,$04,$04,$04
       .byte $05,$05,$05,$05,$05,$05,$05,$05,$05,$08,$88,$08,$98,$08,$88,$48
       .byte $A8,$18,$08,$09,$59,$29,$09,$01,$01,$00,$08,$48,$A8,$58,$A8,$08
       .byte $00,$00,$00,$00,$08,$09,$09,$01,$01,$01,$01,$01,$0D,$FD,$FD,$FD
       .byte $FD,$FD,$0D,$05,$05,$04,$04,$04,$04,$34,$F4,$F4,$F5,$F5,$95,$05
       .byte $05,$A9,$59,$A9,$09,$81,$81,$81,$80,$80,$80,$00,$08,$58,$A8,$58
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$28,$14,$28
       .byte $54,$00,$FF,$FF,$FF,$FF,$FF,$00,$70,$00,$00,$60,$60,$60,$60,$60
       .byte $60,$60,$00,$00,$00,$01,$02,$01,$02,$00,$00,$00,$00,$00,$00,$28
       .byte $54,$AA,$54,$A8,$00,$30,$78,$FC,$FE,$FC,$FF,$7F,$1F,$1F,$0F,$07
       .byte $07,$07,$FF,$FF,$FF,$FF,$FF,$07,$07,$03,$07,$0F,$0F,$07,$03,$00
       .byte $00,$00,$0F,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$18,$18,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$05,$0A,$05,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$00,$38,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$20,$50,$20,$40,$00,$00,$00,$03,$03,$03,$03,$00,$FF
       .byte $FF,$FF,$FF,$FF,$00,$80,$80,$8F,$8F,$8F,$8F,$00,$20,$40,$A0,$10
       .byte $40,$A0,$00,$00,$00,$00,$00,$00,$00,$01,$03,$01,$03,$07,$0F,$1F
       .byte $1F,$3F,$7F,$3F,$1F,$0F,$03,$01,$00,$00,$00,$80,$40,$A0,$40,$80
       .byte $00,$00,$02,$02,$05,$02,$00,$00,$00,$00,$00,$A0,$40,$80,$00,$00
       .byte $00,$00,$00,$00,$02,$02,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF
       .byte $FF,$FF,$00,$03,$07,$03,$07,$0F,$1F,$0F,$1C,$1C,$FE,$FC,$F8,$70
       .byte $00,$00,$80,$00,$00,$C0,$C0,$C0,$C0,$C0,$C0,$00,$40,$A0,$40,$80
       .byte $F0,$F8,$FC,$D0,$00,$00,$00,$00,$1C,$1C,$1C,$00,$02,$04,$0A,$04
       .byte $0A,$00,$FF,$FF,$FF,$FF,$FF,$00,$80,$00,$00,$80,$80,$80,$80,$80
       .byte $80,$80,$00,$00,$50,$A8,$51,$A8,$50,$A0,$00,$00,$1E,$1E,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$03,$03,$07,$0F
       .byte $1F,$1F,$FF,$FF,$FF,$FF,$FF,$1F,$1F,$07,$03,$87,$87,$FF,$FF,$FF
       .byte $7E,$00,$00,$00,$00,$15,$0A,$14,$0A,$00,$80,$80,$80,$80,$80,$80
       .byte $00,$2C,$7E,$FF,$7A,$70,$E0,$E0,$C0,$00,$0A,$15,$2A,$15,$00,$FF
       .byte $FF,$FF,$FF,$FF,$00,$1F,$18,$18,$18,$18,$18,$18,$1F,$1F,$1F,$1F
       .byte $00,$02,$01,$10,$28,$14,$28,$00,$C0,$C0,$C7,$C7,$C7,$C7,$00,$FF
       .byte $FF,$FF,$FF,$FF,$00,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$1C,$1C,$1C,$1C,$00,$01,$03,$07,$03,$07,$0F,$07,$03
       .byte $03,$67,$EF,$FF,$FF,$FB,$91,$00,$00,$10,$28,$54,$A8,$50,$A0,$50
       .byte $A0,$10,$00,$00,$00,$01,$00,$CF,$00,$00,$80,$40,$A0,$50,$A0,$00
       .byte $1F,$1F,$1F,$00,$00,$00,$00,$03,$03,$03,$3F,$00,$80,$FF,$FF,$FF
       .byte $FF,$FF,$00,$01,$01,$03,$07,$03,$01,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$50,$28,$50,$00,$C0,$C0,$00,$00,$00,$00,$00,$80,$00,$A0,$50
LFA00: .byte $E2,$E2,$E2,$E2,$A4,$A4,$A4,$A4,$D2,$D2,$D2,$D2,$F4,$F4,$F4,$F4
LFA10: .byte $10,$11,$10,$11,$10,$11,$10,$11,$14,$15,$14,$15,$10,$11,$10,$11
LFA20: CLC            
       ADC    #$10    
       STA    $9A     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $9B     
       LDA    $9A     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $9B     
       CLC            
       ADC    $9A     
       AND    #$F0    
       ADC    $9B     
       EOR    #$70    
       RTS            


START:
LFA3D: SEI            
       CLD            
       LDX    #$00    
       LDA    #$00    
LFA43: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LFA43   
       LDA    #$B0    
       STA    $B1     
       LDA    #$25    
       STA    $AB     
       STA    $AC     
       LDA    #$03    
       STA    TIM64T  
       STA    $9F     
LFA5A: JSR    LFB8E   
       LDA    #$1E    
       STA    TIM64T  
       INC    $A0     
       LDA    $A0     
       AND    #$01    
       TAX            
       BIT    $B1     
       BPL    LFA73   
       JSR    LFB1D   
       JMP    LFA87   
LFA73: JSR    LF563   
       JSR    LF5F8   
       BCS    LFA87   
       JSR    LF152   
       JSR    LF36B   
       JSR    LFB4E   
       JSR    LF663   
LFA87: JSR    LFB8E   
       LDA    #$2D    
       STA    TIM64T  
       LDA    #$02    
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    SWCHB   
       LSR            
       BCS    LFAA6   
       JMP    LFA3D   
LFAA6: JSR    LFE16   
       LDY    #$08    
LFAAB: JSR    LFAD5   
       DEY            
       BNE    LFAAB   
       CPX    #$01    
       BNE    LFAB8   
       JSR    LF6B6   
LFAB8: JSR    LF000   
       JSR    LFB8E   
       LDA    #$E9    
       STA    TIM64T  
       STA    CXCLR   
       BIT    $B1     
       BMI    LFACF   
       JSR    LFF0E   
       JMP    LFA5A   
LFACF: JSR    LF480   
       JMP    LFA5A   
LFAD5: LDA    $9F     
       ASL            
       ASL            
       ASL            
       EOR    $9F     
       ASL            
       ROL    $9F     
       RTS            

LFAE0: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFB00: LDA    $9F     
       AND    #$01    
       SEC            
       SBC    #$01    
       ADC    $8E,X   
       AND    #$0F    
       LDY    $8E,X   
       STY    $9C     
       STA    $8E,X   
       JSR    LF2BB   
       CMP    #$00    
       BNE    LFB1C   
       LDA    $9C     
       STA    $8E,X   
LFB1C: RTS            

LFB1D: BIT    $B1     
       BVS    LFB4D   
       LDA    REFP1   
       AND    PF0     
       TAY            
       BMI    LFB2F   
       LDA    $B1     
       AND    #$DF    
       STA    $B1     
       RTS            

LFB2F: LDA    $B1     
       AND    #$20    
       BNE    LFB4D   
       JSR    LFED0   
       LDA    $B1     
       AND    #$7F    
       STA    $B1     
       LDY    #$03    
       LDA    #$00    
LFB42: STA.wy $00B4,Y 
       DEY            
       BPL    LFB42   
       LDA    #$08    
       STA    TIM64T  
LFB4D: RTS            

LFB4E: LDA    $8C,X   
       CMP    #$02    
       BNE    LFB75   
       LDA    REFP1,X 
       BMI    LFB75   
       LDA    LF19D,X 
       AND    $B1     
       BEQ    LFB75   
       EOR    $B1     
       STA    $B1     
       LDA    LFB88,X 
       STA    $9A     
       LDA    #$00    
       STA    $9B     
       LDY    #$01    
LFB6E: LDA    ($9A),Y 
       BEQ    LFB76   
       DEY            
       BPL    LFB6E   
LFB75: RTS            

LFB76: LDA    $86,X   
       STA    ($9A),Y 
       LDA    LFB8B,X 
       STA    $9A     
       LDA    $80,X   
       STA    ($9A),Y 
       LDA    #$06    
       STA    $98,X   
       RTS            

LFB88: .byte $B4,$B6,$B4
LFB8B: .byte $B2,$B8,$B2
LFB8E: LDA    INTIM   
       BPL    LFB94   
       NOP            
LFB94: STA    WSYNC   
       LDA    INTIM   
       BPL    LFB94   
       RTS            

LFB9C: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$00,$63,$63,$7F,$77,$77,$6B,$6B,$7F,$7F,$6B
       .byte $6B,$08,$08,$00,$00,$60,$60,$63,$7B,$7F,$67,$DB,$FA,$FE,$DE,$16
       .byte $36,$20,$20,$00,$00,$00,$18,$18,$3C,$3D,$67,$FB,$FB,$7F,$3E,$3E
       .byte $7C,$6C,$48,$00,$00,$00,$06,$1E,$7E,$7C,$76,$1A,$3A,$FB,$DF,$3F
       .byte $3C,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$A2
       .byte $A2,$B2,$A2,$A2,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$3F,$3F,$3F,$16,$FA,$FA,$16,$3F,$3F
       .byte $3F,$00,$00,$00,$00,$00,$30,$3C,$3F,$DF,$FB,$3A,$1A,$76,$7C,$7E
       .byte $1E,$06,$00,$00,$00,$00,$48,$6C,$7C,$3E,$3E,$7F,$FB,$FB,$67,$3D
       .byte $3C,$18,$18,$00,$00,$20,$20,$36,$16,$DE,$FE,$FA,$DB,$67,$7F,$7B
       .byte $63,$60,$60,$00,$7E,$66,$66,$66,$66,$7E,$7E,$18,$18,$18,$18,$38
       .byte $7E,$60,$7E,$06,$66,$7E,$7E,$06,$06,$3C,$06,$7E,$06,$06,$7E,$66
       .byte $66,$66,$7E,$66,$06,$7E,$60,$7E,$7E,$66,$66,$7E,$60,$7E,$30,$30
       .byte $18,$0C,$06,$7E,$7E,$66,$66,$3C,$66,$7E,$7E,$06,$7E,$66,$66,$7E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$E7,$94,$94,$E4,$94,$90,$E0,$00
       .byte $00,$00,$00,$00,$52,$55,$74,$55,$22,$00,$00,$00,$00,$00,$00,$00
       .byte $49,$50,$60,$50,$49,$00,$00,$00,$00,$00,$00,$00,$E7,$94,$94,$E4
       .byte $94,$90,$E0,$00,$00,$00,$00,$00,$27,$54,$56,$54,$57,$00,$00,$00
       .byte $00,$00,$00,$00,$20,$00,$00,$00,$20,$00,$00,$00,$00,$00,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$00,$08,$08,$6B,$6B,$7F,$7F,$6B,$6B,$77,$77,$7F
       .byte $63,$63,$00,$00,$80,$00,$02,$00,$00,$20,$18,$18,$00,$04,$20,$00
       .byte $00,$00,$80,$00,$00,$00,$80,$00,$3C,$42,$42,$42,$4A,$42,$42,$3C
       .byte $00,$00,$00,$81,$18,$24,$42,$42,$85,$81,$81,$81,$91,$81,$81,$42
       .byte $42,$25,$18,$00
LFE00: STA    WSYNC   
       STA    HMCLR   
       NOP            
       NOP            
       STA    HMP0,X  
       AND    #$0F    
       SEC            
LFE0B: SBC    #$01    
       BNE    LFE0B   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LFE16: LDA    $AD,X   
       BMI    LFE29   
       BEQ    LFE26   
       SEC            
       SBC    $AF,X   
       STA    $AD,X   
       LSR            
       LSR            
       STA    AUDV0,X 
       RTS            

LFE26: STA    AUDV0,X 
       RTS            

LFE29: EOR    #$FF    
       STA    AUDV0,X 
       LDA    #$02    
       STA    AUDC0,X 
       LDA    #$05    
       STA    AUDF0,X 
       RTS            

LFE36: LDY    #$00    
       LDA    $AD,X   
       BMI    LFE47   
       CMP    #$19    
       BCC    LFE47   
       RTS            

LFE41: LDY    #$03    
       BNE    LFE47   
LFE45: LDY    #$06    
LFE47: LDA    LFE5C,Y 
       STA    $AD,X   
       LDA    LFE5D,Y 
       STA    $AF,X   
       LDA    LFE5B,Y 
       STA    AUDF0,X 
       LDA    #$08    
       STA    AUDC0,X 
       RTS            

LFE5B: .byte $16
LFE5C: .byte $27
LFE5D: .byte $03,$1C,$30,$02,$1F,$40,$01
LFE64: LDA    #$0C    
       STA    $8E     
       STA    $90     
       LDA    #$04    
       STA    $8F     
       STA    $91     
       LDX    #$03    
LFE72: JSR    LFAD5   
       LDA    $9F     
       AND    #$1F    
       ADC    LFEC2,X 
       STA    $80,X   
LFE7E: JSR    LFAD5   
       LDA    $9F     
       AND    #$7F    
       STA    $86,X   
       JSR    LFAD5   
       AND    #$1F    
       ADC    $86,X   
       ADC    #$11    
       STA    $86,X   
       JSR    LF2BB   
       CMP    #$00    
       BEQ    LFE7E   
       JSR    LF2A5   
       CMP    #$00    
       BEQ    LFE7E   
       JSR    LF2B0   
       CMP    #$00    
       BEQ    LFE7E   
       LDA    #$00    
       STA    $A3,X   
       DEX            
       BPL    LFE72   
       LDX    #$01    
LFEB0: LDA    $AB,X   
       EOR    #$01    
       BNE    LFEB8   
       STA    $88,X   
LFEB8: DEX            
       BPL    LFEB0   
       LDA    #$02    
       STA    $8C     
       STA    $8D     
       RTS            

LFEC2: .byte $06,$71,$06,$71,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFED0: LDA    $9F     
       AND    #$7F    
       STA    $9A     
       JSR    LFAD5   
       LDA    $9F     
       AND    #$1F    
       ADC    $9A     
       STA    $9A     
       LDX    #$04    
LFEE3: LDA    LFF08,X 
       CLC            
       ADC    $9A     
       STA    $CC,X   
       LDA    LFF09,X 
       STA    $CD,X   
       DEX            
       DEX            
       BPL    LFEE3   
       LDY    #$30    
       LDA    ($CC),Y 
       AND    #$0F    
       TAY            
       LDA    LFA00,Y 
       STA    $BD     
       LDA    LFA10,Y 
       STA    $BC     
       JMP    LFE64   
LFF08: .byte $00
LFF09: .byte $F7,$00,$F8,$00,$F9
LFF0E: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDA    $BB     
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDY    #$C0    
       STY    $9A     
       LDY    #$60    
       STY    $9B     
       LDA    #$00    
       STA    WSYNC   
       STA    VBLANK  
       JSR    LFFBC   
       JSR    LFFBC   
       JMP    LFF55   
LFF39: TAY            
       LDA    ($CE),Y 
       EOR    $BB     
       STA.w  $000E   
       STX    GRP0    
       LDA    ($CC),Y 
       EOR    $BB     
       STA.w  $000D   
       LDA    ($D0),Y 
       EOR    $BB     
       STA.w  $000F   
       LDA    $BA     
       STA    GRP1    
LFF55: LDY    $9B     
       DEC    $9B     
       LDA    ($C6),Y 
       STA    ENABL   
       LDA    ($C2),Y 
       STA    ENAM0   
       AND    #$30    
       STA    NUSIZ0  
       LDA    ($C4),Y 
       STA    ENAM1   
       AND    #$30    
       STA    NUSIZ1  
       LDA    ($BE),Y 
       BPL    LFFBD   
       LDA    ($C0),Y 
       BPL    LFFCC   
       LDY    $9A     
       LDA    ($C8),Y 
       STA    GRP0    
       DEY            
       LDA    ($C8),Y 
LFF7E: TAX            
       LDA    ($CA),Y 
       STA    GRP1    
       DEY            
       LDA    ($CA),Y 
LFF86: STA    $BA     
       STY    $9A     
       LDA    $9B     
       LSR            
       BCS    LFF39   
       TAY            
       LDA    ($CC),Y 
       AND    #$0F    
       TAY            
       LDA    LFA00,Y 
       BIT    $BB     
       BVS    LFFA3   
       STA    COLUPF  
       LDA    LFA10,Y 
       BVC    LFFAA   
LFFA3: STA    COLUBK  
       LDA    LFA10,Y 
       AND    #$FB    
LFFAA: STA    CTRLPF  
       STX    GRP0    
       LDA    $BA     
       STA    GRP1    
       LDA    $9B     
       BNE    LFF55   
       STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
LFFBC: RTS            

LFFBD: LDA    ($C0),Y 
       BPL    LFFE0   
       LDY    $9A     
       LDA    #$00    
       STA    GRP0    
       DEY            
       NOP            
       NOP            
       BNE    LFF7E   
LFFCC: LDY    $9A     
       LDA    ($C8),Y 
       STA    GRP0    
       DEY            
       LDA    ($C8),Y 
LFFD5: TAX            
       LDA    #$00    
       STA    GRP1    
       DEY            
       NOP            
       NOP            
       JMP    LFF86   
LFFE0: LDY    $9A     
       LDA    #$00    
       STA    GRP0    
       DEY            
       NOP            
       NOP            
       JMP    LFFD5   
LFFEC: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3D,$FA
       .byte $3D,$FA,$3D,$FA
