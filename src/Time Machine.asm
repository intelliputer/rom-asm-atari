; Disassembly of roms/Time Machine.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Time Machine.bin
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
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXM1P   =  $31
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       TAX            
LF005: STA    VSYNC,X 
       INX            
       BNE    LF005   
       DEX            
       TXS            
       LDA    INTIM   
       STA    $85     
       JSR    LF22C   
       JSR    LF3D1   
       JSR    LF268   
       JSR    LFB49   
LF01D: LDA    INTIM   
       BNE    LF01D   
       LDA    #$01    
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$D7    
       STA    TIM64T  
       JSR    LFB9A   
       LDA    #$A4    
       STA    $E7     
       LDA    $DF     
       STA    COLUBK  
       LDA    $E1     
       STA    COLUP0  
       LDA    $E2     
       STA    NUSIZ1  
       LDA    #$07    
       LDX    #$00    
       JSR    LFE20   
       LDA    $D8     
       STA    REFP0   
       LDX    #$1C    
       TXS            
       LDX    #$09    
LF050: LDY    $98,X   
       LDA    LFC00,Y 
       LDY    #$00    
       STA    WSYNC   
       STY    GRP1    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF060: DEY            
       BNE    LF060   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $8A,X   
       STA    $CB     
       STA    $CD     
       CPX    #$09    
       BNE    LF078   
       LDY    $D5     
       JMP    LF0A2   
LF078: CPX    #$00    
       BNE    LF087   
       LDA    #$0E    
       SEC            
       SBC    $D5     
       BMI    LF0C9   
       TAY            
       JMP    LF0A2   
LF087: LDY    #$0F    
       CPX    #$04    
       BNE    LF097   
       LDA    $D7     
       SEC            
       SBC    #$12    
       STA    $C9     
       JMP    LF0A6   
LF097: CPX    #$05    
       BNE    LF0A2   
       LDA    $D7     
       STA    $C9     
       JMP    LF0A6   
LF0A2: LDA    #$9A    
       STA    $C9     
LF0A6: DEC    $E7     
       PLA            
       PLA            
       LDA    ($CB),Y 
       STA    WSYNC   
       STA    GRP1    
       LDA    ($CD),Y 
       STA    COLUP1  
       LDA    $E7     
       EOR    $D3     
       AND    #$FE    
       PHP            
       LDA    $E7     
       EOR    $D2     
       AND    #$FE    
       PHP            
       LDA    ($C9),Y 
       STA    GRP0    
       DEY            
       BPL    LF0A6   
LF0C9: DEX            
       BMI    LF0D3   
       DEC    $E7     
       DEC    $E7     
       JMP    LF050   
LF0D3: TXS            
       INX            
       STX    GRP1    
       STX    REFP0   
       STX    WSYNC   
       STX    COLUBK  
LF0DD: LDA    INTIM   
       BNE    LF0DD   
       LDY    #$58    
       STY    TIM64T  
       LDA    #$06    
       LDX    #$96    
       STA    WSYNC   
       STA    HMP0    
       STX    HMP1    
       AND    #$0F    
       TAY            
LF0F4: DEY            
       BNE    LF0F4   
       STA    RESP0   
       STA    RESP1   
       LDA    $DB     
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDY    #$F8    
       STY    PF2     
       LDY    $D1     
       LDA    LFC00,Y 
       STA    WSYNC   
       STA    HMBL    
       AND    #$0F    
       TAY            
LF113: DEY            
       BNE    LF113   
       STA    RESBL   
       LDA    #$15    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C8    
       STA    PF2     
       LDA    #$0B    
       STA    $E7     
       LDX    #$1F    
       TXS            
       LDX    #$10    
       LDA    #$08    
       STA    WSYNC   
       STA    PF2     
LF13B: TXA            
       EOR    $D4     
       PHP            
       LDA    $A5,X   
       STA    GRP0    
       LDA    $B6,X   
       STA    GRP1    
       PLA            
       DEX            
       CPX    #$04    
       BCC    LF15D   
       STA    WSYNC   
       CPX    #$0C    
       BCS    LF13B   
       CPX    $E7     
       BNE    LF13B   
       STA    WSYNC   
       DEC    $E7     
       BNE    LF13B   
LF15D: INX            
LF15E: LDY    $83     
       LDA    LFDFC,Y 
       STA    WSYNC   
       STA    PF1     
       LDA    #$2A    
       STA    COLUPF  
       TXA            
       EOR    $D4     
       PHP            
       LDA    $A5,X   
       STA    GRP0    
       LDA    $B6,X   
       STA    GRP1    
       LDA    $DB     
       STA    COLUPF  
       LDY    $DA     
       LDA    LFFB0,Y 
       STA    PF1     
       PLA            
       LDA    LFE2F,Y 
       STA    COLUPF  
       DEX            
       BPL    LF15E   
       TXS            
       INX            
       STX    GRP0    
       STX    GRP1    
       STX    ENABL   
       STX    PF1     
       LDA    #$C8    
       STA    PF2     
       LDA    $DB     
       STA    COLUPF  
       STA    WSYNC   
       LDA    #$F8    
       STA    PF2     
       STA    WSYNC   
       STX    PF2     
       LDA    #$F1    
       PHA            
       LDA    #$DB    
       PHA            
       INC    $C7     
       BIT    $84     
       BVC    LF1BC   
       LDA    $C7     
       AND    #$03    
       BNE    LF212   
       JMP    LF30B   
