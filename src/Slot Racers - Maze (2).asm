; Disassembly of roms/Slot Racers - Maze (2).bin
; Disassembled Tue Oct  6 15:22:43 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Slot Racers - Maze (2).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP0  =  $25
VDELP1  =  $26
VDELBL  =  $27
RESMP0  =  $28
RESMP1  =  $29
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF144   
LF003: STA    WSYNC   
       LDA    #$21    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       LDX    #$01    
LF015: LDA    $91,X   
       AND    #$0F    
       STA    $95,X   
       ASL            
       ASL            
       CLC            
       ADC    $95,X   
       STA    $95,X   
       LDA    $91,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $93,X   
       LSR            
       LSR            
       STA    WSYNC   
       CLC            
       ADC    $93,X   
       STA    $93,X   
       DEX            
       BPL    LF015   
       TSX            
       STX    $81     
       LDA    #$57    
       STA    $80     
       LDA    #$00    
       STA    $83     
       STA    VDELP1  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELBL  
LF049: LDX    #$1E    
       TXS            
       SEC            
       LDA    $80     
       SBC    $89     
       TAY            
       AND    #$F8    
       BEQ    LF05A   
       LDA    $83     
       BEQ    LF05C   
LF05A: LDA    ($8D),Y 
LF05C: TAY            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STY    GRP0    
       SEC            
       LDA    $80     
       SBC    $8A     
       TAY            
       AND    #$F8    
       BEQ    LF074   
       LDA    $83     
       BEQ    LF076   
LF074: LDA    ($8F),Y 
LF076: STA    $82     
       LDA    $80     
       LSR            
       LSR            
       LSR            
       TAX            
       SEC            
       LDA    $80     
       SBC    $8B     
       SBC    #$02    
       AND    #$FC    
       TAY            
       SEC            
       LDA    $80     
       SBC    $8C     
       SBC    #$02    
       AND    #$FC    
       NOP            
       NOP            
       NOP            
       PHP            
       TYA            
       PHP            
       LDA    $82     
       STA    GRP1    
       LDA    $CF,X   
       STA    PF0     
       LDA    $DA,X   
       STA    PF1     
       LDA    $E5,X   
       STA    PF2     
       DEC    $80     
       BPL    LF049   
       LDX    $81     
       TXS            
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$00    
       STA    ENABL   
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$20    
       STA    TIM64T  
       RTS            

LF0D4: LDA    INTIM   
       BNE    LF0D4   
       LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    VBLANK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$05    
       LDA    #$00    
       STA    $80     
       STA    $81     
LF0F3: STA    WSYNC   
       LDA    $80     
       STA    PF1     
       LDY    $93     
       LDA    LF700,Y 
       AND    #$F0    
       STA    $80     
       LDY    $95     
       LDA    LF700,Y 
       AND    #$0F    
       ORA    $80     
       STA    $80     
       LDA    $81     
       STA    PF1     
       LDY    $94     
       LDA    LF700,Y 
       AND    #$F0    
       STA    $81     
       LDY    $96     
       LDA    LF700,Y 
       AND    #$0F    
       STA    WSYNC   
       ORA    $81     
       STA    $81     
       LDA    $80     
       STA    PF1     
       DEX            
       BMI    LF13D   
       INC    $93     
       INC    $95     
       INC    $94     
       INC    $96     
       LDA    $81     
       STA    PF1     
       JMP    LF0F3   
LF13D: LDA    #$00    
       STA    PF1     
       JMP    LF003   
LF144: SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF14A: STA    NUSIZ0,X
       DEX            
       BPL    LF14A   
       TXS            
LF150: STA    VSYNC,X 
       DEX            
       BMI    LF150   
       LDA    #$20    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$21    
       STA    CTRLPF  
       JSR    LF608   
       LDA    #$FF    
       STA    $F0     
       LDA    #$02    
       JSR    LF539   
LF16B: JSR    LF0D4   
       LDA    $CC     
       CMP    #$F7    
       BEQ    LF189   
       LDA    $BC     
       STA    $80     
       LDA    SWCHA   
       STA    $BC     
       EOR    #$FF    
       AND    $80     
       STA    $BD     
       BEQ    LF189   
       LDA    #$00    
       STA    $CE     
LF189: LDX    #$00    
       JSR    LF1E0   
       LDX    #$01    
       JSR    LF44B   
       JSR    LF1BD   
       LDX    #$01    
       JSR    LF1E0   
       LDX    #$00    
       JSR    LF44B   
       LDX    #$01    
LF1A2: LDA    $BA,X   
       BEQ    LF1B0   
       DEC    $BA,X   
       LDA    $BA,X   
       CMP    #$0F    
       BMI    LF1B0   
       LDA    #$0F    
LF1B0: STA    AUDV0,X 
       DEX            
       BPL    LF1A2   
       JSR    LF517   
       STA    CXCLR   
       JMP    LF16B   
LF1BD: LDA    INTIM   
       BNE    LF1BD   
       LDA    #$02    
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
       LDA    #$29    
       STA    TIM64T  
       RTS            

