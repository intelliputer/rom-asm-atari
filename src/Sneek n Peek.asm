; Disassembly of roms/Sneek n Peek.bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sneek n Peek.bin
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
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296
LF2F0   =   $F2F0
LF46A   =   $F46A
LFCAA   =   $FCAA
LFD00   =   $FD00

       ORG $F000
LF000: STA    WSYNC   
       STA    $6A     
       LDY    #$09    
LF006: DEY            
       BNE    LF006   
       LDY    #$0A    
       LDX    $D8     
       LDA    $9E     
       STA    REFP0   
       LDA    #$01    
       STA.w  $009A   
LF016: LDA    #$00    
       STA    GRP1    
       INX            
       CPX    #$15    
       BCS    LF04B   
       LDA    $9F,X   
       STA    GRP0    
LF023: LDA    LF0A5,Y 
       STA    PF2     
       BPL    LF04F   
       LDA    $85     
       STA    GRP1    
LF02E: DEY            
       LDA    #$02    
       STA    COLUP0  
       LDA    $83     
       STA    COLUPF  
       LDA    $82     
       STA    COLUP0  
       DEC    $9A     
       BNE    LF052   
       LDA    LF09B,Y 
       STA    $9A     
       LDA    LF0B0,Y 
       STA    COLUPF  
       BNE    LF016   
LF04B: LDA    $FF     
       BCS    LF023   
LF04F: NOP            
       BPL    LF02E   
LF052: NOP            
       INY            
       LDA    LF0B0,Y 
       CPY    #$00    
       STA    COLUPF  
       BNE    LF016   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       JSR    LF091   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       STA    GRP1    
       STA    $6B     
       LDA    #$04    
       STA    $9A     
       LDY    #$16    
LF076: JSR    LF08D   
       LDA    $9A     
       CLC            
       ADC    #$04    
       STA    $9A     
       STA    WSYNC   
       STA    $61     
       JSR    LF091   
       DEY            
       BNE    LF076   
       JMP    LF35E   
LF08D: STA    WSYNC   
       STA    $6A     
LF091: INX            
       CPX    #$15    
       BCS    LF09A   
       LDA    $9F,X   
       STA    GRP0    
LF09A: RTS            

LF09B: .byte $FF,$07,$07,$01,$07,$0A,$07,$01,$07,$01
LF0A5: .byte $00,$80,$A1,$80,$A1,$00,$21,$00,$21,$00,$00
LF0B0: .byte $D2,$D2,$D2,$80,$80,$80,$80,$80,$80,$80
LF0BA: LDY    #$00    
LF0BC: STA    WSYNC   
       SEC            
LF0BF: SBC    #$0F    
       BCS    LF0BF   
       EOR    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$90    
       STA.wy $0010,Y 
       STA    WSYNC   
       STA.wy $0060,Y 
       INY            
       RTS            

LF0D5: .byte $02,$02,$06,$04,$80,$FF,$FF,$BA,$17

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF0E5: STA    VSYNC,X 
       DEX            
       CPX    #$49    
       BNE    LF0E5   
       LDX    #$08    
LF0EE: LDA    LF0D5,X 
       STA    $80,X   
       DEX            
       BPL    LF0EE   
LF0F6: LDA    INTIM   
       BNE    LF0F6   
       STA    WSYNC   
       STA    VBLANK  
       LDY    #$00    
       LDA    $96     
       CMP    #$20    
       BCC    LF109   
       STY    COLUPF  
LF109: STA    WSYNC   
       STA    $6A     
       LDX    #$3B    
       LDA    ($8C),Y 
       STX    COLUP1  
       STA    GRP1    
       LDA    ($8A),Y 
       STX    COLUP0  
       STA    GRP0    
       INY            
       CPY    #$09    
       STA    $6B     
       BCC    LF109   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       LDA    $97     
       JSR    LF0BA   
       SEC            
       LDA    #$7E    
       SBC    $97     
       JSR    LF0BC   
       LDY    $96     
       CPY    #$03    
       BCC    LF145   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF145: LDA    #$01    
       STA    $65     
       STA    $66     
       STA    WSYNC   
       STA    $6A     
       LDX    #$FA    
       LDY    $96     
       CPY    #$06    
       LDA    #$6E    
       BCC    LF16B   
       LDA    #$B6    
       CPY    #$20    
       BEQ    LF16B   
       CPY    #$21    
       BEQ    LF16B   
       LDA    #$92    
       BIT    $BB     
       BMI    LF16B   
       LDA    #$C8    
LF16B: JMP    LF1F9   
LF16E: .byte $65,$15,$15,$66,$40,$30,$73,$45,$77,$51,$37,$00,$50,$50,$40,$60
       .byte $50,$40,$28,$28,$28,$30,$80,$80,$47,$44,$47,$75,$53,$60,$75,$45
       .byte $74,$56,$35,$04,$CE,$28,$2E,$CA,$86,$60,$EA,$8A,$E8,$AC,$6A,$08
       .byte $40,$40,$00,$00,$00,$00,$65,$15,$15,$66,$40,$30,$73,$45,$77,$51
       .byte $37,$00,$52,$50,$42,$62,$52,$42,$EE,$8A,$8A,$8E,$80,$E0,$6A,$AA
       .byte $AA,$AC,$01,$00,$90,$90,$80,$80,$C0,$80,$92,$92,$92,$F0,$92,$90
       .byte $77,$54,$57,$75,$13,$10,$40,$40,$00,$00,$00,$00,$8E,$88,$8E,$EA
       .byte $A6,$C0,$EA,$8A,$E8,$AC,$6A,$08,$20,$00,$20,$20,$20,$20
LF1EC: CMP    #$92    
       BCC    LF1F9   
       LDA    $82     
       LSR            
       LDA    #$DA    
       BCS    LF1F9   
       LDA    #$A4    
LF1F9: LDY    #$F1    
LF1FB: CLC            
       STA    $90,X   
       ADC    #$06    
       INX            
       STY    $90,X   
       INX            
       BEQ    LF1EC   
       CPX    #$06    
       BNE    LF1FB   
       LDA    #$1F    
       STA    COLUP0  
       STA    COLUP1  
       LDY    #$05    