LF1BC: JSR    LF28F   
       LDA    $84     
       BEQ    LF1D6   
       JSR    LFEF3   
       AND    #$03    
       TAY            
       LDA    LFFB9,Y 
       STA    $86     
       LDA    $85     
       AND    #$80    
       ORA    $87     
       STA    $87     
LF1D6: JSR    LF6E3   
       JMP    LF2EB   
LF1DC: .byte $AD,$84,$02,$D0,$FB,$A9,$82,$85,$02,$85,$01,$85,$02,$85,$02,$85
       .byte $02,$85,$00,$85,$02,$85,$02,$A9,$00,$85,$02,$85,$00,$A9,$3C,$8D
       .byte $96,$02,$A9,$F0,$48,$A9,$13,$48,$AD,$82,$02,$29,$01,$D0,$08,$20
       .byte $2C,$F2,$A9,$00,$85,$84
LF212: RTS            

LF213: .byte $24,$84,$70,$09,$20,$4E,$F3,$20,$95,$F3,$4C,$D0,$FE,$A5,$84,$29
       .byte $0F,$F0,$03,$4C,$0F,$F8,$4C,$F4,$F7
LF22C: LDA    #$00    
       STA    $80     
       STA    $81     
       STA    $82     
LF234: LDA    #$03    
       STA    $83     
       LDA    #$80    
       STA    $84     
LF23C: LDX    #$1F    
LF23E: LDA    LFFD9,X 
       STA    $C7,X   
       DEX            
       BPL    LF23E   
LF246: LDX    #$21    
       LDA    #$00    
LF24A: STA    $A5,X   
       DEX            
       BPL    LF24A   
       LDX    #$0D    
       LDY    #$20    
       LDA    #$00    
LF255: STY    $89,X   
       STA    $97,X   
       ADC    #$0A    
       DEX            
       BPL    LF255   
LF25E: LDA    $8A     
       CLC            
       ADC    $D5     
       ADC    #$01    
       STA    $8A     
       RTS            

LF268: LDY    $CF     
       LDA    LFC00,Y 
       STA    WSYNC   
       NOP            
       NOP            
       STA    HMM0    
       AND    #$0F    
       TAY            
LF276: DEY            
       BNE    LF276   
       STA    RESM0   
       LDY    $D0     
       LDA    LFC00,Y 
       STA    WSYNC   
       NOP            
       NOP            
       STA    HMM1    
       AND    #$0F    
       TAY            
LF289: DEY            
       BNE    LF289   
       STA    RESM1   
       RTS            

LF28F: LDA    SWCHA   
       EOR    #$F0    
       AND    #$F0    
       STA    $86     
       LDA    #$00    
       BIT    INPT4   
       BMI    LF2A0   
       ORA    #$80    
LF2A0: BIT    CXM1P   
       BPL    LF2A6   
       ORA    #$40    
LF2A6: BIT    CXPPMM  
       BPL    LF2BC   
       STA    $87     
       LDA    $D8     
       AND    #$C0    
       BEQ    LF2B8   
       LDA    $87     
       ORA    #$20    
       BNE    LF2BC   
LF2B8: LDA    $87     
       ORA    #$10    
LF2BC: BIT    CXM0P   
       BPL    LF2E4   
       STA    $87     
       LDA    #$A3    
       SEC            
       SBC    $D5     
       SBC    #$02    
       CMP    $D2     
       BCS    LF2D3   
       LDA    $87     
       ORA    #$09    
       BNE    LF2E6   
LF2D3: LDX    #$08    
LF2D5: SEC            
       SBC    #$12    
       CMP    $D2     
       BCC    LF2DF   
       DEX            
       BPL    LF2D5   
LF2DF: TXA            
       ORA    $87     
       BNE    LF2E6   
LF2E4: ORA    #$0F    
LF2E6: STA    $87     
       STA    CXCLR   
       RTS            

LF2EB: BIT    $87     
       BMI    LF322   
       LDA    $86     
       ASL            
       BCC    LF2F7   
       JMP    LF4F4   
LF2F7: ASL            
       BCC    LF2FD   
       JMP    LF4B1   
LF2FD: ASL            
       BCC    LF303   
       JMP    LF452   
LF303: BPL    LF308   
       JMP    LF40F   
LF308: JSR    LF545   
LF30B: LDA    $D8     
       ASL            
       BCC    LF313   
       JMP    LF6A7   
LF313: ASL            
       BCC    LF319   
       JMP    LF669   
LF319: ASL            
       BCC    LF31F   
       JMP    LF61D   
LF31F: JMP    LF5D6   
LF322: JSR    LF308   
       LDA    $86     
       BEQ    LF34D   
       LDA    $D2     
       CMP    #$54    
       BNE    LF34D   
       LDA    $CF     
       CMP    #$4D    
       BNE    LF34D   
       LDA    $E6     
       CMP    #$10    
       BCC    LF340   
       LDA    #$19    
       JSR    LF408   
LF340: LDA    $86     
       ASL            
       BCS    LF38A   
       ASL            
       BCS    LF37C   
       ASL            
       BCS    LF371   
       BCC    LF363   
LF34D: RTS            

LF34E: .byte $A5,$D2,$C9,$56,$B0,$0F,$C9,$53,$90,$19,$A5,$CF,$C9,$50,$B0,$2C
       .byte $C9,$4B,$90,$1A,$60
LF363: LDA    $D2     
       CLC            
       ADC    #$03    
       CMP    #$A2    
       BCC    LF36E   
LF36C: LDA    #$54    
LF36E: STA    $D2     
       RTS            