LF1E0: LDA    #$BA    
       STA    $82     
       LDA    #$F2    
       STA    $83     
       STA    $81     
       LDA    #$00    
       STA    $9B,X   
       LDA    #$CC    
       STA    $B5,X   
       LDY    #$07    
       CPX    #$00    
       BEQ    LF1FA   
       LDY    #$03    
LF1FA: LDA    #$03    
       STA    $86     
LF1FE: LDA    $BD     
       AND    LF6EA,Y 
       BEQ    LF212   
       STY    $88     
       LDY    $86     
       LDA    ($82),Y 
       STA    $80     
       JSR    LF447   
       LDY    $88     
LF212: LDA    $BC     
       EOR    #$FF    
       AND    LF6EA,Y 
       BEQ    LF22C   
       STY    $88     
       LDA    $86     
       CLC            
       ADC    #$04    
       TAY            
       LDA    ($82),Y 
       STA    $80     
       JSR    LF447   
       LDY    $88     
LF22C: DEY            
       DEC    $86     
       BPL    LF1FE   
       LDA    $B9     
       CMP    $9F,X   
       BPL    LF23B   
       DEC    $9F,X   
       DEC    $9F,X   
LF23B: JSR    LF2DC   
       LDA    $A3,X   
       JSR    LF2C2   
       LDA    $9B,X   
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       CLC            
       ADC    $97,X   
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$37    
       CPX    #$00    
       BNE    LF260   
       STA    $8D     
       LDA    #$F7    
       STA    $8E     
       JMP    LF266   
LF260: STA    $8F     
       LDA    #$F7    
       STA    $90     
LF266: RTS            

LF267: .byte $B5,$9F,$C5,$B9,$10,$10,$20,$D5,$F6,$A9,$0B,$95,$AF,$A5,$B9,$4A
       .byte $4A,$18,$75,$9F,$95,$9F,$60,$B5,$9F,$F0,$1A,$20,$D5,$F6,$A9,$0B
       .byte $95,$AF,$A5,$B9,$4A,$4A,$85,$84,$B5,$9F,$38,$E5,$84,$95,$9F,$10
       .byte $04,$A9,$00,$95,$9F,$60,$A9,$FF,$95,$9B,$A9,$D4,$95,$B5,$60,$A9
       .byte $01,$95,$9B,$A9,$DC,$95,$B5,$60,$60,$D6,$AF,$F0,$B3,$60,$D6,$AF
       .byte $F0,$C5,$60,$67,$7E,$AF,$AF,$B0,$B5,$9D,$A6
LF2C2: LDY    #$02    
       SEC            
LF2C5: INY            
       SBC    #$0F    
       BCS    LF2C5   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF2D4: DEY            
       BPL    LF2D4   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF2DC: LDA    $9F,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $81     
       LDA    $9F,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $80     
       LDA    $97,X   
       BNE    LF300   
       LDA    $AB,X   
       CLC            
       ADC    $80     
       STA    $AB,X   
       BCS    LF32C   
       JMP    LF331   
LF300: CMP    #$01    
       BNE    LF310   
       LDA    $A7,X   
       CLC            
       ADC    $80     
       STA    $A7,X   
       BCS    LF32C   
       JMP    LF331   
LF310: CMP    #$02    
       BNE    LF320   
       LDA    $AB,X   
       SEC            
       SBC    $80     
       STA    $AB,X   
       BCC    LF32C   
       JMP    LF331   
LF320: LDA    $A7,X   
       SEC            
       SBC    $80     
       STA    $A7,X   
       BCC    LF32C   
       JMP    LF331   
LF32C: LDA    #$01    
       JMP    LF333   
LF331: LDA    #$00    
LF333: CLC            
       ADC    $81     
       STA    $87     
       LDA    $87     
       BNE    LF33F   
       JMP    LF44A   
LF33F: LDA    #$01    
       STA    $B1,X   
LF343: LDA    $97,X   
       BNE    LF34C   
       INC    $89,X   
       JMP    LF363   
LF34C: CMP    #$01    
       BNE    LF355   
       INC    $A3,X   
       JMP    LF363   
LF355: CMP    #$02    
       BNE    LF35E   
       DEC    $89,X   
       JMP    LF363   
LF35E: DEC    $A3,X   
       JMP    LF363   
LF363: LDA    $89,X   
       AND    #$07    
       BEQ    LF36C   
       JMP    LF43F   
LF36C: LDA    $A3,X   
       SEC            
       SBC    #$05    
       AND    #$07    
       BEQ    LF378   
       JMP    LF43F   
LF378: LDA    $B1,X   
       BNE    LF37F   
       JMP    LF43F   
LF37F: LDA    #$00    
       STA    $B1,X   
       LDA    $89,X   
       LSR            
       LSR            
       LSR            
       STA    $82     
       LDA    $A3,X   
       LSR            
       LSR            
       STA    $85     
       LDA    $97,X   
       STA    $84     
       STX    $88     
       LDA    #$00    
       STA    $83     
       LDA    #$02    
       STA    $86     
LF39E: LDA    $84     
       CLC            
       ADC    $86     
       TAY            
       LDA    $85     
       CLC            
       ADC    LF6F2,Y 
       TAX            
       LDA    $82     
       CLC            
       ADC    LF6F8,Y 
       TAY            
       BMI    LF422   
       CPY    #$0B    
       BPL    LF422   
       CPX    #$14    
       BMI    LF3F0   
       CPX    #$24    
       BMI    LF3D4   
       CPX    #$28    
       BMI    LF3C7   
       JMP    LF422   
