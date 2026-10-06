; Disassembly of roms/Dancing Plate (PAL).bin
; Disassembled Tue Oct  6 15:21:09 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Dancing Plate (PAL).bin
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
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$2C    
       STA    TIM64T  
       JSR    $78B3   
LF013: JSR    $791A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $84     
       CMP    #$88    
       BCS    LF057   
       LDA    SWCHB   
       AND    #$02    
       BNE    LF062   
       LDX    $85     
       INX            
       CPX    #$09    
       BCC    LF032   
       LDX    #$01    
LF032: STX    $85     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       STA    $87     
       STA    $88     
       STA    $89     
       STA    $8A     
       STA    $8C     
       STA    $8E     
       STA    $90     
       STA    $92     
       LDA    $85     
       JSR    $77CE   
       STA    $94     
       LDA    #$88    
       STA    $84     
       BNE    LF08D   
LF057: LDA    SWCHB   
       AND    #$02    
       BEQ    LF062   
       LDA    #$80    
       STA    $84     
LF062: LDA    $84     
       BNE    LF08D   
       JSR    $7538   
       DEC    $82     
       BPL    LF08D   
       LDX    $83     
       BNE    LF073   
       LDX    #$60    
LF073: DEX            
       LDA    $80     
       STA    $82     
       LDA    #$02    
       STA    AUDV1   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $7D88,X 
       STA    AUDF1   
       BNE    LF08B   
       STA    AUDV0   
       STA    AUDV1   
LF08B: STX    $83     
LF08D: LDA    $E8     
       AND    #$01    
       BEQ    LF100   
       LDA    #$04    
       LDX    #$00    
       JSR    $78F0   
       LDA    #$42    
       LDX    #$01    
       JSR    $78F0   
       LDA    #$09    
       LDX    #$02    
       JSR    $78F0   
       LDA    #$47    
       LDX    #$03    
       JSR    $78F0   
       LDA    $B6     
       STA    $D4     
       JSR    $70F6   
       STA    $E9     
       LDA    $AA     
       STA    $D6     
       JSR    $70F6   
       STA    $EA     
       LDA    $9E     
       STA    $D8     
       LDA    $A7     
       STA    $DA     
       BEQ    LF0CF   
       CMP    $9E     
       BCC    LF0D1   
LF0CF: LDA    $9E     
LF0D1: JSR    $70F6   
       STA    $EB     
       LDA    $B3     
       STA    $DC     
       JSR    $70F6   
       STA    $EC     
       LDA    $B7     
       STA    $DE     
       LDA    $AB     
       STA    $E0     
       LDA    $9F     
       STA    $E2     
       LDA    $A8     
       STA    $E4     
       LDA    $B4     
       STA    $E6     
       JMP    $7161   
LF0F6: STA    $D3     
       LSR            
       ADC    $D3     
       ADC    #$1C    
       ORA    #$0A    
       RTS            

LF100: LDA    #$13    
       LDX    #$00    
       JSR    $78F0   
       LDA    #$50    
       LDX    #$01    
       JSR    $78F0   
       LDA    #$18    
       LDX    #$02    
       JSR    $78F0   
       LDA    #$55    
       LDX    #$03    
       JSR    $78F0   
       LDA    $B0     
       STA    $D4     
       JSR    $70F6   
       STA    $E9     
       LDA    $A4     
       STA    $D6     
       JSR    $70F6   
       STA    $EA     
       LDA    $A1     
       STA    $D8     
       JSR    $70F6   
       STA    $EB     
       LDA    $AD     
       STA    $DA     
       LDA    $B9     
       STA    $DC     
       BEQ    LF145   
       CMP    $AD     
       BCC    LF148   
LF145: LDA.w  $00AD   
LF148: JSR    $70F6   
       STA    $EC     
       LDA    $B1     
       STA    $DE     
       LDA    $A5     
       STA    $E0     
       LDA    $A2     
       STA    $E2     
       LDA    $AE     
       STA    $E4     
       LDA    $BA     
       STA    $E6     
LF161: STA    WSYNC   
       STA    HMOVE   
       LDA    #$02    
       STA    NUSIZ0  
       LDA    #$06    
       STA    NUSIZ1  
       STA    WSYNC   
       STA    HMCLR   
LF171: LDA    INTIM   
       BNE    LF171   
       LDA    #$01    
       STA    CTRLPF  
       LDX    #$19    
LF17C: STA    WSYNC   
       LDA    $7C9A,X 
       STA    PF0     
       LDA    $7C80,X 
       STA    COLUPF  
       LDA    $7CB4,X 
       STA    PF1     
       LDA    $7CCE,X 
       STA    PF2     
       CPX    #$11    
       BCS    LF1A0   
       LDA    #$62    
       CPX    #$0B    
       BCS    LF19E   
       LDA    #$A0    
LF19E: STA    COLUBK  
LF1A0: DEX            
       BPL    LF17C   
       STA    WSYNC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       LDX    #$1C    
LF1B1: STA    WSYNC   
       DEX            
       BPL    LF1B1   
       LDY    #$07    
       LDX    #$68    
       LDA    $E8     
       AND    #$01    
       BEQ    LF1EF   
LF1C0: LDA    $E9     
       STA    WSYNC   
       STA    COLUP0  
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    ($D4),Y 
       STA    GRP0    
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $EA     
       STA    COLUP0  
       LDA    $EB     
       STA    COLUP1  
       LDA    ($DA),Y 
       STA.w  $001C   
       NOP            
       LDA    ($DC),Y 
       STA    GRP1    
       LDA    $EC     
       STA    COLUP1  
       DEY            
       BPL    LF1C0   
       LDY    #$07    
       BPL    LF226   