LF371: LDA    $D2     
       SEC            
       SBC    #$03    
       CMP    #$06    
       BCS    LF36E   
       BCC    LF36C   
LF37C: LDA    $CF     
       SEC            
       SBC    #$03    
       CMP    #$03    
       BCS    LF387   
LF385: LDA    #$4D    
LF387: STA    $CF     
       RTS            

LF38A: LDA    $CF     
       CLC            
       ADC    #$03    
       CMP    #$9A    
       BCC    LF387   
       BCS    LF385   
       LDA    $D3     
       CMP    #$FF    
       BEQ    LF3D0   
       BIT    $88     
       BVC    LF3B6   
       BMI    LF3AD   
       CLC            
       ADC    #$03    
       CMP    #$A2    
       BCC    LF3AA   
LF3A8: LDA    #$FF    
LF3AA: STA    $D3     
       RTS            

LF3AD: SEC            
       SBC    #$03    
       CMP    #$06    
       BCS    LF3AA   
       BCC    LF3A8   
LF3B6: BMI    LF3C3   
       LDA    $D0     
       CLC            
       ADC    #$02    
       CMP    #$90    
       BCC    LF3CE   
       BCS    LF3A8   
LF3C3: LDA    $D0     
       SEC            
       SBC    #$02    
       CMP    #$0D    
       BCS    LF3CE   
       BCC    LF3A8   
LF3CE: STA    $D0     
LF3D0: RTS            

LF3D1: LDX    #$01    
LF3D3: LDA    $E3,X   
       BEQ    LF3DC   
       DEC    $E3,X   
       JMP    LF3FD   
LF3DC: LDY    $E5,X   
       LDA    LFF00,Y 
       BEQ    LF3E5   
       INC    $E5,X   
LF3E5: STA    AUDV0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0,X 
       LDA    LFF2B,Y 
       STA    AUDF0,X 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFFB0,Y 
       STA    $E3,X   
LF3FD: DEX            
       BPL    LF3D3   
       RTS            

LF401: STA    $E5     
       LDA    #$00    
       STA    $E3     
       RTS            

LF408: STA    $E6     
       LDA    #$00    
       STA    $E4     
       RTS            

LF40F: LDA    $D8     
       TAY            
       AND    #$10    
       BEQ    LF41C   
       JSR    LF53D   
       JMP    LF5D6   
LF41C: LDA    $D9     
       CMP    #$01    
       BEQ    LF42D   
       TYA            
       AND    #$20    
       BEQ    LF4A4   
       JSR    LF579   
       JMP    LF61D   
LF42D: TYA            
       AND    #$20    
       BEQ    LF43B   
       LDA    $D5     
       CMP    #$0F    
       BNE    LF4A1   
       JMP    LF58B   
LF43B: TYA            
       AND    #$40    
       BEQ    LF449   
       LDA    $D6     
       CMP    #$28    
       BNE    LF4AB   
       JMP    LF58B   
LF449: LDA    $D6     
       CMP    #$28    
       BNE    LF4AE   
       JMP    LF58B   
LF452: LDA    $D8     
       TAY            
       AND    #$20    
       BEQ    LF45F   
       JSR    LF53D   
       JMP    LF61D   
LF45F: LDA    $D9     
       CMP    #$01    
       BEQ    LF470   
       TYA            
       AND    #$10    
       BEQ    LF4A4   
       JSR    LF579   
       JMP    LF5D6   
LF470: TYA            
       AND    #$10    
       BEQ    LF47E   
       LDA    $D5     
       CMP    #$0F    
       BNE    LF49E   
       JMP    LF594   
LF47E: TYA            
       AND    #$40    
       BEQ    LF48C   
       LDA    $D6     
       CMP    #$28    
       BNE    LF4AB   
       JMP    LF594   
LF48C: LDA    $D6     
       CMP    #$28    
       BNE    LF4AE   
       JMP    LF594   
LF495: JSR    LF545   
       LDA    $D8     
       AND    #$10    
       BEQ    LF4A1   
LF49E: JMP    LF5D6   
LF4A1: JMP    LF61D   
LF4A4: JSR    LF545   
       BIT    $D8     
       BMI    LF4AE   
LF4AB: JMP    LF669   
LF4AE: JMP    LF6A7   
LF4B1: LDA    $D8     
       TAY            
       AND    #$44    
       BEQ    LF4BE   
       JSR    LF53D   
       JMP    LF669   
LF4BE: LDA    $D9     
       CMP    #$01    
       BEQ    LF4CF   
       TYA            
       AND    #$80    
       BEQ    LF495   
       JSR    LF579   
       JMP    LF6A7   
LF4CF: TYA            
       AND    #$80    
       BEQ    LF4DD   
       LDA    $D6     
       CMP    #$28    
       BNE    LF4AE   
       JMP    LF59D   
LF4DD: TYA            
       AND    #$10    
       BEQ    LF4EB   
       LDA    $D5     
       CMP    #$0F    
       BNE    LF49E   
       JMP    LF59D   
LF4EB: LDA    $D5     
       CMP    #$0F    
       BNE    LF4A1   
       JMP    LF59D   
LF4F4: LDA    $D8     
       TAY            
       AND    #$88    
       BEQ    LF501   
       JSR    LF53D   
       JMP    LF6A7   
LF501: LDA    $D9     
       CMP    #$01    
       BEQ    LF512   
       TYA            
       AND    #$40    
       BEQ    LF495   
       JSR    LF579   
       JMP    LF669   