LF212: LDA    ($94),Y 
       STA    $9A     
       STA    WSYNC   
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($8C),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       STA    GRP0    
       LDA    ($90),Y 
       TAX            
       LDA    ($92),Y 
       STY    $9B     
       LDY    $9A     
       STX    GRP1    
       STA    GRP0    
       STY    GRP1    
       STY    GRP0    
       LDY    $9B     
       DEY            
       BPL    LF212   
       LDA    #$00    
       STA    $6B     
       STA    $65     
       STA    $66     
       STA    GRP0    
       STA    GRP1    
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $96     
       CMP    #$20    
       BCC    LF255   
       JMP    LFAD2   
LF255: LDA    #$1D    
       JSR    LF0BA   
       LDA    $88     
       JSR    LF0BC   
       STA    WSYNC   
       STA    $6A     
       STA    WSYNC   
       LDX    $87     
       JSR    LF312   
       STA    $6B     
       LDA    #$04    
       STA    COLUP0  
       LDY    #$22    
       STY    $9A     
       LDY    #$01    
       STY    $9B     
       LDY    $99     
LF27A: JSR    LF30E   
       LDA    LFF55,Y 
       STA    GRP0    
       DEY            
       BPL    LF287   
       LDY    #$0F    
LF287: DEC    $9B     
       LDA    $9B     
       STA    $60     
       DEC    $9A     
       BNE    LF27A   
       STA    WSYNC   
       JSR    LF312   
       LDA    #$02    
       STA    COLUP0  
       LDA    #$7F    
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    $60     
       LDY    #$07    
LF2A6: STA    WSYNC   
       JSR    LF312   
       LDA    LFACA,Y 
       STA    GRP0    
       DEY            
       BPL    LF2A6   
       LDA    #$10    
       STA    $62     
       LDA    #$F0    
       STA    $63     
       JSR    LF30E   
       LDA    #$02    
       STA    COLUP1  
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
       STA    $6A     
       INX            
       CPX    #$0E    
       BCS    LF2D9   
       LDA    LFF47,X 
       STA    COLUP1  
       LDA    LFF6A,X 
       STA    GRP1    
LF2D9: LDA    #$F8    
       STA    PF1     
       NOP            
       LDA    #$00    
       STA    COLUP1  
       STA    PF2     
       LDA    #$02    
       STA    COLUP1  
       LDY    #$26    
LF2EA: JSR    LF30E   
       LDA    #$00    
       STA    COLUP1  
       LDA    #$02    
       DEY            
       STA    COLUP1  
       BNE    LF2EA   
       LDA    #$FC    
       STA    WSYNC   
       INX            
       STA    PF1     
       STA    $6B     
       LDA    $D9     
       JSR    LF0BA   
       LDA    #$4D    
       JSR    LF0BC   
       JMP    LF000   
LF30E: STA    WSYNC   
       STA    $6A     
LF312: INX            
       CPX    #$0E    
       BCS    LF322   
       LDA    LFF47,X 
       STA.w  $0007   
       LDA    LFF6A,X 
       STA    GRP1    
LF322: RTS            

LF323: STY    $9A     
       INY            
       INY            
       LDX    #$02    
LF329: LDA    LFFA1,Y 
       STA    $D8,X   
       DEY            
       DEX            
       BPL    LF329   
       LDX    #$15    
       BIT    $BB     
       BPL    LF33A   
       LDX    #$06    
LF33A: TXA            
       CLC            
       ADC    $9A     
       TAY            
LF33F: LDA    LFF8B,Y 
       STA.wx $00C2,X 
       DEY            
       DEX            
       BPL    LF33F   
       BIT    $BB     
       BMI    LF35D   
       LDA    $81     
       CMP    #$03    
       BNE    LF35D   
       LDX    #$05    
LF355: LDA.wx $00E1,X 
       STA    $D2,X   
       DEX            
       BPL    LF355   
LF35D: RTS            

LF35E: LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       LDA    $ED     
       BEQ    LF37E   
       DEC    $ED     
       BNE    LF3B3   
LF36C: LDY    #$00    
       LDA    #$08    
       STA    $F1     
       LDA    ($EE),Y 
       BMI    LF378   
       STY    AUDV0   
LF378: AND    #$7F    
       BNE    LF38A   
       STA    $F0     
LF37E: LDA    $F0     
       BEQ    LF3B7   
       STA    $EE     
       LDA    #$F7    
       STA    $EF     
       BNE    LF36C   
LF38A: AND    #$70    
       BNE    LF390   
       STY    $F1     
LF390: LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LF3AB,X 
       STA    $ED     
       LDA    ($EE),Y 
       INC    $EE     
       AND    #$0F    
       ADC    #$09    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       JMP    LF3B9   
LF3AB: .byte $10,$18,$01,$08,$10,$20,$40,$30
LF3B3: LDA    $F1     
       STA    AUDV0   
LF3B7: STA    WSYNC   
LF3B9: LDA    #$52    
       JSR    LF0BA   
       LDA    #$49    
       JSR    LF0BC   
       LDA    #$52    
       JSR    LF0BC   
       LDA    #$00    
       STA    NUSIZ0  
       STA    NUSIZ1  
       STA    $65     
       STA    $66     
       STA    GRP0    
       STA    GRP1    
       STA    REFP0   
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    COLUBK  
       LDA    #$51    
       JSR    LF0BC   
       LDA    $84     
       STA    COLUPF  
       LDA    #$C0    
       STA    PF0     
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$02    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$36    
       STA    TIM8T   
       LDX    $96     
       CPX    #$05    
       BCC    LF47E   
       LDA    $DE     
       AND    #$03    
       BNE    LF481   
       LDA    $82     
       ORA    #$04    
       STA    $82     
       CPX    #$20    
       BEQ    LF47E   
       CPX    #$21    
       BEQ    LF47E   
       LSR            
       LDA    SWCHA   
       BCC    LF426   
       ROL            
       ROL            
       ROL            
       ROL            