LF1EF: LDX    #$09    
LF1F1: STA    WSYNC   
       DEX            
       BPL    LF1F1   
       LDX    #$5E    
LF1F8: STA    WSYNC   
       LDA    ($D8),Y 
       STA    GRP1    
       LDA    $E9     
       STA    COLUP0  
       LDA    ($D4),Y 
       STA    GRP0    
       NOP            
       LDA    ($D6),Y 
       STA    GRP0    
       LDA    $EA     
       STA    COLUP0  
       LDA    $EB     
       STA    COLUP1  
       LDA    ($DA),Y 
       STA    GRP1    
       LDA    $EC     
       STA    COLUP1  
       LDA    ($DC),Y 
       STA    GRP1    
       DEY            
       BPL    LF1F8   
       LDY    #$07    
LF224: STA    WSYNC   
LF226: LDA    #$D2    
       STA    COLUP0  
       STA.w  $0007   
       LDA    ($DE),Y 
       STA    GRP0    
       LDA    #$00    
       STA.w  $001C   
       NOP            
       LDA    ($E0),Y 
       STA    GRP0    
       LDA    ($E2),Y 
       STA    GRP1    
       DEX            
       NOP            
       LDA    ($E4),Y 
       STA.w  $001C   
       LDA    ($E6),Y 
       STA.w  $001C   
       DEY            
       BPL    LF224   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    CXCLR   
       STY    ENAM0   
       STY    ENAM1   
       STY    $CF     
       LDA    $97     
       STA    REFP0   
       LDA    #$0C    
       STA    $D0     
       LDA    #$30    
       STA    CTRLPF  
       LDA    #$78    
       STA    COLUPF  
       LDA    #$05    
       STA    TIM64T  
       LDA    $CA     
       STX    $D1     
       LDX    #$00    
       JSR    $78F0   
       LDX    $D1     
LF27C: LDA    INTIM   
       BNE    LF27C   
LF281: LDA    #$00    
       STA    ENABL   
       STA    $D2     
       LDY    $D0     
       BMI    LF2AE   
       LDA.wy $00BC,Y 
       STA    $D2     
       LDA.wy $00BB,Y 
       CMP    #$90    
       BCC    LF298   
       DEX            
LF298: STX    $D1     
       LDX    #$04    
       JSR    $78F0   
       STA    WSYNC   
       STA    HMOVE   
       LDX    $D1     
       DEX            
       DEX            
       DEX            
       DEC    $D0     
       DEC    $D0     
       DEC    $D0     
LF2AE: DEX            
       BEQ    LF2EB   
       STA    WSYNC   
       STA    HMCLR   
       CPX    #$15    
       BCS    LF2D7   
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    NUSIZ0  
       TXA            
       TAY            
       LDA    ($CB),Y 
       STA    GRP0    
       LDA    #$88    
       CPX    #$10    
       BCS    LF2D5   
       LDA    #$BC    
       CPX    #$08    
       BCS    LF2D5   
       LDA    #$88    
LF2D5: STA    COLUP0  
LF2D7: LDA    $CF     
       DEC    $CF     
       BEQ    LF281   
       CPX    $D2     
       BNE    LF2E9   
       LDA    #$08    
       STA    $CF     
       LDA    #$FF    
       STA    ENABL   
LF2E9: BNE    LF2AE   
LF2EB: STX    ENABL   
       STX    GRP0    
       STX    ENAM0   
       STX    ENAM1   
       LDA    #$28    
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$10    
       STA    TIM64T  
       LDA    #$00    
       LDY    #$04    
       LDX    $86     
       BEQ    LF31C   
       CPX    #$08    
       BCC    LF30E   
       LDX    #$08    
       STX    $86     
LF30E: SEC            
       ROR            
       ROR            
       DEX            
       BEQ    LF31C   
       DEY            
       BNE    LF30E   
       TAY            
       LDA    #$00    
       BEQ    LF321   
LF31C: TAY            
       LDA    #$00    
       BEQ    LF327   
LF321: SEC            
       ROL            
       ROL            
       DEX            
       BNE    LF321   
LF327: TAX            
       LDA    #$06    
       STA    $D3     
LF32C: STA    WSYNC   
       DEC.w  $00D3   
       BEQ    LF350   
       LDA    #$00    
       STA.w  $000D   
       STY.w  $000E   
       STX.w  $000F   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA.w  $000E   
       STA.w  $000F   
       JMP    $732C   
LF350: STA    WSYNC   
LF352: LDA    INTIM   
       BNE    LF352   
       STA    WSYNC   
       JSR    $77D5   
       LDA    #$20    
       LDX    #$00    
       JSR    $78F0   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$28    
       LDX    #$01    
       JSR    $78F0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$01    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0C    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LF390: STA    WSYNC   
       LDA    $7F58,X 
       STA    GRP0    
       LDA    $7F61,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $7F73,X 
       TAY            
       LDA    $7F6A,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF390   
       LDA    #$2C    
       STA    TIM64T  
       INC    $E8     
       LDA    SWCHB   
       AND    #$01    
       BEQ    LF3F4   
       LDA    $84     
       BNE    LF42E   
       JSR    $74AB   
       JSR    $785D   
       LDA    $E8     
       AND    #$01    
       BEQ    LF3D8   
       JSR    $7643   
       JSR    $7616   
       JMP    $7013   