LF3C7: TXA            
       EOR    #$FF    
       SEC            
       ADC    #$2B    
       TAX            
       LDA.wy $00CF,Y 
       JMP    LF41C   
LF3D4: CPX    #$1C    
       BMI    LF3E3   
       TXA            
       SEC            
       SBC    #$1C    
       TAX            
       LDA.wy $00DA,Y 
       JMP    LF41C   
LF3E3: TXA            
       EOR    #$FF    
       SEC            
       ADC    #$1B    
       TAX            
       LDA.wy $00E5,Y 
       JMP    LF41C   
LF3F0: CPX    #$04    
       BMI    LF410   
       CPX    #$0C    
       BMI    LF403   
       TXA            
       SEC            
       SBC    #$0C    
       TAX            
       LDA.wy $00E5,Y 
       JMP    LF41C   
LF403: TXA            
       EOR    #$FF    
       SEC            
       ADC    #$0B    
       TAX            
       LDA.wy $00DA,Y 
       JMP    LF41C   
LF410: CPX    #$00    
       BMI    LF422   
       TXA            
       CLC            
       ADC    #$04    
       TAX            
       LDA.wy $00CF,Y 
LF41C: AND    LF6EA,X 
       CLC            
       BEQ    LF423   
LF422: SEC            
LF423: ROL    $83     
       DEC    $86     
       BMI    LF42C   
       JMP    LF39E   
LF42C: LDX    $88     
       LDA    $B5,X   
       STA    $80     
       LDA    #$F7    
       STA    $81     
       LDY    $83     
       LDA    ($80),Y 
       STA    $80     
       JSR    LF447   
LF43F: NOP            
       DEC    $87     
       BEQ    LF44A   
       JMP    LF343   
LF447: JMP.ind ($0080)
LF44A: RTS            

LF44B: LDA    $CC     
       CMP    #$F7    
       BNE    LF454   
       JMP    LF506   
LF454: LDA    CXM0P,X 
       AND    #$80    
       BEQ    LF498   
       JSR    LF6C8   
       LDA    #$02    
       STA    $C4,X   
       STA    RESMP0,X
       SED            
       LDA    $91,X   
       CLC            
       ADC    #$01    
       STA    $91,X   
       CLD            
       CMP    #$25    
       BNE    LF474   
       LDA    #$F7    
       STA    $CC     
LF474: LDA    $8B,X   
       STA    $87     
       LDA    $A5,X   
       STA    $86     
       TXA            
       EOR    #$01    
       TAY            
       LDA    $86     
       STA.wy $00A3,Y 
       LDA    $87     
       STA.wy $0089,Y 
       LDA    $99,X   
       STA.wy $0097,Y 
       LDA    #$50    
       STA.wy $009F,Y 
       LDA    #$10    
       STA    $F1,X   
LF498: LDA    $C6,X   
       BEQ    LF4A1   
       DEC    $C6,X   
       JMP    LF4AD   
LF4A1: LDA    CXM0P,X 
       AND    #$40    
       BEQ    LF4AD   
       LDA    #$02    
       STA    $C4,X   
       STA    RESMP0,X
LF4AD: LDA    $F1,X   
       BEQ    LF4B3   
       DEC    $F1,X   
LF4B3: LDA    $BF,X   
       STA    $82     
       LDA    INPT4,X 
       STA    $BF,X   
       EOR    #$FF    
       AND    $82     
       AND    #$80    
       BEQ    LF4F0   
       LDA    $F1,X   
       BNE    LF4F0   
       LDA    SWCHB   
       AND    LF6F0,X 
       BEQ    LF4D3   
       LDA    $C4,X   
       BEQ    LF4F0   
LF4D3: LDA    #$00    
       STA    $C4,X   
       STA    RESMP0,X
       LDA    #$24    
       STA    $C6,X   
       LDA    $BE     
       AND    #$04    
       BEQ    LF4E7   
       LDA    $B5,X   
       STA    $B7,X   
LF4E7: LDA    $C3     
       STA    $A1,X   
       LDY    $97,X   
       JMP    LF4FA   
LF4F0: LDA    $C4,X   
       BEQ    LF506   
       LDA    #$00    
       STA    $A1,X   
       LDY    $99,X   
LF4FA: LDA    $89,X   
       STA    $8B,X   
       LDA    $A3,X   
       STA    $A5,X   
       LDA    $97,X   
       STA    $99,X   
LF506: TXA            
       CLC            
       ADC    #$02    
       TAX            
       JSR    LF2DC   
       LDA    $A3,X   
       CLC            
       ADC    #$03    
       JSR    LF2C2   
       RTS            

LF517: INC    $CD     
       BNE    LF523   
       INC    $CE     
       BNE    LF523   
       LDA    #$F7    
       STA    $CC     
LF523: LDA    $CB     
       STA    $81     
       LDA    SWCHB   
       STA    $CB     
       CMP    $81     
       BNE    LF533   
       JMP    LF5D1   