LF512: TYA            
       AND    #$40    
       BEQ    LF520   
       LDA    $D6     
       CMP    #$28    
       BNE    LF4AB   
       JMP    LF5A6   
LF520: TYA            
       AND    #$10    
       BEQ    LF52E   
       LDA    $D5     
       CMP    #$0F    
       BNE    LF537   
       JMP    LF5A6   
LF52E: LDA    $D5     
       CMP    #$0F    
       BNE    LF53A   
       JMP    LF5A6   
LF537: JMP    LF5D6   
LF53A: JMP    LF61D   
LF53D: LDA    $C8     
       CLC            
       ADC    #$04    
       TAX            
       BNE    LF54E   
LF545: LDA    $C7     
       AND    #$03    
       BNE    LF55E   
       LDX    $C8     
       INX            
LF54E: CPX    #$F0    
       BCC    LF55C   
       LDX    #$00    
       LDY    $D9     
       CPY    #$04    
       BEQ    LF55C   
       INC    $D9     
LF55C: STX    $C8     
LF55E: LDY    $D9     
       LDA    $E5     
       CMP    #$06    
       BCC    LF56C   
       LDA    LFE0A,Y 
       JSR    LF401   
LF56C: TYA            
       ASL            
       STA    $DA     
       LDA    $C8     
       CMP    #$78    
       BCS    LF578   
       DEC    $DA     
LF578: RTS            

LF579: LDA    $C8     
       SEC            
       SBC    #$08    
       CMP    #$08    
       BCS    LF586   
       LDA    #$EE    
       DEC    $D9     
LF586: STA    $C8     
       JMP    LF55E   
LF58B: JSR    LF5B8   
       LDA    #$10    
       LDX    #$AE    
       BNE    LF5AF   
LF594: JSR    LF5B8   
       LDA    #$20    
       LDX    #$CF    
       BNE    LF5AF   
LF59D: JSR    LF5B8   
       LDA    #$44    
       LDX    #$F0    
       BNE    LF5AF   
LF5A6: JSR    LF5B8   
       LDA    #$88    
       LDX    #$F0    
       BNE    LF5AF   
LF5AF: STA    $D8     
       STX    $D7     
       LDA    #$01    
       STA    $C8     
       RTS            

LF5B8: LDA    $C7     
       AND    #$03    
       TAY            
       LDA    $E0     
       BNE    LF5C5   
       CPY    #$00    
       BNE    LF5CE   
LF5C5: ORA    LFFB9,Y 
       STA    $E0     
       CMP    #$F0    
       BEQ    LF5D1   
LF5CE: PLA            
       PLA            
       RTS            

LF5D1: LDA    #$00    
       STA    $E0     
       RTS            

LF5D6: LDA    $D5     
       PHA            
       CLC            
       ADC    $D9     
       CMP    #$12    
       BPL    LF5F3   
       STA    $D5     
       LDA    $8A     
       CLC            
       ADC    $D9     
       STA    $8A     
       LDA    $D7     
       SEC            
       SBC    $D9     
       STA    $D7     
       JMP    LF613   
LF5F3: SEC            
       SBC    #$12    
       STA    $D5     
       JSR    LFE50   
       JSR    LFDE0   
       JSR    LFE70   
       JSR    LFDE0   
       JSR    LF872   
       JSR    LF25E   
       LDA    $D7     
       ADC    #$12    
       SEC            
       SBC    $D9     
       STA    $D7     
LF613: PLA            
       CMP    $D5     
       BCC    LF61C   
       LDA    #$10    
       STA    $DC     
LF61C: RTS            

LF61D: LDA    $D5     
       PHA            
       SEC            
       SBC    $D9     
       BMI    LF638   
       STA    $D5     
       LDA    $8A     
       SEC            
       SBC    $D9     
       STA    $8A     
       LDA    $D7     
       CLC            
       ADC    $D9     
       STA    $D7     
       JMP    LF65F   
LF638: CLC            
       ADC    #$12    
       STA    $D5     
       LDA    $8A     
       AND    #$F0    
       STA    $8A     
       JSR    LFE50   
       JSR    LFDEE   
       JSR    LFE70   
       JSR    LFDEE   
       JSR    LF886   
       JSR    LF25E   
       LDA    $D7     
       SEC            
       SBC    #$12    
       CLC            
       ADC    $D9     
       STA    $D7     
LF65F: PLA            
       CMP    $D5     
       BCS    LF668   
       LDA    #$20    
       STA    $DC     
LF668: RTS            

LF669: LDX    #$09    
LF66B: LDA    $98,X   
       CLC            
       ADC    $D9     
       STA    $98,X   
       CMP    #$98    
       BCC    LF684   
       JSR    LF89A   
       LDA    #$20    
       JSR    LF868   
       STA    $8A,X   
       LDA    #$00    
       STA    $98,X   
LF684: DEX            
       BPL    LF66B   
       LDA    $D6     
       CLC            
       ADC    $D9     
       STA    $D6     
       CMP    #$3C    
       BCC    LF6A6   
       SBC    #$14    
       STA    $D6     
       LDA    #$40    
       STA    $DC     
       LDX    $A3     
       BMI    LF6A6   
       LDA    $95     
       STA    $8A,X   
       LDA    #$00    
       STA    $98,X   
LF6A6: RTS            

LF6A7: LDX    #$09    
LF6A9: LDA    $98,X   
       SEC            
       SBC    $D9     
       STA    $98,X   
       BCS    LF6C0   
       JSR    LF89A   
       LDA    #$20    
       JSR    LF868   
       STA    $8A,X   
       LDA    #$97    
       STA    $98,X   