LF3D8: LDA    $E8     
       AND    #$07    
       BNE    LF3E4   
       JSR    $776B   
       JMP    $7013   
LF3E4: CMP    #$02    
       BNE    LF3EE   
       JSR    $788E   
       JMP    $7013   
LF3EE: JSR    $7616   
       JMP    $7013   
LF3F4: LDA    SWCHB   
       AND    #$01    
       BNE    LF42B   
       JSR    $749A   
       LDA    #$99    
       STA    $87     
       STA    $88     
       LDA    #$90    
       STA    $89     
       JSR    $776B   
       LDA    #$04    
       STA    $86     
       LDA    #$A0    
       STA    $9D     
       LDA    #$80    
       STA    $9E     
       LDA    #$30    
       STA    $9F     
       LDA    #$01    
       STA    $82     
       LDA    #$00    
       STA    $83     
       LDA    #$08    
       STA    $80     
       LDA    #$48    
       STA    $84     
LF42B: JMP    $7013   
LF42E: CMP    #$01    
       BEQ    LF439   
       CMP    #$48    
       BEQ    LF451   
       JMP    $7013   
LF439: LDA    #$00    
       STA    $84     
       DEC    $86     
       BEQ    LF444   
       JMP    $7013   
LF444: LDA    #$40    
       STA    $84     
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       JMP    $7013   
LF451: LDA    #$7F    
       STA    $CB     
       LDA    #$40    
       STA    $CA     
       LDA    $85     
       CMP    #$03    
       BCC    LF46B   
       CMP    #$05    
       BCC    LF46F   
       CMP    #$08    
       BCC    LF473   
       LDX    #$07    
       BNE    LF485   
LF46B: LDX    #$04    
       BNE    LF475   
LF46F: LDX    #$05    
       BNE    LF475   
LF473: LDX    #$06    
LF475: CMP    #$07    
       BEQ    LF48D   
       CMP    #$06    
       BEQ    LF485   
       CMP    #$05    
       BEQ    LF489   
       AND    #$01    
       BEQ    LF48D   
LF485: LDA    #$1A    
       BNE    LF48F   
LF489: LDA    #$17    
       BNE    LF48F   
LF48D: LDA    #$1D    
LF48F: STA    $81     
       STX    $9C     
       LDA    #$00    
       STA    $84     
       JMP    $7013   
LF49A: LDA    #$00    
       LDX    #$1D    
LF49E: STA    $9D,X   
       DEX            
       BPL    LF49E   
       LDX    #$0E    
LF4A5: STA    $BB,X   
       DEX            
       BPL    LF4A5   
       RTS            

LF4AB: LDA    $82     
       BNE    LF4CE   
       LDA    $83     
       BNE    LF4CE   
       LDX    #$00    
LF4B5: LDA    $9F,X   
       BEQ    LF4C2   
       INX            
       INX            
       INX            
       CPX    $81     
       BCS    LF4CE   
       BCC    LF4B5   
LF4C2: LDA    #$FF    
       STA    $9D,X   
       LDA    #$80    
       STA    $9E,X   
       LDA    #$30    
       STA    $9F,X   
LF4CE: RTS            

LF4CF: SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF4DF   
       LDA    #$40    
       STA    $9E,X   
       JMP    $7537   
LF4DF: LDA    $9E,X   
       CMP    #$68    
       BEQ    LF4F7   
       CMP    #$60    
       BEQ    LF4FD   
       CMP    #$58    
       BEQ    LF503   
       CMP    #$50    
       BEQ    LF509   
       LDY    #$68    
       LDA    #$68    
       BNE    LF532   
LF4F7: LDY    #$60    
       LDA    #$60    
       BNE    LF532   
LF4FD: LDY    #$58    
       LDA    #$58    
       BNE    LF532   
LF503: LDY    #$50    
       LDA    #$50    
       BNE    LF532   
LF509: LDY    #$48    
       LDA    #$48    
       BNE    LF532   
LF50F: BCC    LF4CF   
LF511: SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF521   
       LDA    #$68    
       STA    $9E,X   
       JMP    $7537   
LF521: LDA.wx $009E,X 
       CMP    #$78    
       BEQ    LF52E   
       LDY    #$68    
       LDA    #$78    
       BNE    LF532   
LF52E: LDY    #$70    
       LDA    #$70    
LF532: STA    $9E,X   
       TYA            
       STA    $9F,X   
LF537: RTS            

LF538: LDX    $9B     
       DEX            
       DEX            
       DEX            
       BPL    LF541   
       LDX    #$1B    
LF541: STX    $9B     
       LDA    $9F,X   
       BEQ    LF537   
       CMP    #$08    
       BEQ    LF537   
       LDA    $9E,X   
       CMP    #$48    
       BCC    LF570   
       CMP    #$70    
       BCC    LF50F   
       CMP    #$80    
       BCC    LF511   
       SEC            
       LDA    $9D,X   
       SBC    $9C     
       STA    $9D,X   
       BCS    LF567   
       LDA    #$78    
       STA    $9E,X   
       RTS            

LF567: LDA    #$80    
       STA    $9E,X   
       LDA    #$30    
       STA    $9F,X   
       RTS            

LF570: SEC            
       LDA    $9D,X   
       SBC    $9C     
       BCC    LF5BD   