LF533: LDA    $CB     
       EOR    #$FF    
       AND    $81     
LF539: STA    $83     
       AND    #$02    
       BEQ    LF5A3   
       LDA    #$00    
       STA    $CD     
LF543: JSR    LF0D4   
       JSR    LF1BD   
       INC    $F0     
       LDA    $F0     
       CMP    #$04    
       BMI    LF561   
       LDA    #$00    
       STA    $F0     
       INC    $CA     
       LDA    $CA     
       CMP    #$09    
       BMI    LF561   
       LDA    #$00    
       STA    $CA     
LF561: LDA    $CA     
       STA    $91     
       INC    $91     
       LDA    #$0A    
       STA    $92     
       LDA    #$F7    
       STA    $CC     
       LDA    $F0     
       TAX            
       LDA    #$FF    
LF574: CLC            
       ADC    #$21    
       DEX            
       BPL    LF574   
       TAY            
       LDX    #$20    
LF57D: LDA    LF644,Y 
       STA    $CF,X   
       DEY            
       DEX            
       BPL    LF57D   
       LDX    $CA     
       LDA    LF629,X 
       STA    $B9     
       LDA    LF632,X 
       STA    $C3     
       LDA    #$C4    
       STA    $B7     
       STA    $B8     
       LDA    LF63B,X 
       STA    $BE     
       LDA    $B9     
       STA    $9F     
       STA    $A0     
LF5A3: LDA    #$00    
       STA    $CE     
       LDA    $83     
       AND    #$01    
       BEQ    LF5E8   
       LDA    #$00    
       STA    $91     
       STA    $92     
       LDA    #$FF    
       STA    $CC     
       JSR    LF608   
       LDA    #$00    
       STA    $9F     
       STA    $A0     
       STA    $97     
       STA    $98     
       LDA    #$CC    
       STA    $B5     
       STA    $B6     
       LDA    #$00    
       STA    $CE     
       JMP    LF5E8   
LF5D1: LDA    $CB     
       AND    #$02    
       STA    $83     
       BNE    LF5E2   
       LDA    $CD     
       AND    #$1F    
       BNE    LF5E2   
       JMP    LF543   
LF5E2: LDA    $CC     
       CMP    #$F7    
       BNE    LF607   
LF5E8: LDA    $CB     
       AND    #$08    
       LSR            
       LSR            
       TAX            
       LDA    LF7E4,X 
       STA    $80     
       LDA    LF7E5,X 
       STA    $81     
       LDY    #$03    
LF5FB: LDA    ($80),Y 
       EOR    $CE     
       AND    $CC     
       STA.wy $0006,Y 
       DEY            
       BPL    LF5FB   
LF607: RTS            

LF608: LDA    #$05    
       STA    $A3     
       LDA    #$95    
       STA    $A4     
       LDA    #$00    
       STA    $89     
       STA    $8A     
       LDX    #$01    
LF618: JSR    LF2C2   
       DEX            
       BPL    LF618   
       LDA    #$02    
       STA    $C4     
       STA    $C5     
       STA    RESMP0  
       STA    RESMP1  
       RTS            

LF629: .byte $04,$08,$0C,$10,$10,$20,$30,$08,$10
LF632: .byte $08,$10,$18,$20,$08,$0C,$10,$20,$20
LF63B: .byte $04,$04,$04,$04,$04,$04,$04,$00,$00
LF644: .byte $10,$90,$90,$90,$10,$90,$10,$90,$90,$90,$10,$00,$F9,$80,$99,$19
       .byte $99,$19,$99,$80,$FF,$00,$00,$FF,$00,$9F,$01,$F9,$01,$9F,$00,$F9
       .byte $00,$10,$10,$70,$10,$10,$70,$10,$10,$70,$10,$10,$60,$06,$7F,$06
       .byte $00,$66,$00,$07,$78,$00,$78,$86,$00,$87,$00,$80,$66,$06,$79,$80
       .byte $00,$18,$10,$10,$90,$10,$70,$10,$F0,$10,$90,$90,$10,$06,$66,$80
       .byte $06,$18,$00,$98,$06,$80,$E0,$06,$60,$66,$00,$66,$80,$00,$80,$60
       .byte $00,$00,$60,$10,$90,$90,$10,$70,$90,$90,$10,$90,$10,$70,$01,$98
       .byte $86,$60,$19,$80,$99,$18,$86,$60,$06,$81,$18,$66,$80,$1F,$60,$07
       .byte $E0,$18,$86,$80
LF6C8: LDA    #$14    
       STA    $BA,X   
       LDA    #$08    
       STA    AUDC0,X 
       LDA    #$0F    
       STA    AUDF0,X 
       RTS            

LF6D5: .byte $A9,$1F,$95,$17,$A9,$03,$95,$15,$A9,$14,$95,$BA,$60,$FE,$FD,$FB
       .byte $F7,$EF,$DF,$BF,$7F