LF6C0: DEX            
       BPL    LF6A9   
       LDA    $D6     
       SEC            
       SBC    $D9     
       STA    $D6     
       CMP    #$15    
       BCS    LF6E2   
       ADC    #$14    
       STA    $D6     
       LDA    #$80    
       STA    $DC     
       LDX    $A4     
       BMI    LF6E2   
       LDA    $96     
       STA    $8A,X   
       LDA    #$97    
       STA    $98,X   
LF6E2: RTS            

LF6E3: LDA    $87     
       TAY            
       AND    #$40    
       BEQ    LF6ED   
       JMP    LF7D8   
LF6ED: TYA            
       AND    #$20    
       BEQ    LF6FB   
       LDA    $8F     
       CMP    #$5F    
       BCS    LF70A   
       JMP    LF7D8   
LF6FB: TYA            
       AND    #$10    
       BEQ    LF70A   
       LDX    #$04    
       JSR    LF715   
       LDX    #$05    
       JSR    LF715   
LF70A: TYA            
       AND    #$0F    
       CMP    #$0F    
       BEQ    LF72A   
       TAX            
       JMP    LF72B   
LF715: LDA    $98,X   
       CMP    #$46    
       BCC    LF72A   
       CMP    #$54    
       BCS    LF72A   
       LDA    $8A,X   
       CMP    #$5F    
       BCS    LF72A   
       PLA            
       PLA            
       JMP    LF7D8   
LF72A: RTS            

LF72B: LDY    #$01    
       LDA    $8A,X   
       AND    #$F0    
LF731: CMP    LFFC1,Y 
       BEQ    LF73B   
       DEY            
       BPL    LF731   
       BMI    LF72A   
LF73B: LDA    #$00    
       JSR    LF401   
       LDA    #$4D    
       STA    $CF     
       LDA    #$54    
       STA    $D2     
       BIT    $84     
       BMI    LF76D   
       SED            
       CLC            
       LDA    $82     
       ADC    LFE9D,Y 
       STA    $82     
       LDA    $81     
       ADC    LFEFE,Y 
       STA    $81     
       BCC    LF76C   
       LDA    $80     
       ADC    #$00    
       STA    $80     
       LDA    $83     
       CMP    #$03    
       BEQ    LF76C   
       INC    $83     
LF76C: CLD            
LF76D: LDY    #$00    
LF76F: LDA.wy $00DD,Y 
       AND    #$F0    
       BNE    LF7B7   
LF776: TXA            
       ORA    #$B0    
       STA.wy $00DD,Y 
       LDA    #$60    
       JSR    LF868   
       STA    $8A,X   
       LDA    $DC     
       CMP    #$10    
       BEQ    LF796   
       CMP    #$20    
       BEQ    LF798   
       CPX    #$04    
       BEQ    LF7A7   
       CPX    #$05    
       BEQ    LF7A7   
       DEX            
LF796: INX            
       INX            
LF798: INX            
       INX            
       LDA    $A5,X   
       AND    #$F0    
       STA    $A5,X   
       LDA    $B6,X   
       AND    #$0F    
       STA    $B6,X   
       RTS            

LF7A7: INX            
       INX            
       INX            
       LDA    $A5,X   
       AND    #$E0    
       STA    $A5,X   
       LDA    $B6,X   
       AND    #$07    
       STA    $B6,X   
       RTS            

LF7B7: INY            
       CPY    #$02    
       BCC    LF76F   
       CMP    $DD     
       BCS    LF7D5   
LF7C0: DEY            
       LDA.wy $00DD,Y 
       STX    $E7     
       AND    #$0F    
       TAX            
       LDA    #$20    
       JSR    LF868   
       STA    $8A,X   
       LDX    $E7     
       JMP    LF776   
LF7D5: DEY            
       BNE    LF7C0   
LF7D8: PLA            
       PLA            
       LDA    #$FF    
       STA    $D2     
       STA    $D3     
       JSR    LF246   
       LDA    #$0A    
       JSR    LF408   
       LDA    #$78    
       STA    $88     
       LDA    $84     
       AND    #$F0    
       ORA    #$40    
       STA    $84     
       DEC    $88     
       BEQ    LF7FD   
       LDA    $C7     
       STA    $DF     
       RTS            

LF7FD: BIT    $84     
       BMI    LF80C   
       DEC    $83     
       BMI    LF80C   
       LDA    #$00    
       STA    $84     
       JMP    LF23C   
LF80C: JMP    LF234   
LF80F: .byte $A5,$DC,$F0,$06,$A9,$20,$85,$89,$85,$94,$C6,$88,$A5,$88,$29,$3F
       .byte $D0,$0F,$E6,$DF,$A5,$E1,$29,$3F,$C5,$DF,$90,$AF,$38,$E9,$02,$85
       .byte $E1,$60,$A0,$01,$B6,$DD,$8A,$29,$0F,$85,$E7,$8A,$29,$F0,$F0,$25
       .byte $38,$E9,$10,$AA,$05,$E7,$99,$DD,$00,$8A,$F0,$10,$C9,$70,$D0,$04
       .byte $A9,$80,$D0,$0A,$C9,$30,$D0,$0D,$A9,$A0,$D0,$02,$A9,$20,$A6,$E7
       .byte $20,$68,$F8,$95,$8A,$88,$10,$CC,$60