LF426: AND    #$F0    
       EOR    #$F0    
       BEQ    LF47E   
       EOR    #$F0    
       LDY    $BD     
       BNE    LF446   
       LDA    $B4     
       LDX    $B5     
       BNE    LF43C   
       LDX    $BC     
       BNE    LF446   
LF43C: EOR    #$F0    
       LDX    $B8     
       BNE    LF446   
       ASL    $85     
       ASL    $85     
LF446: SEC            
       ROR    $85     
       STA    $B6     
       EOR    #$30    
       STA    $9A     
       LDX    #$01    
       STX    $9C     
LF453: LDA    $D8,X   
       ROL    $9A     
       BPL    LF469   
       BCS    LF479   
       ADC    #$01    
       LDY    $BD     
       BEQ    LF477   
       CMP    $C2,X   
       BCC    LF477   
       LDA    $C2,X   
       BCS    LF477   
LF469: BCC    LF479   
       SBC    #$01    
       LDY    $BD     
       BEQ    LF477   
       CMP    $C4,X   
       BCS    LF477   
       LDA    $C4,X   
LF477: STA    $D8,X   
LF479: ROL    $9A     
       DEX            
       BPL    LF453   
LF47E: JMP    LF530   
LF481: CMP    #$02    
       LDY    #$0F    
       LDA    #$00    
       BIT    $BB     
       BPL    LF499   
       BCC    LF495   
       LDA    $96     
       CMP    $BA     
       BNE    LF47E   
       LDA    $B7     
LF495: LDX    #$01    
       BNE    LF49D   
LF499: LDX    #$02    
       BCS    LF49F   
LF49D: STA    $B9     
LF49F: STX    $8E     
       LDA    $82     
       LSR            
       LDA    $86     
       LDX    $B5     
       BNE    LF4B3   
       LDX    $7D     
       BCS    LF4B1   
       ASL            
       LDX    $7C     
LF4B1: BPL    LF52E   
LF4B3: LDY    $BD     
       BEQ    LF520   
       LDX    #$04    
       STA    $92     
       TAY            
       BPL    LF4C0   
       LDX    #$02    
LF4C0: STX    $94     
       TXA            
       LSR            
       STA    $95     
       LDX    $B9     
       DEX            
LF4C9: INX            
       STX    $B9     
       DEC    $8E     
       BMI    LF530   
       LDA    $C6,X   
       INX            
       AND    #$CC    
       BEQ    LF4DD   
       LDY    $95     
       LDA    $94     
       BNE    LF4E1   
LF4DD: LDY    $94     
       LDA    $95     
LF4E1: STA    $9A     
       STY    $9B     
       CLC            
       LDA    $D8     
       SBC    $C6,X   
       INX            
       BCS    LF4C9   
       ADC    $9A     
       BCC    LF4C9   
       CLC            
       LDA    $D9     
       SBC    $C6,X   
       BCS    LF4C9   
       ADC    $9B     
       BCC    LF4C9   
       DEX            
       DEX            
       STX    $B8     
       LDA    $C6,X   
       STA    $B4     
       LDY    #$00    
       STY    $BD     
       CPX    #$00    
       BEQ    LF52E   
       STX    $B7     
       LDX    $92     
       BPL    LF51C   
       AND    $B6     
       BEQ    LF51C   
       LDY    #$0F    
       STY    $BD     
       BNE    LF530   
LF51C: LDA    $96     
       STA    $BA     
LF520: LDA    $B8     
       BEQ    LF52E   
       BIT    $BB     
       BPL    LF52E   
       LDA    $82     
       EOR    #$04    
       STA    $82     
LF52E: STY    $BC     
LF530: LDA    $80     
       JSR    LF6E8   
LF535: LDA    INTIM   
       BNE    LF535   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$25    
       STA    TIM64T  
       LDA    $96     
       CMP    #$10    
       BCC    LF578   
       AND    #$0F    
       CMP    #$04    
       BNE    LF578   
       LDA    $DE     
       BIT    $BB     
       BPL    LF55D   
       AND    #$FF    
       BNE    LF578   
       LDA    #$99    
       BNE    LF563   
LF55D: AND    #$3F    
       BNE    LF578   
       LDA    #$01    
LF563: SED            
       CLC            
       ADC    $80     
       STA    $80     
       CLD            
       LDA    $80     
       BNE    LF578   
       STA    $ED     
       LDA    #$CD    
       STA    $F0     
       LDY    #$20    
       BNE    LF5BF   
LF578: LDA    SWCHB   
       TAX            
       EOR    $86     
       AND    $86     
       STX    $86     
       LDX    $96     
       LDY    $81     
       ROR            
       ROR            
       BPL    LF595   
       LDA    $BB     
       EOR    #$80    
       LDY    #$20    
       CPX    #$03    
       JMP    LF5A8   
LF595: BCC    LF5CB   
       INY            
       CPY    #$05    
       BCC    LF59E   
       LDY    #$01    
LF59E: STY    $81     
       STY    $80     
       LDA    $BB     
       LDY    #$02    
       CPX    #$0F    
LF5A8: BCC    LF5CB   
       CPX    #$20    
       BEQ    LF5CB   
       CPX    #$21    
       BEQ    LF5CB   
       LDX    #$FF    
       STX    $85     
       TAX            
       BPL    LF5BF   
       LDA    $82     
       EOR    #$0B    
       STA    $82     
LF5BF: LDA    #$00    
       STA    $B5     
       STA    $BB     
       STY    $96     
       LDA    #$1E    
       STA    $83     
LF5CB: INC    $DE     
       BNE    LF60E   
       INC    $9C     
       BPL    LF5E5   
       LDA    #$78    
       STA    $9C     
       LDA    $96     
       AND    #$70    
       CMP    #$20    
       BCS    LF5E1   
       LDA    #$51    
LF5E1: SBC    #$0D    
       STA    $96     
LF5E5: LDA    $E0     
       INC    $E0     
       AND    #$03    
       BNE    LF60E   
       LDA    $88     
       LDX    #$05    
LF5F1: CMP    LFF7E,X 
       BCS    LF5F9   
       DEX            
       BNE    LF5F1   
LF5F9: CLC            
       LDA    LFF78,X 
       BEQ    LF60E   
       ADC    $89     
       BEQ    LF606   
       CLC            
       STA    $89     