LF577: STA    $9D,X   
       LDA    $9E,X   
       CMP    #$40    
       BEQ    LF599   
       CMP    #$38    
       BEQ    LF59F   
       CMP    #$30    
       BEQ    LF5A5   
       CMP    #$28    
       BEQ    LF5AB   
       CMP    #$20    
       BEQ    LF5B1   
       CMP    #$18    
       BEQ    LF5B7   
       LDY    #$40    
       LDA    #$40    
       BEQ    LF532   
LF599: LDY    #$38    
       LDA    #$38    
LF59D: BNE    LF532   
LF59F: LDY    #$30    
       LDA    #$30    
       BNE    LF532   
LF5A5: LDY    #$28    
       LDA    #$28    
       BNE    LF532   
LF5AB: LDY    #$20    
       LDA    #$20    
       BNE    LF532   
LF5B1: LDY    #$18    
       LDA    #$18    
       BNE    LF59D   
LF5B7: LDY    #$10    
       LDA    #$10    
       BNE    LF59D   
LF5BD: LDY    #$56    
       LDA    $9B     
       AND    #$01    
       BEQ    LF5C7   
       LDY    #$4D    
LF5C7: TYA            
       SEC            
       SBC    #$0C    
       CMP.w  $00C8   
       BCS    LF5D4   
LF5D0: LDA    #$04    
       BNE    LF577   
LF5D4: LDA.w  $00BC   
       BNE    LF5D0   
       LDX    #$00    
LF5DB: LDA    $BE,X   
       STA    $BB,X   
       INX            
       CPX    #$0C    
       BNE    LF5DB   
       LDX    $9B     
       STY    $C8     
       STX    $C9     
       LDA    $75FA,X 
       STA    $C7     
       LDA    #$08    
       STA    $9E,X   
       LDA    #$08    
       STA    $9F,X   
       RTS            

LF5F8: .byte $40
LF5F9: .byte $44
LF5FA: .byte $42,$4E,$52,$50,$32,$36,$34,$60,$64,$62,$22,$26,$24,$6E,$72,$70
       .byte $12,$16,$14,$80,$84,$82,$02,$06,$04,$8E,$92,$90
LF616: LDX    #$0D    
LF618: LDA    $BB,X   
       BEQ    LF63D   
       CMP    #$11    
       BCS    LF63B   
       LDA    #$08    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       LDA    #$01    
       STA    $84     
       STA    $BB,X   
       LDA    $BC,X   
       STX    $D3     
       TAX            
       LDA    #$00    
       STA    $9E,X   
       STA    $9F,X   
       LDX    $D3     
LF63B: DEC    $BB,X   
LF63D: DEX            
       DEX            
       DEX            
       BPL    LF618   
       RTS            

LF643: LDA    $9A     
       CMP    #$07    
       BNE    LF64A   
       RTS            

LF64A: INC    $99     
       JSR    $7736   
       LDX    $CA     
       LDA    SWCHA   
       ASL            
       BCS    LF698   
       LDA    #$00    
       STA    $97     
       INX            
LF65C: LDA    $CB     
       CMP    #$BB    
       BEQ    LF692   
       CMP    #$CF    
       BEQ    LF692   
       LDA    $99     
       AND    #$01    
       BNE    LF68C   
       LDA    $CB     
       CMP    #$93    
       BNE    LF688   
       LDA    $98     
       BNE    LF67F   
       LDA    #$01    
       STA    $98     
       LDA    #$7F    
       JMP    $768A   
LF67F: LDA    #$00    
       STA    $98     
       LDA    #$A7    
       JMP    $768A   
LF688: LDA    #$93    
LF68A: STA    $CB     
LF68C: JSR    $7729   
LF68F: JMP    $76A3   
LF692: JSR    $774D   
       JMP    $76A3   
LF698: ASL            
       BCS    LF68F   
       DEX            
       LDA    #$08    
       STA    $97     
       JMP    $765C   
LF6A3: CPX    #$01    
       BCC    LF6AF   
       CPX    #$98    
       BCC    LF6B1   
       LDX    #$98    
       BNE    LF6B1   
LF6AF: LDX    #$01    
LF6B1: STX    $CA     
       TXA            
       LDX    #$00    
LF6B6: CMP    $75F8,X 
       BCC    LF6C0   
       CMP    $75F9,X 
       BCC    LF6D7   
LF6C0: INX            
       INX            
       INX            
       CPX    #$1E    
       BCC    LF6B6   
       LDA    $CB     
       CMP    #$BB    
       BEQ    LF6D2   
       CMP    #$CF    
       BEQ    LF6D2   
       RTS            

LF6D2: LDA    #$93    
       STA    $CB     
       RTS            

LF6D7: LDA    $E8     
       AND    #$08    
       BEQ    LF6E2   
       LDA    #$BB    
       JMP    $76E4   
LF6E2: LDA    #$CF    
LF6E4: STA    $CB     
       LDA.w  $000C   
       AND    #$80    
       BEQ    LF6EE   
       RTS            

LF6EE: LDA    #$0C    
       STA    AUDC0   
       LDA    #$05    
       STA    AUDF0   
       LDA    $E8     
       AND    #$04    
       LSR            
       STA    AUDV0   
       LDA    $9D,X   
       ADC    #$0A    
       STA    $9D,X   
       BCC    LF719   
       LDA    $9E,X   
       BEQ    LF719   
       CMP    #$48    
       BCC    LF71A   
       CMP    #$70    
       BCC    LF71F   
       CMP    #$80    
       BCC    LF724   
       LDA    #$FF    
       STA    $9D,X   