LF868: CPX    #$00    
       BNE    LF871   
       CLC            
       ADC    $D5     
       ADC    #$01    
LF871: RTS            

LF872: LDX    #$01    
LF874: DEC    $DD,X   
       LDA    $DD,X   
       AND    #$0F    
       CMP    #$0F    
       BNE    LF882   
       LDA    #$00    
       STA    $DD,X   
LF882: DEX            
       BPL    LF874   
       RTS            

LF886: LDX    #$01    
LF888: INC    $DD,X   
       LDA    $DD,X   
       AND    #$0F    
       CMP    #$0A    
       BNE    LF896   
       LDA    #$00    
       STA    $DD,X   
LF896: DEX            
       BPL    LF888   
       RTS            

LF89A: LDA    $8A,X   
       CMP    #$5F    
       BCC    LF8B5   
       LDY    #$01    
LF8A2: LDA.wy $00DD,Y 
       AND    #$0F    
       STA    $E7     
       CPX    $E7     
       BNE    LF8B2   
       LDA    #$00    
       STA.wy $00DD,Y 
LF8B2: DEY            
       BPL    LF8A2   
LF8B5: RTS            

LF8B6: .byte $A5,$D3,$C9,$FF,$D0,$5C,$A0,$03,$A5,$D8,$29,$C0,$F0,$17,$BE,$3C
       .byte $FE,$B5,$98,$C9,$62,$B0,$0A,$C9,$34,$90,$06,$B5,$8A,$C9,$40,$F0
       .byte $11,$88,$10,$EA,$60,$BE,$38,$FE,$B5,$8A,$C9,$40,$F0,$19,$88,$10
       .byte $F4,$60,$B5,$98,$85,$D0,$BD,$00,$FE,$85,$D3,$E0,$05,$B0,$04,$A9
       .byte $40,$D0,$1D,$A9,$C0,$D0,$19,$B5,$98,$85,$D0,$BD,$00,$FE,$38,$E5
       .byte $D5,$85,$D3,$B4,$98,$C0,$4D,$B0,$05,$A9,$00,$F0,$03,$60,$A9,$80
       .byte $85,$88,$60,$A5,$D1,$C9,$48,$D0,$1C,$A5,$85,$D0,$F5,$A5,$C8,$29
       .byte $01,$A8,$B9,$5D,$FE,$85,$D1,$B9,$7D,$FE,$85,$D4,$A9,$64,$85,$DB
       .byte $A9,$07,$20,$08,$F4,$A5,$C7,$29,$1C,$D0,$D7,$A5,$D9,$A4,$D1,$C0
       .byte $59,$90,$03,$18,$69,$04,$A8,$A5,$D8,$29,$50,$F0,$11,$A5,$D1,$18
       .byte $79,$C4,$FF,$85,$D1,$A5,$D4,$38,$F9,$C4,$FF,$4C,$72,$F9,$A5,$D1
       .byte $38,$F9,$C8,$FF,$85,$D1,$A5,$D4,$18,$79,$C8,$FF,$85,$D4,$A5,$E6
       .byte $C9,$09,$90,$05,$A9,$07,$20,$08,$F4,$A5,$D1,$C9,$6A,$B0,$6A,$C9
       .byte $49,$90,$66,$C9,$61,$B0,$58,$C9,$52,$90,$54,$A5,$D4,$C9,$0D,$B0
       .byte $4E,$C9,$04,$90,$4A,$A5,$84,$09,$41,$85,$84,$A9,$01,$85,$D9,$A9
       .byte $00,$85,$88,$85,$DC,$85,$D2,$85,$D3,$A9,$07,$85,$E2,$A9,$22,$20
       .byte $08,$F4,$20,$46,$F2,$A5,$D8,$29,$0F,$A6,$D4,$E0,$08,$B0,$06,$09
       .byte $20,$85,$D8,$D0,$04,$09,$10,$85,$D8,$A9,$C0,$85,$94,$85,$89,$A5
       .byte $D1,$38,$E9,$52,$4A,$4A,$AA,$BD,$D5,$FF,$85,$A2,$85,$97,$60,$A5
       .byte $D4,$C9,$01,$30,$04,$C9,$11,$90,$F5,$A9,$48,$85,$D1,$A9,$54,$85
       .byte $DB,$A9,$10,$4C,$08,$F4,$A2,$0D,$20,$29,$FA,$85,$A2,$20,$56,$FA
       .byte $85,$94,$A2,$03,$20,$29,$FA,$85,$97,$20,$56,$FA,$85,$89,$20,$65
       .byte $FA,$85,$A3,$20,$56,$FA,$85,$95,$20,$75,$FA,$85,$A4,$20,$56,$FA
       .byte $85,$96,$60,$B5,$A5,$29,$0F,$D0,$09,$B5,$B6,$29,$F0,$D0,$0D,$A9
       .byte $00,$60,$A0,$04,$D9,$B9,$FF,$F0,$08,$C8,$D0,$F8,$A0,$00,$4C,$3A
       .byte $FA,$20,$F3,$FE,$29,$0F,$79,$B8,$FE,$C9,$98,$90,$02,$A9,$97,$60
       .byte $F0,$0A,$20,$F3,$FE,$29,$03,$A8,$B9,$C1,$FF,$60,$A9,$20,$60,$A2
       .byte $0C,$B5,$A5,$29,$10,$D0,$17,$CA,$E0,$03,$B0,$F5,$A9,$80,$60,$A2
       .byte $0C,$B5,$B6,$29,$08,$D0,$07,$CA,$E0,$03,$B0,$F5,$90,$EE,$8A,$38
       .byte $E9,$03,$60,$A0,$00,$A5,$DC,$84,$DC,$0A,$B0,$09,$0A,$B0,$0C,$0A
       .byte $B0,$0F,$30,$16,$60,$20,$E9,$FE,$4C,$32,$FB,$20,$DF,$FE,$4C,$21
       .byte $FB,$20,$90,$FE,$20,$EE,$FD,$4C,$E0,$FA,$20,$90,$FE,$20,$E0,$FD
       .byte $4C,$B9,$FA,$20,$F3,$FE,$29,$0F,$C9,$08,$B0,$0E,$A8,$B9,$B9,$FF
       .byte $20,$07,$FB,$85,$B5,$A9,$00,$85,$C6,$60,$E9,$08,$A8,$B9,$B9,$FF
       .byte $20,$14,$FB,$85,$C6,$A9,$00,$85,$B5,$60,$20,$F3,$FE,$29,$0F,$C9
       .byte $08,$B0,$0E,$A8,$B9,$B9,$FF,$20,$07,$FB,$85,$A5,$A9,$00,$85,$B6
       .byte $60,$E9,$08,$A8,$B9,$B9,$FF,$20,$14,$FB,$85,$B6,$A9,$00,$85,$A5
       .byte $60,$A2,$0F,$D5,$A5,$F0,$04,$CA,$10,$F9,$60,$A9,$00,$60,$A2,$0F
       .byte $D5,$B6,$F0,$04,$CA,$10,$F9,$60,$A9,$00,$60,$20,$F3,$FE,$29,$0F
       .byte $A8,$B9,$A5,$00,$D0,$05,$A9,$80,$99,$A5,$00,$60,$20,$F3,$FE,$29
       .byte $0F,$A8,$B9,$B6,$00,$D0,$05,$A9,$01,$99,$B6,$00,$60,$20,$B6,$F8
       .byte $4C,$19,$F9