LF606: ROR            
       LSR            
       ADC    #$BA    
       STA    $87     
       INC    $88     
LF60E: INC    $DF     
       LDA    $DF     
       CMP    #$06    
       BCC    LF622   
       LDA    #$00    
       STA    $DF     
       DEC    $99     
       BPL    LF622   
       LDA    #$0F    
       STA    $99     
LF622: LDA    $96     
       LDX    $97     
       CMP    #$20    
       BCC    LF62D   
       JMP    LF9A8   
LF62D: CMP    #$01    
       BCS    LF63E   
       LDA    #$0B    
       STA    $F0     
       INX            
       CPX    #$65    
       BCC    LF667   
       INC    $96     
       BNE    LF667   
LF63E: BNE    LF649   
       DEX            
       CPX    #$30    
       BCS    LF667   
       INC    $96     
       BNE    LF667   
LF649: CMP    #$03    
       BCS    LF66C   
       LDA    #$0B    
       STA    $F0     
       INX            
       CPX    #$3B    
       BCC    LF667   
       INC    $96     
       JSR    LF90A   
       LDX    #$06    
LF65D: LDA    LFF84,X 
       STA    $D8,X   
       DEX            
       BPL    LF65D   
       LDX    #$3B    
LF667: STX    $97     
       JMP    LF6E5   
LF66C: BNE    LF67A   
       LDA    $DE     
       AND    #$03    
       BNE    LF677   
       JSR    LF7E7   
LF677: JMP    LF6E5   
LF67A: CMP    #$05    
       BCS    LF69F   
       LDA    $DE     
       BNE    LF684   
       INC    $96     
LF684: LDA    $DF     
       BNE    LF677   
       LDA    $DE     
       CMP    #$80    
       BCS    LF6A1   
       ASL    $85     
       BCS    LF677   
       INC    $D9     
       INC    $D8     
       INC    $9D     
       LDA    #$00    
       STA    $BC     
       JMP    LF6E2   
LF69F: BNE    LF6AF   
LF6A1: LDA    #$1E    
       STA    $83     
       SEC            
       ROR    $85     
       BCC    LF6E5   
       LDA    #$20    
       JSR    LF902   
LF6AF: CMP    #$14    
       BCS    LF6BA   
       INC    $96     
       LDY    #$00    
       JSR    LF323   
LF6BA: LDX    #$ED    
       LDY    #$79    
       LDA    $D9     
       CMP    #$79    
       BCS    LF6CC   
       LDY    #$22    
       CMP    #$23    
       BCC    LF6CC   
       LDX    #$E1    
LF6CC: STX    $C2     
       LDX    #$E1    
       CPX    $D8     
       BCS    LF6DA   
       CPY    #$50    
       BCS    LF6DC   
       BCC    LF6E0   
LF6DA: LDY    #$08    
LF6DC: STY    $C5     
       LDY    #$92    
LF6E0: STY    $C3     
LF6E2: JSR    LF84A   
LF6E5: JMP    LF0F6   
LF6E8: PHA            
       AND    #$0F    
       LDX    #$00    
       JSR    LF6FB   
       PLA            
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF6F9   
       LDA    #$0A    
LF6F9: LDX    #$02    
LF6FB: STA    $9A     
       ASL            
       ASL            
       ASL            
       ADC    $9A     
       ADC    #$1B    
       STA    $8A,X   
       LDA    #$FE    
       STA    $8B,X   
       RTS            

LF70B: .byte $3C,$BA,$58,$47,$43,$55,$C8,$45,$17,$38,$47,$4A,$78,$3C,$BA,$58
       .byte $47,$43,$55,$C8,$45,$17,$38,$47,$4A,$7C,$45,$51,$C2,$43,$55,$C8
       .byte $45,$17,$38,$47,$4A,$78,$45,$51,$C2,$43,$55,$C8,$45,$17,$38,$47
       .byte $10,$61,$00,$01,$60,$61,$01,$01,$48,$47,$55,$45,$45,$51,$48,$47
       .byte $55,$45,$43,$55,$48,$47,$55,$45,$45,$51,$47,$48,$48,$7A,$DA,$4A
       .byte $48,$47,$47,$47,$47,$57,$45,$47,$48,$4A,$48,$47,$55,$41,$43,$55
       .byte $48,$45,$45,$47,$4A,$4D,$4A,$7C,$DC,$00,$01,$33,$41,$33,$41,$33
       .byte $61,$01,$47,$53,$43,$43,$45,$43,$72,$53,$43,$55,$45,$45,$47,$45
       .byte $73,$57,$00,$53,$43,$43,$45,$43,$72,$50,$40,$41,$40,$41,$52,$45
       .byte $77,$D7,$00,$01,$45,$45,$48,$45,$43,$45,$58,$48,$7A,$48,$7A,$45
       .byte $45,$48,$45,$43,$45,$58,$5A,$48,$4A,$7C,$01,$4C,$4C,$48,$45,$61
       .byte $43,$43,$41,$43,$65,$45,$45,$48,$45,$43,$45,$58,$4A,$4A,$48,$4A
       .byte $7C,$00,$01,$B8,$A6,$A4,$A2,$A8,$A6,$A4,$A2,$A8,$A6,$A4,$A2,$A8
       .byte $A6,$A4,$A2,$A8,$A6,$A4,$A2,$A8,$A6,$A4,$A2,$00
LF7E7: DEC    $DC     
       BPL    LF80F   
       INC    $D8     
       LDA    $D8     
       CMP    #$E0    
       BCC    LF7FA   
       INC    $96     
       LDA    #$00    
       STA    $DE     
       RTS            

LF7FA: AND    #$07    
       BNE    LF800   
       DEC    $DB     
LF800: LDA    $DB     
       STA    $DC     
       BNE    LF80F   
       LDA    $DE     
       AND    #$07    
       BEQ    LF84A   
       DEC    $D8     
       RTS            

LF80F: INC    $DD     
       LDA    $DD     
       LSR            
       STA    $D9     
       BCC    LF84A   
       RTS            