LF719: RTS            

LF71A: LDA    #$68    
       STA    $9E,X   
       RTS            

LF71F: LDA    #$78    
       STA    $9E,X   
       RTS            

LF724: LDA    #$80    
       STA    $9E,X   
       RTS            

LF729: LDA    $99     
       AND    #$07    
       CMP    #$02    
       BEQ    LF756   
       CMP    #$06    
       BEQ    LF75C   
       RTS            

LF736: DEC    $96     
       DEC    $96     
       DEC    $96     
       DEC    $96     
       DEC    $96     
       LDA    $96     
       CMP    #$80    
       BCC    LF748   
       LDA    #$00    
LF748: STA    AUDV0   
       STA    $96     
       RTS            

LF74D: LDA    #$00    
       STA    AUDC0   
       STA    AUDF0   
       STA    AUDV0   
       RTS            

LF756: LDA    #$1A    
       STA    AUDF0   
       BNE    LF760   
LF75C: LDA    #$1B    
       STA    AUDF0   
LF760: LDA    #$04    
       STA    AUDC0   
       LDA    #$07    
       STA    AUDV0   
       STA    $96     
       RTS            

LF76B: CLC            
       SED            
       LDA    $89     
       ADC    #$10    
       STA    $89     
       LDA    $88     
       ADC    #$00    
       STA    $88     
       LDA    $87     
       ADC    #$00    
       STA    $87     
       CLD            
       LDA    $88     
       ORA    $89     
       BNE    LF788   
       INC    $86     
LF788: LDA    $87     
       BEQ    LF794   
       LDA    #$04    
       CMP    $9C     
       BNE    LF794   
       INC    $9C     
LF794: LDA    $87     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $8A     
       LDA    $87     
       AND    #$0F    
       JSR    $77CE   
       STA    $8C     
       LDA    $88     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $8E     
       LDA    $88     
       AND    #$0F    
       JSR    $77CE   
       STA    $90     
       LDA    $89     
       AND    #$F0    
       LSR            
       CLC            
       ADC    #$08    
       STA    $92     
       LDA    $89     
       AND    #$0F    
       JSR    $77CE   
       STA    $94     
       RTS            

LF7CE: ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       RTS            

LF7D5: LDA    #$00    
       STA    REFP0   
       STA    COLUBK  
       LDA    #$18    
       LDX    #$00    
       JSR    $78F0   
       LDA    #$48    
       LDX    #$01    
       JSR    $78F0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDY    #$07    
       STA    WSYNC   
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$86    
       STA    COLUBK  
       LDA    #$02    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$00    
       LDA    $8A     
       CMP    #$08    
       BNE    LF82F   
       STX    $8A     
       LDA    $8C     
       CMP    #$08    
       BNE    LF82F   
       STX    $8C     
       LDA    $8E     
       CMP    #$08    
       BNE    LF82F   
       STX    $8E     
       LDA    $90     
       CMP    #$08    
       BNE    LF82F   
       STX    $90     
       LDA    $92     
       CMP    #$08    
       BNE    LF82F   
       STX    $92     
LF82F: STA    WSYNC   
       LDA    ($8A),Y 
       LDA    ($8A),Y 
       STA    GRP0    
       LDA    ($90),Y 
       STA    GRP1    
       LDA    ($8E),Y 
       TAX            
       LDA    ($8C),Y 
       STA    GRP0    
       NOP            
       STX    GRP0    
       LDA    ($92),Y 
       STA    GRP1    
       LDA    ($94),Y 
       STA    GRP1    
       DEY            
       BNE    LF82F   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       STA    COLUBK  
       RTS            

LF85D: LDA    WSYNC   
       AND    #$40    
       BEQ    LF88D   
       LDX    #$00    
LF865: LDA    $BC,X   
       BNE    LF872   
       INX            
       INX            
       INX            
       CPX    #$0F    
       BCC    LF865   
       BCS    LF88D   
LF872: STX    $D3     
       LDA    $BD,X   
       TAX            
       LDA    #$80    
       STA    $9D,X   
       LDA    #$68    
       STA    $9E,X   
       LDA    #$68    
       STA    $9F,X   
       LDA    #$00    
       LDX    $D3     
       STA    $BB,X   
       STA    $BC,X   
       STA    $BD,X   
LF88D: RTS            

LF88E: LDY    #$00    
       LDX    #$1C    
LF892: LDA    $9D,X   
       BEQ    LF89B   
       CMP    #$48    
       BCS    LF89B   
       INY            
LF89B: DEX            
       DEX            
       DEX            
       BPL    LF892   
       LDA    #$06    
       CPY    #$04    
       BCC    LF8B0   
       CPY    #$06    
       BCC    LF8AE   
       LDA    #$04    
       BNE    LF8B0   
LF8AE: LDA    #$05    
LF8B0: STA    $80     
       RTS            

LF8B3: LDA    #$FD    
       STA    $D5     
       STA    $D7     
       STA    $D9     
       STA    $DB     
       STA    $DD     
       LDA    #$FE    
       STA    $DF     
       STA    $E1     
       STA    $E3     
       STA    $E5     
       STA    $E7     
       STA    $CC     
       LDA    #$FF    
       STA    $8B     
       STA    $8D     
       STA    $8F     
       STA    $91     
       STA    $93     
       STA    $95     
       LDA    #$80    
       STA    $84     
       LDA    #$01    
       STA    $85     
       LDA    #$10    
       STA    $94     
       LDA    #$7F    
       STA    $CB     
       LDA    #$40    
       STA    $CA     
       RTS            