LFB49: LDA    $80     
       AND    #$0F    
       TAX            
       LDA    LFFA6,X 
       STA    $EB     
       LDA    $80     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFA6,X 
       STA    $E9     
       LDA    $81     
       AND    #$0F    
       TAX            
       LDA    LFFA6,X 
       STA    $EF     
       LDA    $81     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFA6,X 
       STA    $ED     
       LDA    $82     
       AND    #$0F    
       TAX            
       LDA    LFFA6,X 
       STA    $F3     
       LDA    $82     
       LSR            
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFFA6,X 
       STA    $F1     
       LDA    #$FF    
       STA    $EA     
       STA    $EC     
       STA    $EE     
       STA    $F0     
       STA    $F2     
       STA    $F4     
       RTS            

LFB9A: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$B6    
       STA    COLUP0  
       STA    COLUP1  
       LDX    #$07    
       STA    WSYNC   
LFBAA: DEX            
       BNE    LFBAA   
       NOP            
       STA    RESP0   
       STA    RESP1   
       LDA    #$F0    
       STA    HMP0    
       STX    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$07    
       STY    $E8     
LFBC6: LDY    $E8     
       LDA    ($E9),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($EB),Y 
       STA    GRP1    
       LDA    ($ED),Y 
       STA    GRP0    
       LDA    ($EF),Y 
       STA    $E7     
       LDA    ($F1),Y 
       TAX            
       LDA    ($F3),Y 
       TAY            
       LDA    $E7     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $E8     
       BPL    LFBC6   
       LDA    #$00    
       STA    HMCLR   
       STA    VDELP1  
       STA    VDELP0  
       STA    GRP0    
       STA    GRP1    
       STA    NUSIZ1  
       STA    NUSIZ0  
       RTS            

LFBFF: .byte $00
LFC00: .byte $32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2,$92,$73,$63,$53,$43,$33
       .byte $23,$13,$03,$F3,$E3,$D3,$C3,$B3,$A3,$93,$74,$64,$54,$44,$34,$24
       .byte $14,$04,$F4,$E4,$D4,$C4,$B4,$A4,$94,$75,$65,$55,$45,$35,$25,$15
       .byte $05,$F5,$E5,$D5,$C5,$B5,$A5,$95,$76,$66,$56,$46,$36,$26,$16,$06
       .byte $F6,$E6,$D6,$C6,$B6,$A6,$96,$77,$67,$57,$47,$37,$27,$17,$07,$F7
       .byte $E7,$D7,$C7,$B7,$A7,$97,$78,$68,$58,$48,$38,$28,$18,$08,$F8,$E8
       .byte $D8,$C8,$B8,$A8,$98,$79,$69,$59,$49,$39,$29,$19,$09,$F9,$E9,$D9
       .byte $C9,$B9,$A9,$99,$7A,$6A,$5A,$4A,$3A,$2A,$1A,$0A,$FA,$EA,$DA,$CA
       .byte $BA,$AA,$9A,$7B,$6B,$5B,$4B,$3B,$2B,$1B,$0B,$FB,$EB,$DB,$CB,$BB
       .byte $AB,$9B,$7C,$6C,$5C,$4C,$3C,$2C,$1C,$0C,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$3E,$1C,$1C,$1C,$1C,$1C,$1C,$08,$08,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$08,$08,$08,$1C,$1C,$1C,$1C,$1C,$1C,$3E,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$02,$3E,$3E,$FE,$FE,$3E,$3E,$02,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$3C,$3C,$7E,$7E,$FF,$FF,$FF,$FF,$FF,$7E,$7E,$7C,$38,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$18,$18,$3C,$FF,$FF,$BD,$A5,$FF,$FF,$3C,$5A,$99,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$04,$20,$08,$10,$04,$10,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$20,$12,$14,$68,$00,$28,$44,$04,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$89,$08,$34,$18,$B4,$2B,$34,$58,$84,$22,$04,$50,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $18,$18,$3C,$3C,$7E,$FF,$FF,$AB,$AB,$FF,$FF,$7E,$3C,$3C,$18,$18
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFDE0: LDY    #$01    
LFDE2: LDA    ($E9),Y 
       DEY            
       STA    ($E9),Y 
       INY            
       INY            
       CPY    $EB     
       BNE    LFDE2   
       RTS            