LF819: LDA    $D9     
       CMP    $DA     
       BNE    LF822   
       JMP    LF8C0   
LF822: STA    $DA     
       LDY    #$00    
       BCS    LF82C   
       EOR    #$03    
       LDY    #$08    
LF82C: CPY    $9E     
       BEQ    LF83E   
       STY    $9E     
       LDX    #$08    
       LDA    $BE     
LF836: LSR            
       ROL    $BE     
       DEX            
LF83A: BNE    LF836   
       LDA    $DA     
LF83E: AND    #$03    
       TAY            
       LDA    $BC     
       LSR            
       ROL    $BE     
       LDA    #$00    
       BEQ    LF878   
LF84A: LDA    $D8     
       CMP    $9D     
       BEQ    LF819   
       STA    $9D     
       AND    #$03    
       TAY            
       LDA    $BC     
       BCS    LF869   
       LDA    #$F0    
       AND    $C1     
       ORA    $BC     
       ROL            
       STA    $C1     
       ROL    $C0     
       ROL    $BF     
       JMP    LF870   
LF869: LSR            
       ROR    $BF     
       ROR    $C0     
       ROR    $C1     
LF870: LDA    $D9     
       CMP    $DA     
       BNE    LF822   
       LDA    #$54    
LF878: CLC            
       BCC    LF87D   
LF87B: ADC    #$15    
LF87D: DEY            
       BPL    LF87B   
       ADC    #$8A    
       STA    $94     
       LDA    #$FE    
       ADC    #$00    
       STA    $95     
       LDY    #$00    
LF88C: LDA    $BF     
       BMI    LF894   
       LDA    #$00    
       BEQ    LF898   
LF894: LDA    ($94),Y 
       AND    $BE     
LF898: STA.wy $009F,Y 
LF89B: INY            
       LDA    $BF     
       ROL            
       ROL    $C1     
       ROL    $C0     
       ROL    $BF     
       CPY    #$15    
       BCC    LF88C   
       CPY    #$18    
       BCC    LF89B   
       LDA    $C1     
       ORA    $BC     
       AND    $C0     
       AND    $BF     
       AND    $BE     
       EOR    #$FF    
       BNE    LF8BF   
       LDA    #$0F    
       STA    $BD     
LF8BF: RTS            

LF8C0: LDX    #$06    
       CPX    $96     
       BCS    LF913   
       LDA    $BB     
       BPL    LF8EE   
       LDA    $B8     
       BEQ    LF8EE   
       LDA    $BD     
       BNE    LF8EE   
       LDA    $B5     
       BNE    LF8E2   
       INC    $96     
       STA    $ED     
       LDA    #$75    
       STA    $F0     
       STA    $B5     
       BNE    LF913   
LF8E2: LDA    $ED     
       BNE    LF913   
       STA    $BB     
       STA    $B5     
       LDA    #$20    
       BNE    LF902   
LF8EE: LDA    $C1     
       ORA    $C0     
       ORA    $BF     
       AND    $BE     
       BNE    LF913   
       LDA    $B8     
       BEQ    LF914   
LF8FC: LDA    #$80    
       STA    $BB     
       LDA    #$22    
LF902: STA    $96     
       LDA    $82     
       EOR    #$0B    
       STA    $82     
LF90A: LDA    #$FF    
       LDX    #$05    
LF90E: STA    $BC,X   
       DEX            
       BPL    LF90E   
LF913: RTS            

LF914: LDA    #$9E    
       STA    $F0     
       LDA    $DE     
       LSR            
       LSR            
       STA    $9B     
       LDA    $96     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFF7,X 
       STA    $96     
       TAY            
       LDA    $9B     
       LSR            
       CPY    #$20    
       LDX    #$05    
       BCS    LF95D   
LF934: ADC    $E1,X   
       CMP    #$90    
       BCC    LF93E   
       SBC    #$88    
       BNE    LF944   
LF93E: CMP    #$08    
       BCS    LF944   
       ADC    #$11    
LF944: STA    $E1,X   
       DEX            
       LDA    $9B     
       ADC    $E1,X   
       CMP    #$E0    
       BCC    LF953   
       SBC    #$33    
       BNE    LF983   
LF953: CMP    #$A8    
       BCS    LF983   
       AND    #$1F    
       ADC    #$A8    
       BNE    LF983   
LF95D: ADC    $E1,X   
LF95F: CMP    #$66    
       BCC    LF966   
       LSR            
       BNE    LF95F   
LF966: CMP    #$30    
       BCS    LF96C   
       ADC    #$31    
LF96C: STA    $E1,X   
       DEX            
       LDA    $9B     
       ADC    $E1,X   
       CMP    #$F0    
       BCC    LF97B   
       SBC    #$33    
       BNE    LF983   
LF97B: CMP    #$C8    
       BCS    LF983   
       AND    #$1F    
       ADC    #$C8    
LF983: STA    $E1,X   
       DEX            
       LDA    $9B     
       ROR            
       STA    $9B     
       AND    #$03    
       TAY            
       SEC            
       LDA    #$00    
LF991: ROR            
       DEY            
       BPL    LF991   
       STA    $E1,X   
       DEX            
       BMI    LF9A5   
       LDA    $9B     
       LSR            
       LDY    $96     
       CPY    #$20    
       BCC    LF934   
       BCS    LF95D   
LF9A5: JMP    LF90A   
LF9A8: LDA    $96     
       CMP    #$30    
       BCC    LF9B1   
       JMP    LFCB9   
LF9B1: CMP    #$21    
       BEQ    LF9F2   
       BCC    LF9BA   
       JMP    LFA2C   
LF9BA: LDX    #$05    
       JSR    LF95D   
       LDX    #$03    
LF9C1: LDA    LFFA4,X 
       STA    $C2,X   
       DEX            
       BPL    LF9C1   
       LDA    $81     
       CMP    #$01    
       BNE    LF9D3   
       LDA    #$06    
       STA    $82     
LF9D3: LDX    #$55    
       STX    $F6     
       LDX    #$9F    
       LDY    #$FE    
       STX    $F4     
       STY    $F5     
       LDA    $DE     
       BNE    LF9E5   
       INC    $96     