LF8F0: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00D3   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00D3   
       CMP    #$0F    
       BCC    LF90A   
       SBC    #$0F    
       INY            
LF90A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF914: DEY            
       BPL    LF914   
       STA    RESP0,X 
       RTS            

LF91A: LDA    INTIM   
       BNE    LF91A   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       STA    VBLANK  
       STA    COLUPF  
       LDA    #$40    
       STA    TIM64T  
       RTS            

LF941: .byte $B5,$9F,$F0,$F0,$C9,$08,$F0,$EC,$B5,$9E,$C9,$48,$90,$1F,$C9,$70
       .byte $90,$BA,$C9,$80,$90,$B8,$38,$B5,$9D,$E5,$9C,$95,$9D,$B0,$05,$A9
       .byte $78,$95,$9E,$60,$A9,$80,$95,$9E,$A9,$30,$95,$9F,$60,$38,$B5,$9D
       .byte $E5,$9C,$90,$46,$95,$9D,$B5,$9E,$C9,$40,$F0,$1A,$C9,$38,$F0,$1C
       .byte $C9,$30,$F0,$1E,$C9,$28,$F0,$20,$C9,$20,$F0,$22,$C9,$18,$F0,$24
       .byte $61,$7F,$85,$1C,$EA,$EA,$EA,$EA,$EA,$BD,$73,$7F,$A8,$BD,$6A,$7F
       .byte $85,$1B,$84,$1C,$85,$2B,$CA,$10,$DF,$A9,$2C,$8D,$96,$02,$E6,$E8
       .byte $AD,$82,$02,$29,$01,$F0,$35,$A5,$84,$D0,$6B,$20,$AB,$74,$20,$5D
       .byte $78,$A5,$E8,$29,$01,$F0,$09,$20,$43,$76,$20,$16,$76,$4C,$13,$70
       .byte $A5,$E8,$29,$07,$D0,$06,$20,$6B,$77,$4C,$13,$70,$C9,$02,$D0,$06
       .byte $20,$8E,$78,$4C,$13,$70,$20,$16,$76,$4C,$13,$70,$AD,$82,$02,$29
       .byte $01,$D0,$30,$20,$9A,$74,$A9,$99,$85,$87,$85,$88,$A9,$90,$85,$89
       .byte $20,$6B,$77,$A9,$04,$85,$86,$A9,$A0,$85,$9D,$A9,$80,$85,$9E,$A9
       .byte $30,$85,$9F,$A9,$01,$85,$82,$A9,$00,$85,$83,$A9,$08,$85,$80,$A9
       .byte $48,$85,$84,$4C,$13,$70,$C9,$01,$F0,$07,$C9,$48,$F0,$1B,$4C,$13
       .byte $70,$A9,$00,$85,$84,$C6,$86,$F0,$03,$00,$13,$70,$A9,$40,$85,$84
       .byte $A9,$00,$85,$19,$85,$1A,$4C,$13,$70,$A9,$7F,$85,$CB,$A9,$40,$85
       .byte $CA,$A5,$85,$C9,$03,$90,$0C,$C9,$05,$90,$0C,$C9,$08,$90,$0C,$A2
       .byte $07,$D0,$1A,$A2,$04,$D0,$06,$A2,$05,$D0,$02,$A2,$06,$C9,$07,$F0
       .byte $14,$C9,$06,$F0,$08,$C9,$05,$F0,$08,$29,$01,$F0,$08,$A9,$1A,$D0
       .byte $06,$A9,$17,$D0,$02,$A9,$1D,$85,$81,$86,$9C,$A9,$00,$85,$84,$4C
       .byte $13,$70,$A9,$00,$A2,$1D,$95,$9D,$CA,$10,$FB,$A2,$0E,$95,$BB,$CA
       .byte $10,$FB,$60,$A5,$82,$D0,$1F,$A5,$83,$D0,$1B,$A2,$00,$B5,$9F,$F0
       .byte $09,$E8,$E8,$E8,$E4,$81,$B0,$0E,$90,$F3,$A9,$FF,$95,$9D,$A9,$80
       .byte $95,$9E,$A9,$30,$95,$9F,$60,$38,$B5,$9D,$E5,$9C,$95,$9D,$B0,$07
       .byte $A9,$40,$95,$9E,$4C,$37,$75,$B5,$9E,$C9,$68,$F0,$12,$C9,$60,$F0
       .byte $14,$C9,$58,$F0,$16,$C9,$50,$F0,$18,$A0,$68,$A9,$68,$D0,$3B,$A0
       .byte $60,$A9,$60,$D0,$35,$A0,$58,$A9,$58,$D0,$2F,$A0,$50,$A9,$50,$D0
       .byte $29,$A0,$48,$A9,$48,$D0,$23,$90,$BE,$38,$B5,$9D,$E5,$9C,$95,$9D
       .byte $B0,$07,$A9,$68,$95,$9E,$4C,$37,$75,$BD,$9E,$00,$C9,$78,$F0,$06
       .byte $A0,$68,$A9,$78,$D0,$04,$A0,$70,$A9,$70,$95,$9E,$98,$95,$9F,$60
       .byte $A6,$9B,$CA,$CA,$CA,$10,$02,$A2,$1B,$86,$9B,$B5,$9F,$F0,$F0,$C9
       .byte $08,$F0,$EC,$B5,$9E,$C9,$48,$90,$1F,$C9,$70,$90,$BA,$C9,$80,$90
       .byte $B8,$38,$B5,$9D,$E5,$9C,$95,$9D,$B0,$05,$A9,$78,$95,$9E,$60,$A9
       .byte $80,$95,$9E,$A9,$30,$95,$9F,$60,$38,$B5,$9D,$E5,$9C,$90,$46,$95
       .byte $9D,$B5,$9E,$C9,$40,$F0,$1A,$C9,$38,$F0,$1C,$C9,$30,$F0,$1E,$C9
       .byte $28,$F0,$20,$C9,$20,$F0,$22,$C9,$18,$F0,$24,$A0,$40,$A9,$40,$F0
       .byte $99,$A0,$38,$A9,$38,$D0,$93,$A0,$30,$A9,$30,$D0,$8D,$A0,$28,$A9
       .byte $28,$D0,$87,$A0,$20,$A9,$20,$D0,$81,$A0,$18,$A9,$18,$D0,$E6,$A0
       .byte $10,$A9,$10,$D0,$E0,$A0,$56,$A5,$9B,$29,$01,$F0,$02,$A0,$4D,$98
       .byte $38,$E9,$0C,$CD,$C8,$00,$B0,$04,$A9,$04,$D0,$A3,$AD,$BC,$00,$D0
       .byte $F7,$A2,$00,$B5,$BE,$95,$BB,$E8,$E0,$0C,$D0,$F7,$A6,$9B,$84,$C8
       .byte $86,$C9,$BD,$FA,$75,$85,$C7,$A9,$08,$95,$9E,$A9,$08,$95,$9F,$60
       .byte $40,$44,$42,$4E,$52,$50,$32,$36,$34,$60,$64,$62,$22,$26,$24,$6E
       .byte $72,$70,$12,$16,$14,$80,$84,$82,$02,$06,$04,$8E,$92,$90,$A2,$0D
       .byte $B5,$BB,$F0,$21,$C9,$11,$B0,$1B,$A9,$08,$85,$15,$85,$17,$85,$19
       .byte $A9,$01,$85,$84,$95,$BB,$B5,$BC,$86,$D3,$AA,$A9,$00,$95,$9E,$95
       .byte $9F,$A6,$D3,$D6,$BB,$CA,$CA,$CA,$10,$D6,$60,$A5,$9A,$C9,$07,$D0
       .byte $01,$60,$E6,$99,$20,$36,$77,$A6,$CA,$AD,$80,$02,$0A,$B0,$41,$A9
       .byte $00,$85,$97,$E8,$A5,$CB,$C9,$BB,$F0,$30,$C9,$CF,$F0,$2C,$A5,$99
       .byte $29,$01,$D0,$20,$A5,$CB,$C9,$93,$D0,$16,$A5,$98,$D0,$09,$A9,$01
       .byte $85,$98,$A9,$7F,$4C,$8A,$76,$A9,$00,$85,$98,$A9,$A7,$4C,$8A