LF6EA: .byte $01,$02,$04,$08,$10,$20
LF6F0: .byte $40,$80
LF6F2: .byte $FF,$00,$02,$00,$FF,$00
LF6F8: .byte $00,$01,$00,$FF,$00,$01,$EA,$EA
LF700: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE,$00,$00,$00,$00,$00,$FF,$FF,$3C,$3C,$3C,$3C,$F0,$F0,$C0
       .byte $C0,$FC,$FC,$FF,$FF,$C3,$C3,$0F,$0F,$3C,$3C,$3C,$3C,$FF,$FF,$C3
       .byte $C3,$FF,$FF,$3F,$3F,$03,$03,$FF,$FF,$3C,$3C,$3C,$3C,$3C,$3C,$C0
       .byte $C0,$FF,$FF,$FF,$FF,$C0,$C0,$3C,$3C,$3C,$3C,$3C,$3C,$FF,$FF,$03
       .byte $03,$FF,$FF,$FF,$FF,$03,$03,$FF,$FF,$3C,$3C,$3C,$3C,$0F,$0F,$C3
       .byte $C3,$FF,$FF,$FC,$FC,$C0,$C0,$F0,$F0,$3C,$3C,$3C,$3C,$FF,$FF,$03
       .byte $03,$3F,$3F,$FF,$FF,$C3,$C3,$60,$B5,$97,$38,$E9,$01,$29,$03,$95
       .byte $97,$60,$B5,$97,$18,$69,$01,$29,$03,$95,$97,$60,$A9,$00,$95,$9F
       .byte $60,$B5,$97,$18,$69,$02,$29,$03,$95,$97,$60,$A9,$00,$95,$9F,$A9
       .byte $02,$95,$C4,$60,$97,$97,$BB,$BB,$97,$97,$BB,$BB,$97,$97,$98,$A2
       .byte $97,$97,$98,$B1,$98,$97,$98,$A2,$98,$97,$98,$B1,$A2,$A2,$A2,$A2
       .byte $97,$97,$98,$B1