LFDEE: LDY    $EB     
       DEY            
       DEY            
LFDF2: LDA    ($E9),Y 
       INY            
       STA    ($E9),Y 
       DEY            
       DEY            
       BPL    LFDF2   
       RTS            

LFDFC: .byte $00,$80,$A0,$A8,$FF,$0C,$1E,$42,$54,$66,$78,$78,$8A,$9C
LFE0A: .byte $3F,$11,$13,$15,$17,$3F,$62,$62,$64,$64,$26,$26,$28,$2A,$2A,$28
       .byte $26,$26,$64,$64,$62,$62
LFE20: STA    WSYNC   
       STA    HMP0,X  
       AND    #$0F    
       TAY            
LFE27: DEY            
       BNE    LFE27   
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LFE2F: .byte $C8,$C8,$68,$48,$48,$58,$B8,$D8,$08,$03,$06,$04,$05,$01,$09,$02
       .byte $08,$44,$44,$A6,$D6,$D6,$58,$7A,$7A,$7A,$7A,$58,$D6,$D6,$A6,$44
       .byte $44
LFE50: LDA    #$89    
       STA    $E9     
       LDA    #$00    
       STA    $EA     
       LDA    #$0C    
       STA    $EB     
       RTS            

LFE5D: .byte $49,$69,$00,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
       .byte $48,$48,$48
LFE70: LDA    #$97    
       STA    $E9     
       LDA    #$00    
       STA    $EA     
       LDA    #$0C    
       STA    $EB     
       RTS            

LFE7D: .byte $0F,$01,$00,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
       .byte $48,$48,$48,$A9,$A5,$85,$E9,$A9,$00,$85,$EA,$A9,$22,$85,$EB,$60
LFE9D: .byte $50,$61,$00,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48,$48
       .byte $48,$48,$48,$88,$FA,$FB,$F9,$30,$F8,$42,$FB,$50,$64,$78,$8C,$00
       .byte $14,$28,$3C,$44,$48,$2A,$54,$44,$D4,$B6,$B6,$B6,$B6,$D4,$44,$54
       .byte $2A,$48,$44,$A5,$C7,$29,$03,$0A,$A8,$B9,$B1,$FE,$48,$B9,$B0,$FE
       .byte $48,$60,$A2,$10,$56,$A5,$76,$B6,$CA,$10,$F9,$60,$A2,$10,$16,$B6
       .byte $36,$A5,$CA,$10,$F9,$60
LFEF3: LDA    $C7     
       LSR            
       LSR            
       ADC    $85     
       ADC    $C9     
       STA    $85     
       RTS            

LFEFE: .byte $03,$00
LFF00: .byte $8F,$8F,$8F,$8B,$89,$85,$00,$1E,$1E,$00,$8F,$8F,$8F,$8B,$89,$85
       .byte $00,$28,$00,$28,$00,$27,$00,$27,$00,$4F,$4F,$4E,$4C,$4A,$48,$46
       .byte $44,$00,$68,$69,$6A,$6B,$6C,$6D,$6E,$6F,$00
LFF2B: .byte $7F,$7F,$7F,$7F,$7F,$7F,$00,$47,$4A,$00,$BF,$BF,$BF,$BF,$BF,$BF
       .byte $00,$E4,$00,$E2,$00,$E1,$00,$E0,$00,$04,$05,$06,$07,$08,$09,$0A
       .byte $0C,$00,$C6,$C6,$C5,$C5,$E4,$E3,$E2,$E1,$00,$3C,$66,$66,$66,$66
       .byte $66,$66,$3C,$7E,$18,$18,$18,$18,$78,$38,$18,$7E,$60,$60,$3C,$06
       .byte $06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C,$0C,$0C,$0C,$7E,$4C
       .byte $2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E,$3C,$66,$66,$66,$7C
       .byte $60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E,$3C,$66,$66,$3C,$3C
       .byte $66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LFFA6: .byte $56,$5E,$66,$6E,$76,$7E,$86,$8E,$96,$9E
LFFB0: .byte $00,$01,$03,$07,$0F,$1F,$3F,$7F,$FF
LFFB9: .byte $80,$40,$20,$10,$08,$04,$02,$01
LFFC1: .byte $40,$10,$10,$10,$01,$01,$01,$01,$FF,$01,$01,$01,$01,$01,$01,$01
       .byte $01,$00,$FF,$FF,$01,$28,$50,$78
LFFD9: .byte $00,$00,$AE,$FC,$10,$FD,$10,$FE,$4D,$00,$48,$54,$FF,$09,$0F,$28
       .byte $AE,$10,$01,$01,$54,$00,$00,$00,$00,$00,$6A,$10,$00,$00,$06,$10
       .byte $00,$00,$00,$00,$F0,$00,$00