LFC80: .byte $2C,$2C,$2B,$2B,$2B,$2B,$2A,$2A,$2A,$2A,$29,$29,$29,$29,$28,$28
       .byte $28,$28,$27,$27,$27,$26,$26,$26,$25,$25
LFC9A: .byte $10,$10,$10,$30,$30,$F0,$FF,$FF,$FF,$FF,$F0,$10,$D0,$50,$50,$40
       .byte $FF,$FF,$F0,$70,$30,$30,$F0,$D0,$70,$F0
LFCB4: .byte $00,$00,$00,$02,$07,$0F,$9F,$FF,$FF,$FF,$FF,$10,$D6,$54,$D7,$10
       .byte $FF,$FF,$FF,$0E,$07,$02,$07,$8D,$07,$02
LFCCE: .byte $00,$00,$00,$00,$80,$E1,$F3,$FF,$FF,$FF,$FF,$81,$BD,$A5,$B5,$84
       .byte $FF,$FF,$FF,$30,$61,$C0,$80,$01,$00,$00,$FF,$FF,$95,$9E,$60,$A9
       .byte $80,$95,$9E,$A9,$30,$95,$9F,$60,$38,$B5,$9D,$E5,$9C,$90,$46,$95
       .byte $9D,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$62,$7A,$FC,$FE,$7F,$7F,$3F,$1E,$06,$1E,$3F,$7F,$FE,$FE
       .byte $FC,$78,$27,$2F,$2F,$3E,$7C,$FC,$30,$00,$47,$4F,$5F,$7E,$7E,$FC
       .byte $F8,$38,$08,$3C,$7E,$FF,$FF,$FF,$7E,$3C,$D0,$F0,$F8,$7E,$7E,$3F
       .byte $1F,$1C,$E4,$F4,$34,$3C,$1E,$0F,$06,$00,$20,$38,$7C,$FE,$FF,$7E
       .byte $3C,$18,$30,$20,$26,$3F,$3E,$7C,$F0,$00,$20,$28,$3F,$7E,$FC,$F8
       .byte $30,$00,$04,$14,$FC,$7E,$3F,$1F,$0C,$00,$04,$04,$64,$FC,$7C,$3E
       .byte $0F,$00,$20,$20,$23,$26,$3E,$7C,$E0,$80,$06,$06,$C2,$62,$7E,$3E
       .byte $07,$01,$08,$08,$08,$08,$3C,$FF,$00,$00