LF7E4: .byte $EC
LF7E5: .byte $F7,$E8,$F7,$1A,$46,$0E,$A4,$00,$0E,$0A,$06,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$00,$F0,$00,$00,$4C,$44,$F1,$85,$02
       .byte $A9,$21,$85,$0A,$A9,$FF,$85,$0D,$85,$0E,$85,$0F,$85,$02,$A2,$01
       .byte $B5,$91,$29,$0F,$95,$95,$0A,$0A,$18,$75,$95,$95,$95,$B5,$91,$29
       .byte $F0,$4A,$4A,$95,$93,$4A,$4A,$85,$02,$18,$75,$93,$95,$93,$CA,$10
       .byte $DF,$BA,$86,$81,$A9,$57,$85,$80,$A9,$00,$85,$83,$85,$26,$A9,$01
       .byte $85,$25,$85,$27,$A2,$1E,$9A,$38,$A5,$80,$E5,$89,$A8,$29,$F8,$F0
       .byte $04,$A5,$83,$F0,$02,$B1,$8D,$A8,$EA,$EA,$EA,$EA,$EA,$EA,$EA,$84
       .byte $1B,$38,$A5,$80,$E5,$8A,$A8,$29,$F8,$F0,$04,$A5,$83,$F0,$02,$B1
       .byte $8F,$85,$82,$A5,$80,$4A,$4A,$4A,$AA,$38,$A5,$80,$E5,$8B,$E9,$02
       .byte $29,$FC,$A8,$38,$A5,$80,$E5,$8C,$E9,$02,$29,$FC,$EA,$EA,$EA,$08
       .byte $98,$08,$A5,$82,$85,$1C,$B5,$CF,$85,$0D,$B5,$DA,$85,$0E,$B5,$E5
       .byte $85,$0F,$C6,$80,$10,$9E,$A6,$81,$9A,$85,$02,$85,$02,$A9,$05,$85
       .byte $0A,$A9,$FF,$85,$0D,$85,$0E,$85,$0F,$A9,$00,$85,$1F,$85,$1B,$85
       .byte $1C,$85,$1D,$85,$1E,$85,$2B,$85,$02,$A9,$20,$8D,$96,$02,$60,$AD
       .byte $84,$02,$D0,$FB,$A9,$00,$85,$02,$85,$2A,$85,$01,$85,$0D,$85,$0E
       .byte $85,$0F,$A9,$02,$85,$0A,$A2,$05,$A9,$00,$85,$80,$85,$81,$85,$02
       .byte $A5,$80,$85,$0E,$A4,$93,$B9,$00,$F7,$29,$F0,$85,$80,$A4,$95,$B9
       .byte $00,$F7,$29,$0F,$05,$80,$85,$80,$A5,$81,$85,$0E,$A4,$94,$B9,$00
       .byte $F7,$29,$F0,$85,$81,$A4,$96,$B9,$00,$F7,$29,$0F,$85,$02,$05,$81
       .byte $85,$81,$A5,$80,$85,$0E,$CA,$30,$0F,$E6,$93,$E6,$95,$E6,$94,$E6
       .byte $96,$A5,$81,$85,$0E,$4C,$F3,$F0,$A9,$00,$85,$0E,$4C,$03,$F0,$78
       .byte $D8,$A2,$28,$A9,$00,$95,$04,$CA,$10,$FB,$9A,$95,$00,$CA,$30,$FB
       .byte $A9,$20,$85,$04,$85,$05,$A9,$21,$85,$0A,$20,$08,$F6,$A9,$FF,$85
       .byte $F0,$A9,$02,$20,$39,$F5,$20,$D4,$F0,$A5,$CC,$C9,$F7,$F0,$15,$A5
       .byte $BC,$85,$80,$AD,$80,$02,$85,$BC,$49,$FF,$25,$80,$85,$BD,$F0,$04
       .byte $A9,$00,$85,$CE,$A2,$00,$20,$E0,$F1,$A2,$01,$20,$4B,$F4,$20,$BD
       .byte $F1,$A2,$01,$20,$E0,$F1,$A2,$00,$20,$4B,$F4,$A2,$01,$B5,$BA,$F0
       .byte $0A,$D6,$BA,$B5,$BA,$C9,$0F,$30,$02,$A9,$0F,$95,$19,$CA,$10,$ED
       .byte $20,$17,$F5,$85,$2C,$4C,$6B,$F1,$AD,$84,$02,$D0,$FB,$A9,$02,$85
       .byte $02,$85,$01,$85,$02,$85,$02,$85,$02,$85,$00,$85,$02,$85,$02,$A9
       .byte $00,$85,$02,$85,$00,$A9,$29,$8D,$96,$02,$60,$A9,$BA,$85,$82,$A9
       .byte $F2,$85,$83,$85,$81,$A9,$00,$95,$9B,$A9,$CC,$95,$B5,$A0,$07,$E0
       .byte $00,$F0,$02,$A0,$03,$A9,$03,$85,$86,$A5,$BD,$39,$EA,$F6,$F0,$0D
       .byte $84,$88,$A4,$86,$B1,$82,$85,$80,$20,$47,$F4,$A4,$88,$A5,$BC,$49
       .byte $FF,$39,$EA,$F6,$F0,$11,$84,$88,$A5,$86,$18,$69,$04,$A8,$B1,$82
       .byte $85,$80,$20,$47,$F4,$A4,$88,$88,$C6,$86,$10,$CD,$A5,$B9,$D5,$9F
       .byte $10,$04,$D6,$9F,$D6,$9F,$20,$DC,$F2,$B5,$A3,$20,$C2,$F2,$B5,$9B
       .byte $18,$69,$01,$0A,$0A,$18,$75,$97,$0A,$0A,$0A,$18,$69,$37,$E0,$00
       .byte $D0,$09,$85,$8D,$A9,$F7,$85,$8E,$4C,$66,$F2,$85,$8F,$A9,$F7,$85
       .byte $90,$60,$B5,$9F,$C5,$B9,$10,$10,$20,$D5,$F6,$A9,$0B,$95,$AF,$A5
       .byte $B9,$4A,$4A,$18,$75,$9F,$95,$9F,$60,$B5,$9F,$F0,$1A,$20,$D5,$F6
       .byte $A9,$0B,$95,$AF,$A5,$B9,$4A,$4A,$85,$84,$B5,$9F,$38,$E5,$84,$95
       .byte $9F,$10,$04,$A9,$00,$95,$9F,$60,$A9,$FF,$95,$9B,$A9,$D4,$95,$B5
       .byte $60,$A9,$01,$95,$9B,$A9,$DC,$95,$B5,$60,$60,$D6,$AF,$F0,$B3,$60
       .byte $D6,$AF,$F0,$C5,$60,$67,$7E,$AF,$AF,$B0,$B5,$9D,$A6,$A0,$02,$38
       .byte $C8,$E9,$0F,$B0,$FB,$49,$FF,$E9,$06,$0A,$0A,$0A,$0A,$84,$02,$88
       .byte $10,$FD,$95,$10,$95,$20,$60,$B5,$9F,$29,$F0,$4A,$4A,$4A,$4A,$85
       .byte $81,$B5,$9F,$29,$0F,$0A,$0A,$0A,$0A,$85,$80,$B5,$97,$D0,$0C,$B5
       .byte $AB,$18,$65,$80,$95,$AB,$B0,$2F,$4C,$31,$F3,$C9,$01,$D0,$0C,$B5
       .byte $A7,$18,$65,$80,$95,$A7,$B0,$1F,$4C,$31,$F3,$C9,$02,$D0,$0C,$B5
       .byte $AB,$38,$E5,$80,$95,$AB,$90,$0F,$4C,$31,$F3,$B5,$A7,$38,$E5,$80
       .byte $95,$A7,$90,$03,$4C,$31,$F3,$A9,$01,$4C,$33,$F3,$A9,$00,$18,$65
       .byte $81,$85,$87,$A5,$87,$D0,$03,$4C,$4A,$F4,$A9,$01,$95,$B1,$B5,$97
       .byte $D0,$05,$F6,$89,$4C,$63,$F3,$C9,$01,$D0,$05,$F6,$A3,$4C,$63,$F3
       .byte $C9,$02,$D0,$05,$D6,$89,$4C,$63,$F3,$D6,$A3,$4C,$63,$F3,$B5,$89
       .byte $29,$07,$F0,$03,$4C,$3F,$F4,$B5,$A3,$38,$E9,$05,$29,$07,$F0,$03
       .byte $4C,$3F,$F4,$B5,$B1,$D0,$03,$4C,$3F,$F4,$A9,$00,$95,$B1,$B5,$89
       .byte $4A,$4A,$4A,$85,$82,$B5,$A3,$4A,$4A,$85,$85,$B5,$97,$85,$84,$86
       .byte $88,$A9,$00,$85,$83,$A9,$02,$85,$86,$A5,$84,$18,$65,$86,$A8,$A5
       .byte $85,$18,$79,$F2,$F6,$AA,$A5,$82,$18,$79,$F8,$F6,$A8,$30,$6E,$C0
       .byte $0B,$10,$6A,$E0,$14,$30,$34,$E0,$24,$30,$14,$E0,$28,$30,$03,$4C
       .byte $22,$F4,$8A,$49,$FF,$38,$69,$2B,$AA,$B9,$CF,$00,$4C,$1C,$F4,$E0
       .byte $1C,$30,$0B,$8A,$38,$E9,$1C,$AA,$B9,$DA,$00,$4C,$1C,$F4,$8A,$49
       .byte $FF,$38,$69,$1B,$AA,$B9,$E5,$00,$4C,$1C,$F4,$E0,$04,$30,$1C,$E0
       .byte $0C,$30,$0B,$8A,$38,$E9,$0C,$AA,$B9,$E5,$00,$4C,$1C,$F4,$8A,$49
       .byte $FF,$38,$69,$0B,$AA,$B9,$DA,$00,$4C,$1C,$F4,$E0,$00,$30,$0E,$8A
       .byte $18,$69,$04,$AA,$B9,$CF,$00,$3D,$EA,$F6,$18,$F0,$01,$38,$26,$83
       .byte $C6,$86,$30,$03,$4C,$9E,$F3,$A6,$88,$B5,$B5,$85,$80,$A9,$F7,$85
       .byte $81,$A4,$83,$B1,$80,$85,$80,$20,$47,$F4,$EA,$C6,$87,$F0,$06,$4C
       .byte $43,$F3,$6C,$80,$00,$60,$A5,$CC,$C9,$F7,$D0,$03,$4C,$06,$F5,$B5
       .byte $30,$29,$80,$F0,$3E,$20,$C8,$F6,$A9,$02,$95,$C4,$95,$28,$F8,$B5
       .byte $91,$18,$69,$01,$95,$91,$D8,$C9,$25,$D0,$04,$A9,$F7,$85,$CC,$B5
       .byte $8B,$85,$87,$B5,$A5,$85,$86,$8A,$49,$01,$A8,$A5,$86,$99,$A3,$00
       .byte $A5,$87,$99,$89,$00,$B5,$99,$99,$97,$00,$A9,$50,$99,$9F,$00,$A9
       .byte $10,$95,$F1,$B5,$C6,$F0,$05,$D6,$C6,$4C,$AD,$F4,$B5,$30,$29,$40
       .byte $F0,$06,$A9,$02,$95,$C4,$95,$28,$B5,$F1,$F0,$02,$D6,$F1,$B5,$BF
       .byte $85,$82,$B5,$3C,$95,$BF,$49,$FF,$25,$82,$29,$80,$F0,$2D,$B5,$F1
       .byte $D0,$29,$AD,$82,$02,$3D,$F0,$F6,$F0,$04,$B5,$C4,$F0,$1D,$A9,$00
       .byte $95,$C4,$95,$28,$A9,$24,$95,$C6,$A5,$BE,$29,$04,$F0,$04,$B5,$B5
       .byte $95,$B7,$A5,$C3,$95,$A1,$B4,$97,$4C,$FA,$F4,$B5,$C4,$F0,$12,$A9
       .byte $00,$95,$A1,$B4,$99,$B5,$89,$95,$8B,$B5,$A3,$95,$A5,$B5,$97,$95
       .byte $99,$8A,$18,$69,$02,$AA,$20,$DC,$F2,$B5,$A3,$18,$69,$03,$20,$C2
       .byte $F2,$60,$E6,$CD,$D0,$08,$E6,$CE,$D0,$04,$A9,$F7,$85,$CC,$A5,$CB
       .byte $85,$81,$AD,$82,$02,$85,$CB,$C5,$81,$D0,$03,$4C,$D1,$F5,$A5,$CB
       .byte $49,$FF,$25,$81,$85,$83,$29,$02,$F0,$64,$A9,$00,$85,$CD,$20,$D4
       .byte $F0,$20,$BD,$F1,$E6,$F0,$A5,$F0,$C9,$04,$30,$10,$A9,$00,$85,$F0
       .byte $E6,$CA,$A5,$CA,$C9,$09,$30,$04,$A9,$00,$85,$CA,$A5,$CA,$85,$91
       .byte $E6,$91,$A9,$0A,$85,$92,$A9,$F7,$85,$CC,$A5,$F0,$AA,$A9,$FF,$18
       .byte $69,$21,$CA,$10,$FA,$A8,$A2,$20,$B9,$44,$F6,$95,$CF,$88,$CA,$10
       .byte $F7,$A6,$CA,$BD,$29,$F6,$85,$B9,$BD,$32,$F6,$85,$C3,$A9,$C4,$85
       .byte $B7,$85,$B8,$BD,$3B,$F6,$85,$BE,$A5,$B9,$85,$9F,$85,$A0,$A9,$00
       .byte $85,$CE,$A5,$83,$29,$01,$F0,$3B,$A9,$00,$85,$91,$85,$92,$A9,$FF
       .byte $85,$CC,$20,$08,$F6,$A9,$00,$85,$9F,$85,$A0,$85,$97,$85,$98,$A9
       .byte $CC,$85,$B5,$85,$B6,$A9,$00,$85,$CE,$4C,$E8,$F5,$A5,$CB,$29,$02
       .byte $85,$83,$D0,$09,$A5,$CD,$29,$1F,$D0,$03,$4C,$43,$F5,$A5,$CC,$C9
       .byte $F7,$D0,$1F,$A5,$CB,$29,$08,$4A,$4A,$AA,$BD,$E4,$F7,$85,$80,$BD
       .byte $E5,$F7,$85,$81,$A0,$03,$B1,$80,$45,$CE,$25,$CC,$99,$06,$00,$88
       .byte $10,$F4,$60,$A9,$05,$85,$A3,$A9,$95,$85,$A4,$A9,$00,$85,$89,$85
       .byte $8A,$A2,$01,$20,$C2,$F2,$CA,$10,$FA,$A9,$02,$85,$C4,$85,$C5,$85
       .byte $28,$85,$29,$60,$04,$08,$0C,$10,$10,$20,$30,$08,$10,$08,$10,$18
       .byte $20,$08,$0C,$10,$20,$20,$04,$04,$04,$04,$04,$04,$04,$00,$00,$10
       .byte $90,$90,$90,$10,$90,$10,$90,$90,$90,$10,$00,$F9,$80,$99,$19,$99
       .byte $19,$99,$80,$FF,$00,$00,$FF,$00,$9F,$01,$F9,$01,$9F,$00,$F9,$00
       .byte $10,$10,$70,$10,$10,$70,$10,$10,$70,$10,$10,$60,$06,$7F,$06,$00
       .byte $66,$00,$07,$78,$00,$78,$86,$00,$87,$00,$80,$66,$06,$79,$80,$00
       .byte $18,$10,$10,$90,$10,$70,$10,$F0,$10,$90,$90,$10,$06,$66,$80,$06
       .byte $18,$00,$98,$06,$80,$E0,$06,$60,$66,$00,$66,$80,$00,$80,$60,$00
       .byte $00,$60,$10,$90,$90,$10,$70,$90,$90,$10,$90,$10,$70,$01,$98,$86
       .byte $60,$19,$80,$99,$18,$86,$60,$06,$81,$18,$66,$80,$1F,$60,$07,$E0
       .byte $18,$86,$80,$A9,$14,$95,$BA,$A9,$08,$95,$15,$A9,$0F,$95,$17,$60
       .byte $A9,$1F,$95,$17,$A9,$03,$95,$15,$A9,$14,$95,$BA,$60,$FE,$FD,$FB
       .byte $F7,$EF,$DF,$BF,$7F,$01,$02,$04,$08,$10,$20,$40,$80,$FF,$00,$02
       .byte $00,$FF,$00,$00,$01,$00,$FF,$00,$01,$EA,$EA,$0E,$0A,$0A,$0A,$0E
       .byte $22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA
       .byte $AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22
       .byte $22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$00,$00,$00
       .byte $00,$00,$FF,$FF,$3C,$3C,$3C,$3C,$F0,$F0,$C0,$C0,$FC,$FC,$FF,$FF
       .byte $C3,$C3,$0F,$0F,$3C,$3C,$3C,$3C,$FF,$FF,$C3,$C3,$FF,$FF,$3F,$3F
       .byte $03,$03,$FF,$FF,$3C,$3C,$3C,$3C,$3C,$3C,$C0,$C0,$FF,$FF,$FF,$FF
       .byte $C0,$C0,$3C,$3C,$3C,$3C,$3C,$3C,$FF,$FF,$03,$03,$FF,$FF,$FF,$FF
       .byte $03,$03,$FF,$FF,$3C,$3C,$3C,$3C,$0F,$0F,$C3,$C3,$FF,$FF,$FC,$FC
       .byte $C0,$C0,$F0,$F0,$3C,$3C,$3C,$3C,$FF,$FF,$03,$03,$3F,$3F,$FF,$FF
       .byte $C3,$C3,$60,$B5,$97,$38,$E9,$01,$29,$03,$95,$97,$60,$B5,$97,$18
       .byte $69,$01,$29,$03,$95,$97,$60,$A9,$00,$95,$9F,$60,$B5,$97,$18,$69
       .byte $02,$29,$03,$95,$97,$60,$A9,$00,$95,$9F,$A9,$02,$95,$C4,$60,$97
       .byte $97,$BB,$BB,$97,$97,$BB,$BB,$97,$97,$98,$A2,$97,$97,$98,$B1,$98
       .byte $97,$98,$A2,$98,$97,$98,$B1,$A2,$A2,$A2,$A2,$97,$97,$98,$B1,$EC
       .byte $F7,$E8,$F7,$1A,$46,$0E,$A4,$00,$0E,$0A,$06,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$EA,$EA,$EA,$EA,$EA,$00,$F0,$00,$00