LF9E5: LDX    #$02    
LF9E7: LDA    LFFEF,X 
       STA    $D8,X   
       DEX            
       BPL    LF9E7   
LF9EF: JMP    LFA80   
LF9F2: LDA    $DE     
       AND    #$03    
       BNE    LF9EF   
       LDX    $D9     
       DEX            
       STX    $D9     
       CPX    #$31    
       BCS    LF9EF   
       DEC    $D9     
       INC    $D8     
       BNE    LFA66   
       LDX    #$1C    
       STX    $F6     
       LDA    $82     
       EOR    #$0B    
       STA    $82     
       LDA    $81     
       AND    #$02    
       BEQ    LFA83   
       LDA    #$01    
       STA    $80     
       LDY    #$19    
       JSR    LF323   
       LDX    #$02    
LFA22: LDA    LFFF2,X 
       STA    $D8,X   
       DEX            
       BPL    LFA22   
       BNE    LFA52   
LFA2C: CMP    #$23    
       BEQ    LFA4D   
       BCS    LFA68   
       LDA    #$3E    
       STA    $F0     
       STA    $EE     
       LDA    #$FF    
       STA    $BE     
       LDY    #$19    
       JSR    LF323   
       LDX    #$02    
LFA43: LDA    LFFF5,X 
       STA    $D8,X   
       DEX            
       BPL    LFA43   
       BMI    LFA52   
LFA4D: LDY    #$19    
       JSR    LF323   
LFA52: LDX    #$75    
       LDY    #$FE    
       BIT    $BB     
       BMI    LFA5E   
       LDX    #$32    
       LDY    #$FF    
LFA5E: STX    $F4     
       STY    $F5     
       LDA    #$24    
       STA    $96     
LFA66: BNE    LFA80   
LFA68: LDA    $D8     
       CMP    #$EF    
       BCS    LFA70   
       LDA    #$F0    
LFA70: SBC    #$CC    
       STA    $C5     
       LDA    $D9     
       CMP    #$2E    
       BCC    LFA7C   
       LDA    #$2D    
LFA7C: ADC    #$D0    
       STA    $C2     
LFA80: JMP    LF6E2   
LFA83: LDA    $E0     
       AND    #$03    
       TAX            
       ASL            
       ASL            
       ASL            
       ASL            
       ADC    #$14    
       STA    $BA     
       LDA    #$E7    
LFA92: CLC            
       ADC    #$19    
       DEX            
       BPL    LFA92   
       TAY            
       JSR    LF323   
       LDA    $E0     
       AND    #$0E    
       LSR            
       CMP    #$03    
       BCS    LFAA7   
       ADC    #$03    
LFAA7: SEC            
       SBC    #$03    
       TAX            
       LDA    #$00    
       CLC            
LFAAE: ADC    #$03    
       DEX            
       BPL    LFAAE   
       STA    $B8     
       TAX            
       LDA    $C6,X   
       STA    $B4     
       STX    $B7     
       JSR    LF8FC   
       LDA    #$00    
       STA    $BE     
       LDA    #$50    
       STA    $80     
       JMP    LF6E2   
LFACA: .byte $00,$11,$11,$55,$BB,$11,$11,$77
LFAD2: LDA    $D9     
       SEC            
       SBC    #$20    
       BPL    LFADB   
       ADC    #$50    
LFADB: ASL            
       JSR    LF0BA   
       LDA    #$05    
       STA    NUSIZ0  
       LDA    $9E     
       STA    REFP0   
       LDA    $82     
       STA    COLUP0  
       LDA    $96     
       CMP    #$30    
       BCC    LFAF4   
       JMP    LFD00   
LFAF4: LDA    $F6     
       JSR    LF0BC   
       LDA    $82     
       EOR    #$0B    
       ORA    #$04    
       STA    COLUP1  
       LDA    #$35    
       STA    NUSIZ1  
       LDA    #$7F    
       LDY    #$03    
       JSR    LF0BC   
       LDA    #$26    
       JSR    LF0BC   
       STA    WSYNC   
       STA    $6A     
       LDA    #$8A    
       STA    COLUBK  
       LDA    #$8E    
       STA    COLUPF  
       LDA    #$30    
       STA    CTRLPF  
       STA    WSYNC   
       LDA    #$FF    
       STA    ENABL   
       STA    PF2     
       LDA    #$00    
       STA    $6B     
       STA    $F2     
       LDA    #$07    
       STA    $F3     
       LDY    #$32    
LFB35: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$07    
       STA    PF1     
       LDA    #$8A    
       STA    COLUBK  
       LDA    #$1F    
       STA    PF2     
       TYA            
       SEC            
       SBC    #$03    
       CMP    #$14    
       LDA    #$8E    
       BCS    LFB53   
       LDA    #$80    
LFB53: STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$F8    
       STA    PF2     
       DEY            
       BNE    LFB35   
       LDA    #$11    
       STA    $9B     
       LDA    #$0E    
       STA    $8E     
       LDX    $D8     
       INX            
       LDY    #$06    
LFB6F: STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       LDA    #$07    
       STA    PF1     
       LDA    #$8A    
       STA    COLUBK  
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    #$1F    
       STA    PF2     
       LDA    #$80    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$F8    
       STA    PF2     
       DEY            
       BNE    LFB6F   
       BEQ    LFBB3   
LFB99: LDA    ($F4),Y 
       STA    GRP1    
       INY            
       JMP    LFBD0   
LFBA1: LDA    GRP1    
       JMP    LFBCE   
LFBA6: LDA    ($F4),Y 
       STA.w  $001C   
       INY            
       JMP    LFC07   
LFBAF: NOP            
       JMP    LFC05   
LFBB3: LDA    #$07    
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       STA    WSYNC   
       LDA    #$8A    
       STA    COLUBK  
       LDA    $8E     
       LSR            
       BCS    LFB99   
       CPX    #$15    
       BCS    LFBA1   
       LDA    $9F,X   
       STA    GRP0    
LFBCE: INX            
       NOP            