LFD88: .byte $13,$00,$13,$13,$11,$11,$0F,$0F,$0E,$0F,$11,$13,$0F,$0C,$0B,$0C
       .byte $00,$0B,$0B,$0B,$00,$0B,$00,$0B,$13,$0F,$0C,$0C,$13,$0F,$0C,$0C
       .byte $11,$00,$11,$11,$13,$11,$0F,$0F,$0E,$0F,$11,$13,$0F,$0C,$0B,$0C
       .byte $00,$0B,$0B,$0B,$00,$0B,$00,$0B,$13,$0F,$0C,$0C,$13,$0F,$0C,$0C
       .byte $13,$00,$13,$13,$1A,$1A,$11,$11,$13,$13,$0F,$0F,$0C,$0C,$0B,$0B
       .byte $00,$1A,$13,$13,$0F,$0F,$11,$11,$0F,$0F,$0C,$0C,$09,$09,$0C,$0C
       .byte $FF,$FF,$F9,$75,$90,$17,$E8,$E8,$E8,$E0,$1E,$90,$EF,$A5,$CB,$C9
       .byte $BB,$F0,$05,$C9,$CF,$F0,$01,$FF,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$08,$0C,$04,$04,$06
       .byte $08,$18,$10,$10,$10,$30,$20,$20,$08,$08,$08,$08,$08,$10,$10,$10
       .byte $08,$18,$10,$30,$20,$20,$60,$40,$08,$08,$08,$08,$08,$08,$08,$08
       .byte $08,$08,$08,$18,$10,$10,$10,$10,$08,$08,$08,$08,$0C,$0C,$04,$04
       .byte $08,$08,$18,$10,$10,$30,$20,$20,$08,$08,$08,$08,$10,$10,$10,$10
       .byte $08,$08,$08,$08,$08,$10,$30,$20,$08,$08,$08,$08,$08,$08,$0C,$04
       .byte $08,$08,$08,$08,$0C,$04,$04,$04,$08,$08,$08,$08,$18,$10,$10,$30
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$1C,$18,$18,$18,$18,$18,$98,$FC
       .byte $FC,$38,$38,$79,$3B,$7E,$2C,$10,$38,$BC,$78,$18,$6C,$48,$48,$48
       .byte $48,$48,$48,$7C,$6C,$34,$34,$6C,$5C,$78,$68,$10,$38,$BC,$78,$18
       .byte $03,$83,$C2,$42,$46,$64,$3C,$3C,$78,$78,$0C,$74,$D4,$FC,$6E,$13
       .byte $39,$BD,$F8,$18,$1C,$18,$18,$18,$18,$98,$FC,$FC,$3E,$7E,$FC,$BC
       .byte $F8,$6C,$16,$3A,$BE,$7B,$19,$03,$EE,$CC,$CC,$CC,$EC,$7C,$3C,$26
       .byte $1B,$37,$6E,$7C,$7C,$2E,$13,$39,$BD,$79,$1B,$06,$FF,$09,$0C,$0C
       .byte $FF,$FF,$F9,$75,$90,$17,$E8,$E8,$E8,$E0,$1E,$90,$EF,$A5,$CB,$C9
       .byte $BB,$F0,$05,$C9,$CF,$F0,$01,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3C,$66,$66,$66,$66,$66,$3C,$00,$3C,$18,$18,$18,$18,$38,$18
       .byte $00,$7E,$60,$60,$3C,$06,$46,$3C,$00,$3C,$46,$06,$1C,$06,$46,$3C
       .byte $00,$0C,$0C,$7E,$6C,$3C,$1C,$0C,$00,$7C,$06,$06,$7C,$60,$60,$7E
       .byte $00,$3C,$66,$66,$7C,$60,$62,$3C,$00,$18,$18,$18,$0C,$06,$66,$7E
       .byte $00,$3C,$66,$66,$3C,$66,$66,$3C,$00,$3C,$46,$06,$3E,$66,$66,$3C
LFF58: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LFF61: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LFF6A: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LFF73: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77,$FF,$FF,$FF,$FF,$20,$F0,$78
       .byte $85,$02,$85,$2A,$A6,$D1,$CA,$CA,$CA,$C6,$D0,$C6,$D0,$C6,$D0,$CA
       .byte $F0,$3A,$85,$02,$85,$2B,$E0,$15,$B0,$1E,$A9,$00,$85,$1D,$85,$1E
       .byte $85,$04,$8A,$A8,$B1,$CB,$85,$1B,$A9,$88,$E0,$10,$B0,$08,$A9,$BC
       .byte $E0,$08,$B0,$02,$A9,$88,$85,$06,$A5,$CF,$C6,$CF,$F0,$A4,$E4,$D2
       .byte $D0,$08,$A9,$08,$85,$CF,$A9,$FF,$85,$1F,$D0,$C3,$86,$1F,$86,$1B
       .byte $86,$1D,$86,$1E,$A9,$28,$85,$08,$85,$02,$A9,$10,$8D,$96,$02,$A9
       .byte $00,$A0,$04,$A6,$86,$F0,$16,$E0,$08,$90,$04,$A2,$08,$86,$86,$38
       .byte $6A,$6A,$CA,$F0,$08,$88,$D0,$F7,$A8,$00,$F0,$00,$F0