LFBD0: LDA    #$1F    
       STA    PF2     
       LDA    #$80    
       STA    COLUBK  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    #$F8    
       STA    PF2     
       DEC    $8E     
       BNE    LFBB3   
       LDA    #$FF    
       STA    PF2     
       LDA    #$03    
       STA    PF1     
LFBEE: LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       LDA    #$8A    
       STA    COLUBK  
       LDA    $9B     
       LSR            
       BCS    LFBA6   
       CPX    #$15    
       BCS    LFBAF   
       LDA    $9F,X   
       STA    GRP0    
LFC05: INX            
       NOP            
LFC07: NOP            
       NOP            
       LDA    #$CA    
       STA    COLUBK  
       LDA    #$30    
       CPY    #$0D    
       BCS    LFC15   
       STA    PF0     
LFC15: LDA    #$C8    
       NOP            
       NOP            
       DEC    $9B     
       STA    COLUBK  
       BNE    LFBEE   
       BEQ    LFC2F   
LFC21: LDA    ($F4),Y 
       STA.w  $001C   
       INY            
       JMP    LFC46   
LFC2A: LDA    GRP1    
       JMP    LFC44   
LFC2F: LDA    #$8A    
       STA    WSYNC   
       STA    $6A     
       STA    COLUBK  
       LDA    $9B     
       LSR            
       BCS    LFC21   
       CPX    #$15    
       BCS    LFC2A   
       LDA    $9F,X   
       STA    GRP0    
LFC44: INX            
       NOP            
LFC46: NOP            
       LDA    #$C8    
       STA    COLUBK  
       DEC    $9B     
       CPY    #$13    
       BCC    LFC2F   
       LDA    #$E4    
       STA.w  $0008   
       LDA    #$10    
       STA    $64     
       CPY    #$15    
       BNE    LFC2F   
       LDA    #$E0    
       STA    $61     
       LDY    #$00    
LFC64: LDA    $F3     
       STA    WSYNC   
       STA    $6A     
       STA    PF1     
       LDA    #$8A    
       STA    COLUBK  
       CPX    #$15    
       BCS    LFC93   
       LDA    $9F,X   
       STA    GRP0    
LFC78: TYA            
       AND    #$03    
       BNE    LFC98   
       SEC            
       ROL    $F3     
       ROR    $F2     
LFC82: LDA    #$FF    
       STA    PF0     
       STA    PF1     
       LDA    $F2     
       STA    PF0     
       INY            
       CPY    #$28    
       BNE    LFC64   
       BEQ    LFCA1   
LFC93: LDA    $9A     
       JMP    LFC78   
LFC98: AND    #$01    
       BEQ    LFC9D   
       INX            
LFC9D: NOP            
       JMP    LFC82   
LFCA1: STA    WSYNC   
       CPX    #$15    
       BCS    LFCAB   
       LDA    $9F,X   
       STA    GRP0    
LFCAB: TYA            
       AND    #$01    
       BEQ    LFCB1   
       INX            
LFCB1: INY            
       CPY    #$53    
       BNE    LFCA1   
       JMP    LF35E   
LFCB9: CMP    #$40    
       BCS    LFCE9   
       CMP    #$34    
       BCS    LFCC8   
       INC    $96     
       LDY    #$32    
       JSR    LF323   
LFCC8: LDA    $D8     
       CMP    #$EF    
       BCS    LFCD0   
       LDA    #$E0    
LFCD0: SBC    #$BC    
       STA    $C5     
       LDA    $D9     
       CMP    #$42    
       BCC    LFCDC   
       LDA    #$41    
LFCDC: ADC    #$BC    
       CMP    #$ED    
       BCS    LFCE4   
       LDA    #$ED    
LFCE4: STA    $C2     
       JMP    LF6E2   
LFCE9: CMP    #$44    
       BCS    LFCC8   
       LDY    #$4B    
       JSR    LF323   
       INC    $96     
       BNE    LFCC8   
LFCF6: .byte $12 ;.JAM
       ROL    $183A,X 
       CPX    $E4     
       ROR    $E46A   
       BMI    LFCAA   
       ROL    HMP0    
       LDY    $A2F0,X 
       .byte $04 ;.NOP
       LDY    #$04    
       LDA    $96     
       CMP    #$40    
       BCC    LFD11   
       LDY    #$09    
LFD11: LDA    LFCF6,Y 
       STA    $F7,X   
       DEY            
       DEX            
       BPL    LFD11   
       LDA    $FA     
       STA    COLUP1  
       LDA    #$37    
       STA    NUSIZ1  
       LDA    #$28    
       LDY    #$03    
       JSR    LF0BC   
       LDA    #$26    
       JSR    LF0BC   
       STA    WSYNC   
       STA    $6A     
       LDA    $F8     
       STA    COLUBK  
       LDA    $F9     
       STA    COLUPF  
       LDA    #$30    
       STA    CTRLPF  
       STA    WSYNC   
       STA    $6B     
       LDA    $D8     
       SBC    #$18    
       TAX            
       LDA    #$FF    
       STA    ENABL   
       STA    PF2     
       LDA    #$10    
       STA    $63     
       LDY    #$7F    
       JMP    LFD67   
LFD56: NOP            
       NOP            
       JMP    LFD83   
LFD5B: CPY    #$28    
       BCS    LFD56   
       JMP    LFDDC   
LFD62: LDA    GRP1    
       JMP    LFD82   
LFD67: NOP            
       LDA    #$00    
       STA    PF0     
       LDA    $F8     
       STA    COLUBK  
       STA    WSYNC   
       LDA    #$07    
       STA    PF1     
       TYA            
       LSR            
       BCS    LFD5B   
       CPX    #$15    
       BCS    LFD62   
       LDA    $9F,X   
       STA    GRP0    
LFD82: INX            
LFD83: LDA    #$FF    
       CPY    #$38    
       BNE    LFD8D   
       STA    GRP1    
       STA    ENAM1   
LFD8D: STA    PF0     
       CPY    #$56    
       BCS    LFD95   
       LDA    #$00    
LFD95: STA    PF1     
       LDA    $F7     
       STA    COLUBK  
       DEY            
       BNE    LFD67   
LFD9E: CPY    #$21    
       BNE    LFDB3   
       LDA    #$10    
       STA    $61     
       LDA    $FB     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       JMP    LFDEA   
LFDB3: NOP            
       NOP            
       JMP    LFDDB   
LFDB8: LDA    $3F     
       JMP    LFDDA   
LFDBD: DEY            
       LDA    #$00    
       STA    PF0     
LFDC2: TYA            
       LSR            
       LDA    $F8     
       STA    WSYNC   
       STA    $6A     
       STA    COLUBK  
       LDA    #$07    
       STA    PF1     
       BCS    LFD9E   
       CPX    #$15    
       BCS    LFDB8   
       LDA    $9F,X   
       STA    GRP0    
LFDDA: INX            
LFDDB: NOP            
LFDDC: CPY    #$21    
       LDA    #$0E    
       STA    COLUP1  
       LDA    #$FF    
       STA    PF0     
       ADC    #$00    
       STA    PF1     
LFDEA: LDA    $F7     
       STA    COLUBK  
       CPY    #$0B    
       BCS    LFDBD   
       LDA    $FA     
       STA    COLUP1  
       DEY            
       BNE    LFDC2   
       STY    GRP1    
       STY    ENAM1   
LFDFD: CPY    #$0C    
       STA    WSYNC   
       BCS    LFE05   
       STA    $6A     
LFE05: CPX    #$15    
       BCS    LFE0D   
       LDA    $9F,X   
       STA    GRP0    
LFE0D: TYA            
       AND    #$01    
       BEQ    LFE13   
       INX            
LFE13: INY            
       CPY    #$34    
       BNE    LFDFD   
       JMP    LF35E   
LFE1B: .byte $38,$6C,$C6,$C6,$C6,$C6,$C6,$6C,$38,$10,$30,$70,$F0,$30,$30,$30
       .byte $30,$FC,$7C,$C6,$86,$06,$1C,$70,$C0,$C0,$FE,$7C,$CE,$86,$06,$1C
       .byte $06,$86,$CE,$7C,$0C,$1C,$2C,$4C,$8C,$FE,$0C,$0C,$0C,$FE,$C0,$C0
       .byte $FC,$06,$06,$86,$CC,$78,$0C,$18,$30,$60,$78,$FC,$C6,$C6,$7C,$FE
       .byte $FE,$86,$0C,$18,$18,$30,$30,$30,$38,$7C,$C6,$C6,$7C,$C6,$C6,$7C
       .byte $38,$7C,$C6,$C6,$7E,$3C,$0C,$18,$30,$60,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0C
       .byte $1E,$3C,$3E,$1C,$18,$18,$1C,$18,$1A,$1C,$18,$18,$18,$0C,$0C,$18
       .byte $28,$18,$0C,$00,$0C,$1E,$3C,$3E,$1C,$18,$18,$1C,$18,$1A,$1C,$18
       .byte $18,$1C,$16,$12,$12,$13,$10,$18,$00,$0C,$1E,$3C,$3E,$1C,$18,$18
       .byte $1C,$18,$1A,$1C,$18,$18,$1C,$14,$16,$12,$12,$23,$10,$00,$0C,$1E
       .byte $3C,$3E,$1C,$18,$18,$1C,$18,$1A,$1C,$18,$18,$1C,$14,$14,$74,$44
       .byte $04,$06,$00,$0C,$1E,$3E,$3E,$1C,$08,$3E,$3E,$3E,$3E,$1E,$1C,$1C
       .byte $1C,$14,$14,$14,$14,$10,$10,$00,$0C,$1E,$3E,$3E,$1C,$08,$3E,$3E
       .byte $3E,$3E,$1E,$1C,$1C,$1C,$14,$14,$14,$14,$14,$00,$00,$0C,$1E,$3E
       .byte $3E,$1C,$08,$3E,$3E,$3E,$3E,$3C,$1C,$1C,$1C,$14,$14,$14,$14,$04
       .byte $04,$00,$0C,$1E,$3E,$3E,$1C,$08,$3E,$3E,$3E,$3E,$3C,$1C,$1C,$1C
       .byte $14,$14,$14,$14,$14,$00,$00,$08,$1C,$1C,$3E,$6B,$7F,$3E,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$14,$14,$14,$14,$14,$14,$00
LFF47: .byte $06,$06,$08,$08,$0A,$0A,$0C,$0C,$0A,$0A,$08,$08,$06,$06
LFF55: .byte $00,$3C,$7E,$26,$3E,$00,$1C,$16,$34,$10,$3C,$66,$78,$00,$0C,$0C
       .byte $FE,$FE,$7C,$7C,$38
LFF6A: .byte $00,$38,$7C,$7C,$FE,$FE,$FE,$FE,$FE,$FE,$7C,$7C,$38,$00
LFF78: .byte $08,$04,$02,$01,$FF,$00
LFF7E: .byte $17,$24,$3C,$54,$6E,$92
LFF84: .byte $B1,$00,$00,$05,$00,$07,$A7
LFF8B: .byte $ED,$92,$A7,$08,$80,$E2,$4D,$80,$ED,$22,$10,$AE,$38,$40,$ED,$79
       .byte $80,$E2,$92,$10,$CD,$64
LFFA1: .byte $E1,$4C,$4D
LFFA4: .byte $FE,$67,$C8,$23,$40,$ED,$23,$40,$FE,$5C,$10,$EB,$52,$20,$D8,$2F
       .byte $10,$ED,$65,$20,$DB,$5B,$EE,$24,$22,$FE,$67,$C8,$23,$40,$EB,$23
       .byte $10,$DA,$2A,$10,$E5,$36,$80,$FE,$58,$80,$EB,$67,$40,$D4,$23,$EC
       .byte $23,$22,$FE,$67,$C8,$23,$40,$EB,$23,$10,$DA,$2A,$10,$DE,$32,$40
       .byte $FD,$50,$20,$DF,$5F,$10,$CE,$43,$EC,$23,$22
LFFEF: .byte $FE,$52,$56
LFFF2: .byte $FE,$4A,$4E
LFFF5: .byte $FE,$31
LFFF7: .byte $30,$23,$33,$43,$13,$DE,$F0,$A5,$5A
