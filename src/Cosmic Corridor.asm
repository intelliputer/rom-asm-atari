; Disassembly of roms/Cosmic Corridor.bin
; Disassembled Tue Oct  6 15:21:08 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Cosmic Corridor.bin
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
HMP0    =  $20
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296
T1024T  =  $0297

       ORG $F000

START:
       CLD            
       LDX    #$00    
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$38    
       STA    $8D     
       LDA    #$03    
       STA    $8F     
       LDA    #$02    
       STA    $8A     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       LDA    #$10    
       STA    $92     
       LDA    #$4B    
       STA    $94     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $EB     
LF02F: LDA    #$00    
       LDX    #$A0    
LF033: STA    VSYNC,X 
       INX            
       BNE    LF033   
       STA    $ED     
       LDA    #$50    
       STA    $E6     
       LDA    #$40    
       STA    $AE     
       STA    $CC     
       STA    $CA     
       LDA    #$00    
       STA    $AC     
       LDA    #$25    
       STA    $B4     
       LDA    #$1E    
       STA    $D3     
       LDA    LFB9A   
       STA    $DD     
       LDA    #$6A    
       STA    $DC     
LF05B: JSR    LF84A   
       LDA    #$00    
       STA    COLUBK  
       JSR    LF87B   
       JSR    LF6AF   
       LDA    #$10    
       STA    T1024T  
       LDA    $B4     
       STA    NUSIZ1  
       LDA    $E2     
       STA    NUSIZ0  
       LDA    $D3     
       AND    $A5     
       STA    COLUPF  
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       LDA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    $90     
       LDX    #$00    
       JSR    LF820   
       LDA    $B5     
       LDX    #$01    
       JSR    LF820   
       LDA    $A1     
       LDX    #$02    
       JSR    LF820   
       LDA    $A2     
       LDX    #$03    
       JSR    LF820   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $E7     
       AND    $A5     
       STA    COLUBK  
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    $AB     
       LDA    #$D0    
       STA    $A8     
       LDX    #$00    
       STX    $B0     
       STX    $B1     
       LDA    $CA     
       STA    $AE     
       STA    HMCLR   
       LDX    #$07    
       LDA    $A8     
LF0C9: LDY    #$00    
       CMP    $C6     
       BNE    LF0D1   
       LDY    #$02    
LF0D1: STY    ENAM0   
       CMP    $91     
       BNE    LF0D9   
       STX    $B0     
LF0D9: LDY    $B0     
       BEQ    LF0DF   
       DEC    $B0     
LF0DF: LDA    LFF00,Y 
       AND    $A5     
       STA    COLUP0  
       LDA    ($AC),Y 
       STA    GRP0    
       DEC    $A8     
       STA    WSYNC   
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF0F8   
       LDY    #$02    
LF0F8: STY    ENAM1   
       CMP    $B6     
       BNE    LF100   
       STX    $B1     
LF100: LDY    $B1     
       BEQ    LF106   
       DEC    $B1     
LF106: LDA    LFF08,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       DEC    $A8     
       LDY    $A8     
       STA    WSYNC   
       LDA    ($A6),Y 
       STA    PF0     
       LDA    $A8     
       CMP    #$80    
       BCS    LF0C9   
LF123: DEC    $A8     
       LDY    #$00    
       LDA    $A8     
       CMP    $CD     
       BNE    LF12F   
       LDY    #$02    
LF12F: STY    ENAM1   
       LDX    #$03    
       JSR    LF7EF   
       LDA    $A8     
       CMP    #$2E    
       BCS    LF123   
       LDA    $ED     
       BNE    LF146   
       JSR    LF941   
       JMP    LF159   
LF146: LDA    #$00    
       STA    PF0     
       STA    GRP0    
       STA    GRP1    
       STA    ENAM1   
       STA    ENAM0   
       LDX    #$0C    
LF154: STA    WSYNC   
       DEX            
       BPL    LF154   
LF159: SEC            
       LDA    $A8     
       SBC    #$0A    
       STA    $A8     
       LDA    $DD     
       STA    $E7     
       LDA    $94     
       BEQ    LF16B   
       JMP    LF252   
LF16B: JSR    LF796   
       LDA    $86     
       BNE    LF175   
       JMP    LF24C   
LF175: LDA    $8B     
       ORA    $8C     
       BNE    LF1B1   
       LDA    $B3     
       AND    #$0F    
       TAY            
       LDA    LFB60,Y 
       STA    AUDF1   
       LDA    $E1     
       AND    #$07    
       TAY            
       LDA    LFB70,Y 
       STA    AUDC1   
       SEC            
       LDA    $B6     
       SBC    $91     
       BCS    LF198   
       EOR    #$FF    
LF198: TAX            
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFF74,Y 
       STA    $C5     
       CLC            
       LDA    $B3     
       AND    #$07    
       TAY            
       LDA    LFF78,Y 
       ADC    $C5     
       STA    AUDV1   
LF1B1: INC    $E0     
       LDA    $8C     
       BNE    LF1CF   
       LDA    $C9     
       CMP    #$47    
       BCC    LF1CF   
       LDA    #$05    
       STA    AUDC0   
       LDA    #$08    
       STA    AUDV0   
       LDA    $C9     
       AND    #$0F    
       EOR    #$0F    
       ADC    #$08    
       STA    AUDF0   
LF1CF: LDA    NUSIZ1  
       ASL            
       BCC    LF1D8   
       LDA    #$01    
       STA    $DE     
LF1D8: LDA    $DE     
       BEQ    LF1EA   
       LDA    #$0F    
       STA    AUDV0   
       DEC    $DE     
       LDA    #$07    
       STA    AUDC0   
       LDA    #$0A    
       STA    AUDF0   
LF1EA: LDA    $8C     
       CMP    #$10    
       BCC    LF212   
       LDA    #$08    
       STA    AUDC0   
       LDA.w  $008C   
       LSR            
       LSR            
       TAY            
       LSR            
       STA    AUDV0   
       STA    AUDV1   
       TYA            
       EOR    #$1F    
       STA    AUDF0   
       LDA    #$07    
       STA    AUDC1   
       LDA    #$1F    
       STA    AUDF1   
       LDA    $8C     
       ASL            
       ASL            
       STA    $E7     
LF212: LDA    $8C     
       BNE    LF228   
       LDA    $8B     
       CMP    #$11    
       BCC    LF228   
       AND    #$1F    
       STA    AUDF0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$0B    
       STA    AUDV0   
LF228: LDA    $8C     
       BNE    LF246   
       LDA    $8B     
       CMP    #$25    
       BCC    LF246   
       AND    #$0F    
       STA    AUDV0   
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDF0   
       LDA    #$0E    
       STA    AUDF1   
LF246: LDA    $D5     
       BEQ    LF24C   
       DEC    $D5     
LF24C: LDA    $DB     
       BEQ    LF252   
       DEC    $DB     
LF252: LDA    $94     
       BNE    LF259   
       JMP    LF2F3   
LF259: INC    $EC     
       LDA    $EC     
       CMP    #$05    
       BNE    LF2BB   
       LDA    #$00    
       STA    $EC     
       DEC    $94     
       LDA    $E9     
       SEC            
       SBC    #$20    
       STA    $E9     
       BCS    LF2BB   
       INC    $E8     
       LDY    $E8     
       LDA    LFB9E,Y 
       STA    $E9     
       LDA    LFBC1,Y 
       STA    $EA     
       LDA    LFBE4,Y 
       STA    $EB     
       CPY    #$11    
       BCC    LF2C1   
       LDA    #$50    
       STA    $90     
       LDA    #$A0    
       STA    $91     
       LDA    #$80    
       STA    $ED     
       LDA    #$F0    
       STA    $AC     
       LDA    #$06    
       STA    $86     
       JSR    LF6EC   
       LDA    #$00    
       STA    $86     
       LDA    #$0E    
       LDY    #$0E    
       STA    AUDC0   
       STY    AUDC1   
       LDA    $EA     
       STA    AUDV0   
       STA    AUDV1   
       LDA    $E9     
       STA    AUDF0   
       LDA    $EB     
       STA    AUDF1   
       JMP    LF2D6   
LF2BB: LDY    $E8     
       CPY    #$11    
       BCS    LF2D6   
LF2C1: LDA    #$04    
       STA    AUDC0   
       LDA    #$0C    
       STA    AUDC1   
       LDA    $B3     
       ASL            
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$05    
       STA    AUDV0   
       STA    AUDV1   
LF2D6: LDA    $94     
       BNE    LF2F3   
       LDA    #$06    
       STA    $86     
       JSR    LF6EC   
       LDA    #$00    
       STA    $88     
       STA    $89     
       STA    $8C     
       STA    $8E     
       LDA    #$08    
       STA    $92     
       LDA    #$10    
       STA    $8B     
LF2F3: LDA    INTIM   
       BNE    LF2F3   
       JSR    LF868   
       LDA    #$24    
       STA    TIM64T  
       LDA    SWCHB   
       LSR            
       BCS    LF32B   
       LDA    #$4B    
       STA    $94     
       LDA    #$00    
       STA    $E8     
       STA    $E9     
       STA    $EA     
       STA    $EB     
       LDA    #$10    
       STA    $8C     
       STA    $8B     
       LDA    #$00    
       STA    $86     
       STA    $88     
       STA    $89     
LF322: LDA    SWCHB   
       LSR            
       BCC    LF322   
       JMP    LF02F   
LF32B: LSR            
       BCS    LF36F   
       LDA    #$00    
       STA    $86     
       JSR    LF6EC   
       INC    $87     
       LDA    $87     
       CMP    #$04    
       BNE    LF341   
       LDA    #$00    
       STA    $87     
LF341: LDY    $87     
       INY            
       TYA            
       ASL            
       ASL            
       ASL            
       CLC            
       ADC    #$08    
       STA    $92     
       LDA    #$00    
       STA    $88     
       STA    $89     
       LDY    #$01    
       LDA    $87     
       LSR            
       LSR            
       BCS    LF35D   
       LDY    #$03    
LF35D: STY    $8F     
       LDA    #$60    
       STA    $8C     
       STA    $8B     
LF365: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF365   
       JMP    LF02F   
LF36F: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF377   
       LDY    #$0F    
LF377: STY    $A5     
       LDY    #$15    
       LDA    SWCHB   
       ASL            
       ASL            
       BCS    LF384   
       LDY    #$10    
LF384: STY    $E2     
       LDA    $94     
       BEQ    LF39D   
       LDA    $E8     
       CMP    #$11    
       BCS    LF3A0   
       LDA    #$07    
       STA    $86     
       JSR    LF6EC   
       LDA    #$00    
       STA    $86     
       BEQ    LF3A0   
LF39D: JSR    LF6EC   
LF3A0: LDA    $8C     
       BEQ    LF3C6   
       CMP    #$10    
       BEQ    LF3B4   
       CMP    #$30    
       BCC    LF3B0   
       DEC    $8C     
       DEC    $8C     
LF3B0: DEC    $8C     
       BNE    LF3EE   
LF3B4: LDA    $86     
       BEQ    LF3EE   
       DEC    $86     
       BEQ    LF3EE   
       LDA    #$00    
       STA    $8C     
       LDA    #$50    
       STA    $90     
       BNE    LF41A   
LF3C6: LDA    $C9     
       BNE    LF3EE   
       LDA    REFP1   
       ASL            
       BCS    LF3EE   
       LDY    #$04    
       LDA    $E2     
       AND    #$0F    
       BEQ    LF3D9   
       LDY    #$08    
LF3D9: TYA            
       CLC            
       ADC    $90     
       STA    $A1     
       LDA    $91     
       SEC            
       SBC    #$04    
       STA    $C6     
       LDA    $8E     
       STA    $C7     
       LDA    #$50    
       STA    $C9     
LF3EE: LDA    $86     
       BEQ    LF41A   
       LDA    $8C     
       BNE    LF41A   
       LDA    WSYNC   
       ASL            
       BCS    LF409   
       LDA    VBLANK  
       ASL            
       BCS    LF409   
       LDA    $8B     
       BNE    LF41A   
       LDA    COLUP1  
       ASL            
       BCC    LF41A   
LF409: LDA    #$70    
       STA    $8C     
       LDA    #$D0    
       STA    $AC     
       LDA    #$F5    
       STA    $CD     
       STA    $B6     
       JMP    LF42F   
LF41A: LDA    $8C     
       BNE    LF458   
       LDA    $8B     
       BEQ    LF42A   
       CMP    #$10    
       BEQ    LF454   
       DEC    $8B     
       BNE    LF458   
LF42A: LDA    VSYNC   
       ASL            
       BCS    LF434   
LF42F: LDA    COLUP1  
       ASL            
       BCC    LF458   
LF434: JSR    LF8E1   
       JSR    LF7A5   
       LDA    $C5     
       BNE    LF458   
       INC    $E5     
       LDA    $E5     
       AND    #$07    
       TAY            
       LDA    LFF80,Y 
       STA    $8D     
       LDA    #$08    
       STA    $CA     
       LDA    #$30    
       STA    $8B     
       BNE    LF458   
LF454: LDA    #$00    
       STA    $CA     
LF458: INC    $B3     
       LDA    $8C     
       BNE    LF4AB   
       INC    $A9     
       LDA    $8F     
       LSR            
       AND    $A9     
       BNE    LF4AB   
       LDA    $8E     
       LSR            
       BCS    LF48C   
       DEC    $A6     
       DEC    $A6     
       INC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       BNE    LF489   
       SED            
       SEC            
       LDA    $D9     
       SBC    #$10    
       STA    $D9     
       LDA    $D8     
       SBC    #$00    
       STA    $D8     
       CLD            
LF489: JMP    LF4AB   
LF48C: INC    $A6     
       INC    $A6     
       DEC    $A4     
       LDA    $A4     
       AND    #$07    
       STA    $AA     
       CMP    #$07    
       BNE    LF4AB   
       SED            
       CLC            
       LDA    $D9     
       ADC    #$10    
       STA    $D9     
       LDA    $D8     
       ADC    #$00    
       STA    $D8     
       CLD            
LF4AB: LDA    #$FD    
       STA    $A7     
       LDA    #$FA    
       STA    $AD     
       STA    $AF     
       LDA    $AA     
       STA    $A3     
       LDA    $94     
       BNE    LF4FB   
       LDA    $8F     
       LSR            
       AND    $B3     
       BNE    LF4FB   
       LDY    $8E     
       LDX    $90     
       LDA    SWCHA   
       ASL            
       BCS    LF4DC   
       CPX    #$90    
       BCS    LF4DC   
       INX            
       INX            
       TYA            
       AND    #$03    
       ORA    #$08    
       TAY            
       BNE    LF4F7   
LF4DC: ASL            
       BCS    LF4ED   
       CPX    #$08    
       BCC    LF4ED   
       DEX            
       DEX            
       TYA            
       AND    #$03    
       ORA    #$04    
       TAY            
       BNE    LF4F7   
LF4ED: ASL            
       BCS    LF4F2   
       LDY    #$00    
LF4F2: ASL            
       BCS    LF4F7   
       LDY    #$01    
LF4F7: STY    $8E     
       STX    $90     
LF4FB: LDA    $C9     
       BEQ    LF54D   
       CMP    #$40    
       BEQ    LF505   
       DEC    $C9     
LF505: LDX    $A1     
       LDY    $C6     
       LDA    $C7     
       LSR            
       LSR            
       LSR            
       BCC    LF51A   
       DEX            
       DEX            
       DEX            
       DEX            
       CPX    #$18    
       BCS    LF53F   
       BCC    LF545   
LF51A: LSR            
       BCC    LF527   
       INX            
       INX            
       INX            
       INX            
       CPX    #$80    
       BCC    LF53F   
       BCS    LF545   
LF527: LDA    $C7     
       LSR            
       BCC    LF537   
       INY            
       INY            
       INY            
       INY            
       CPY    #$D0    
       BCC    LF53F   
       JMP    LF545   
LF537: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$68    
       BCC    LF545   
LF53F: STX    $A1     
       STY    $C6     
       BNE    LF54D   
LF545: LDA    #$00    
       STA    $A1     
       STA    $C6     
       STA    $C9     
LF54D: LDA    $8C     
       BEQ    LF554   
       JMP    LF5B9   
LF554: LDA    $8B     
       BEQ    LF57A   
       LDY    $B6     
       LDA    $8E     
       LSR            
       BCS    LF56D   
       INY            
       INY            
       INY            
       INY            
       CPY    #$F0    
       BCC    LF578   
       JSR    LF750   
       JMP    LF578   
LF56D: DEY            
       DEY            
       DEY            
       DEY            
       CPY    #$11    
       BCS    LF578   
       JSR    LF750   
LF578: STY    $B6     
LF57A: LDA    $8B     
       BNE    LF5B9   
       INC    $CF     
       LDA    $CF     
       AND    $8F     
       BNE    LF5B9   
       INC    $D0     
       LDA    $D0     
       AND    #$0F    
       BNE    LF590   
       INC    $D4     
LF590: LDA    $D4     
       AND    #$1F    
       TAY            
       LDA    LFF10,Y 
       STA    $C5     
       LDA    LFF30,Y 
       STA    $C8     
       LDY.w  $00B5   
       CPY    $C5     
       BCS    LF5A8   
       INY            
       INY            
LF5A8: DEY            
       STY    $B5     
       LDY    $B6     
       CPY    $C8     
       BCS    LF5B5   
       INY            
       INY            
       INY            
       INY            
LF5B5: DEY            
       DEY            
       STY    $B6     
LF5B9: DEC    $D6     
       BEQ    LF5C0   
       JMP    LF644   
LF5C0: JSR    LF734   
       LDY    $CD     
       CPY    #$E0    
       BCS    LF605   
       CPY    #$08    
       BCC    LF605   
       LDA    NUSIZ1  
       ASL            
       BCS    LF630   
       LDA.w  $00A2   
       LDX.w  $00CB   
       BNE    LF5DF   
       CLC            
       ADC    $8A     
       BNE    LF5E4   
LF5DF: SEC            
       LDA    $A2     
       SBC    $8A     
LF5E4: STA    $A2     
       SEC            
       LDA    #$07    
       SBC    $8A     
       AND    #$FE    
       STA    $C5     
       LDA    $D7     
       BEQ    LF5FC   
       SEC            
       LDA    $CD     
       SBC    $C5     
       STA    $CD     
       BNE    LF644   
LF5FC: LDA    $C5     
       CLC            
       ADC    $CD     
       STA    $CD     
       BNE    LF644   
LF605: LDA    $8B     
       ORA    $8C     
       BNE    LF644   
       LDY    #$01    
       LDA    $B6     
       CMP    $91     
       BCS    LF615   
       LDY    #$00    
LF615: STY    $D7     
       LDX    $B5     
       STX    $A2     
       LDY    $B6     
       STY    $CD     
       JSR    LF734   
       LDA    $D1     
       ADC    $D2     
       AND    #$07    
       TAY            
       LDA    LFF88,Y 
       STA    $8A     
       BNE    LF644   
LF630: LDA.w  $00CB   
       EOR    #$01    
       STA    $CB     
       LDA    $A2     
       CMP    #$40    
       BCS    LF63F   
       ADC    #$08    
LF63F: SEC            
       SBC    #$04    
       STA    $A2     
LF644: LDA    $8C     
       BNE    LF653   
       LDY    #$E0    
       LDA    $8E     
       LSR            
       BCS    LF651   
       LDY    #$F0    
LF651: STY    $AC     
LF653: LDX    #$01    
       SED            
       SEC            
LF657: LDA    #$00    
       ADC    $D1,X   
       STA    $D1,X   
       DEX            
       BPL    LF657   
       CLD            
       JSR    LF8F9   
       JSR    LF66D   
       JSR    LF68F   
       JMP    LF05B   
LF66D: LDA    $89     
       AND    #$F0    
       CMP    $E6     
       BNE    LF68E   
       SED            
       LDA    $E6     
       CLC            
       ADC    #$50    
       STA    $E6     
       CLD            
       LDA    #$FF    
       STA    $DB     
       INC    $E4     
       LDA    $E4     
       AND    #$03    
       TAY            
       LDA    LFB9A,Y 
       STA    $DD     
LF68E: RTS            

LF68F: LDA    $88     
       AND    #$0F    
       CMP    $DA     
       BEQ    LF6AE   
       STA    $DA     
       INC    $E3     
       LDA    $86     
       CMP    #$06    
       BEQ    LF6A3   
       INC    $86     
LF6A3: LDA    #$F0    
       STA    $D5     
       CLC            
       LDA    $DC     
       ADC    #$40    
       STA    $DC     
LF6AE: RTS            

LF6AF: LDA    #$20    
       LDX    #$00    
       JSR    LF820   
       LDA    #$50    
       LDX    #$01    
       JSR    LF820   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$2C    
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    $80     
       STA    NUSIZ0  
       LDA    $81     
       STA    NUSIZ1  
       STA    HMCLR   
       LDY    #$07    
LF6D5: STA    WSYNC   
       LDA    LFF00,Y 
       AND    $A5     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($82),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       DEY            
       BPL    LF6D5   
       RTS            

LF6EC: LDA    #$FA    
       STA    $83     
       STA    $85     
       LDY    $86     
       BEQ    LF6FF   
       DEY            
       CPY    #$04    
       BCS    LF71D   
       CPY    #$01    
       BCS    LF70B   
LF6FF: LDA    #$00    
       STA    $80     
       STA    $81     
       STA    $82     
       STA    $84     
       BEQ    LF730   
LF70B: LDA    #$00    
       STA    $84     
       STA    $81     
       DEY            
       LDA    LF731,Y 
       STA    $80     
       LDA    #$F0    
       STA    $82     
       BNE    LF730   
LF71D: LDA    #$03    
       STA    $80     
       DEY            
       DEY            
       DEY            
       DEY            
       LDA    LF731,Y 
       STA    $81     
       LDA    #$F0    
       STA    $82     
       STA    $84     
LF730: RTS            

LF731: .byte $00,$01,$03
LF734: LDA    $87     
       LSR            
       BCC    LF73E   
       LDA    $89     
       JMP    LF744   
LF73E: LDA    $89     
       LSR            
       LSR            
       LSR            
       LSR            
LF744: AND    #$0F    
       CLC            
       ADC    $DA     
       TAY            
       LDA    LFFA0,Y 
       STA    $D6     
       RTS            

LF750: CLC            
       LDA    $CC     
       ADC    #$08    
       CMP    #$90    
       BCC    LF75B   
       LDA    #$40    
LF75B: STA    $CC     
       TAY            
       STA.w  $00CA   
       LDA    ($A6),Y 
       ADC    $CC     
       AND    #$7F    
       ADC    #$10    
       STA.w  $00B5   
       LDA    #$00    
       STA    $8B     
       LDA    $D1     
       ADC    $D2     
       AND    #$1F    
       CMP    #$08    
       BCC    LF77C   
       LDA    #$05    
LF77C: CLC            
       AND    #$07    
       TAY            
       STA    $E1     
       ADC    #$20    
       STA    $B4     
       LDA    LFF90,Y 
       STA    $D3     
       LDA    $D2     
       LSR            
       BCS    LF793   
       LDY    #$13    
       RTS            

LF793: LDY    #$EF    
       RTS            

LF796: LDA    #$00    
       STA    AUDC0   
       STA    AUDC1   
       STA    AUDF0   
       STA    AUDF1   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LF7A5: LDA    $B4     
       AND    #$0F    
       CMP    #$00    
       BEQ    LF7EA   
       CMP    #$05    
       BEQ    LF7EA   
       CMP    #$07    
       BEQ    LF7EA   
       STA    $C5     
       LDA    $B5     
       CLC            
       ADC    #$0B    
       CMP    $A1     
       BCC    LF7D7   
       LDA    $C5     
       LSR            
       BCC    LF7C9   
       LDA    #$10    
       BNE    LF7D2   
LF7C9: LSR            
       BCC    LF7D0   
       LDA    #$20    
       BNE    LF7D2   
LF7D0: LDA    #$40    
LF7D2: CLC            
       ADC    $B5     
       STA    $B5     
LF7D7: LDA    $C5     
       LSR            
       AND    $C5     
       TAY            
       CLC            
       ADC    #$20    
       STA    $B4     
       STA    $C5     
       LDA    LFF90,Y 
       STA    $D3     
       RTS            

LF7EA: LDA    #$00    
       STA    $C5     
       RTS            

LF7EF: LDA    $A8     
       STA    WSYNC   
       CMP    $B6     
       BNE    LF7FB   
       LDA    #$07    
       STA    $B1     
LF7FB: LDY    $B1     
       BEQ    LF801   
       DEC    $B1     
LF801: LDA    LFF08,Y 
       ORA    $8D     
       AND    $A5     
       STA    COLUP1  
       LDA    ($AE),Y 
       STA    GRP1    
       JSR    LF814   
       DEC    $A8     
       RTS            

LF814: STA    WSYNC   
       LDY    $A8     
       LDA    ($A6),Y 
       STA    PF0     
       RTS            

LF81D: .byte $EA,$EA,$EA
LF820: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $00A0   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $00A0   
       CMP    #$0F    
       BCC    LF83A   
       SBC    #$0F    
       INY            
LF83A: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF844: DEY            
       BPL    LF844   
       STA    RESP0,X 
       RTS            

LF84A: LDA    INTIM   
       BNE    LF84A   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    ENAM0   
       STA    ENAM1   
       RTS            

LF868: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LF87B: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$38    
       LDX    #$00    
       JSR    LF820   
       LDA    #$40    
       LDX    #$01    
       JSR    LF820   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       LDA    #$01    
       STA    NUSIZ1  
       LDA    $DC     
       AND    $A5     
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $C5     
       NOP            
       NOP            
       STA    HMCLR   
LF8B1: LDY    $C5     
       LDA    ($92),Y 
       STA    $A0     
       STA    WSYNC   
       LDA    ($BB),Y 
       STA    GRP0    
       LDA    ($BD),Y 
       STA    GRP1    
       NOP            
       NOP            
       LDA    ($C1),Y 
       TAX            
       NOP            
       NOP            
       NOP            
       LDA    ($BF),Y 
       LDY    $A0     
       STA.w  $001B   
       STX    GRP1    
       STY    GRP0    
       DEC    $C5     
       BPL    LF8B1   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8E1: LDA    $B4     
       AND    #$07    
       TAY            
       LDA    LFF98,Y 
       CLC            
       LDX    #$01    
       SED            
LF8ED: ADC.wx $0088,X 
       STA    $88,X   
       LDA    #$00    
       DEX            
       BPL    LF8ED   
       CLD            
       RTS            

LF8F9: LDA    $88     
       STA    $B8     
       LDA    $89     
       STA    $B9     
       LDX    #$01    
       LDY    #$04    
LF905: LDA    $B8,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00BB,Y 
       LDA    $B8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00BD,Y 
       LDA    #$FB    
       STA.wy $00BC,Y 
       STA.wy $00BE,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF905   
       LDA    #$FB    
       STA    $93     
       LDX    #$00    
LF930: LDA    $BB,X   
       CMP    #$08    
       BNE    LF940   
       LDA    #$00    
       STA    $BB,X   
       INX            
       INX            
       CMP    #$08    
       BNE    LF930   
LF940: RTS            

LF941: LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    PF0     
       LDA    #$20    
       LDX    #$00    
       JSR    LF820   
       LDA    #$28    
       LDX    #$01    
       JSR    LF820   
       STA    WSYNC   
       STA    HMOVE   
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
LF973: STA    WSYNC   
       LDA    LFF50,X 
       STA    GRP0    
       LDA    LFF59,X 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    LFF6B,X 
       TAY            
       LDA    LFF62,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF973   
       RTS            

LF995: .byte $89,$A0,$01,$A5,$87,$4A,$4A,$B0,$02,$A0,$03,$84,$8F,$A9,$60,$85
       .byte $8C,$85,$8B,$AD,$82,$02,$4A,$4A,$90,$F9,$4C,$2F,$F0,$A0,$FF,$4A
       .byte $4A,$B0,$02,$A0,$0F,$84,$A5,$A0,$15,$AD,$82,$02,$0A,$0A,$B0,$02
       .byte $A0,$10,$84,$E2,$A5,$94,$F0,$13,$A5,$E8,$C9,$11,$B0,$10,$A9,$07
       .byte $85,$86,$20,$EC,$F6,$A9,$00,$85,$86,$F0,$03,$20,$EC,$F6,$A5,$8C
       .byte $F0,$22,$C9,$10,$F0,$0C,$C9,$30,$90,$04,$C6,$8C,$C6,$8C,$C6,$8C
       .byte $D0,$3A,$A5,$86,$F0,$36,$C6,$86,$F0,$32,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$44,$00,$20,$01,$44,$00,$A5,$8B,$D0,$3B,$E6
       .byte $CF,$A5,$CF,$25,$8F,$D0,$33,$E6,$D0,$A5,$D0,$29,$0F,$D0,$02,$E6
       .byte $D4,$A5,$D4,$29,$1F,$A8,$B9,$10,$FF,$85,$C5,$B9,$30,$FF,$85,$C8
       .byte $AC,$B5,$00,$C4,$C5,$B0,$02,$C8,$C8,$88,$84,$00,$00,$24,$5A,$99
       .byte $42,$24,$18,$00,$10,$44,$28,$92,$28,$44,$10,$00,$63,$22,$14,$08
       .byte $55,$36,$08,$00,$10,$28,$44,$D6,$28,$6C,$00,$00,$24,$00,$5A,$5A
       .byte $81,$18,$24,$00,$10,$38,$54,$FE,$10,$38,$7C,$00,$00,$18,$24,$18
       .byte $24,$81,$66,$00,$0C,$18,$0C,$36,$49,$49,$22,$00,$42,$5A,$24,$42
       .byte $81,$5A,$24,$00,$28,$44,$92,$92,$6C,$10,$28,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$56,$38,$5E
       .byte $64,$60,$10,$00,$10,$56,$38,$5E,$64,$00,$00,$00,$D6,$10,$28,$54
       .byte $C6,$38,$10,$00,$D6,$10,$28,$54,$C6,$38,$10,$00,$10,$38,$C6,$54
       .byte $28,$10,$D6,$00,$3C,$A5,$66,$5A,$E7,$3C,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18
       .byte $18,$38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C
       .byte $06,$46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C
       .byte $60,$60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C
       .byte $06,$42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66
       .byte $66,$66,$3C,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFB60: .byte $FF,$FF,$FF,$FF,$AA,$AA,$AA,$AA,$CC,$CC,$CC,$CC,$88,$88,$88,$88
LFB70: .byte $07,$01,$0A,$04,$09,$0C,$05,$08,$1B,$16,$12,$10,$14,$12,$14,$16
       .byte $14,$12,$12,$10,$14,$10,$14,$10,$14,$08,$08,$07,$09,$08,$0A,$09
       .byte $0B,$0A,$0C,$0B,$0D,$0C,$0E,$0D,$0F,$00
LFB9A: .byte $73,$04,$64,$00
LFB9E: .byte $00,$73,$00,$73,$00,$73,$00,$73,$00,$73,$00,$73,$00,$73,$00,$73
       .byte $00,$E0,$69,$69,$29,$29,$29,$29,$29,$29,$29,$29,$29,$29,$29,$29
       .byte $29,$29,$29
LFBC1: .byte $00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$0F
       .byte $00,$E0,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0D,$0D,$0B,$09,$07,$05,$03
       .byte $01,$00,$00
LFBE4: .byte $00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F,$00,$6F
       .byte $00,$E0,$6C,$6C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C
       .byte $2C,$2C,$2C,$2C,$29,$F5,$88,$88,$88,$88,$C0,$11,$B0,$03,$20,$50
       .byte $F7,$84,$B6,$A5,$8B,$D0,$3B,$E6,$CF,$A5,$CF,$25,$8F,$D0,$33,$E6
       .byte $D0,$A5,$D0,$29,$0F,$D0,$02,$E6,$D4,$A5,$D4,$29,$1F,$A8,$B9,$10
       .byte $FF,$85,$C5,$B9,$30,$FF,$85,$C8,$AC,$B5,$00,$C4,$C5,$B0,$02,$C8
       .byte $C8,$88,$84,$B5,$A4,$B6,$C4,$C8,$B0,$04,$C8,$C8,$4A,$90,$05,$A5
       .byte $89,$4C,$44,$F7,$A5,$89,$4A,$4A,$4A,$4A,$29,$0F,$18,$65,$DA,$A8
       .byte $B9,$A0,$FF,$85,$D6,$60,$18,$A5,$CC,$69,$08,$C9,$90,$90,$02,$A9
       .byte $40,$85,$CC,$A8,$8D,$CA,$00,$B1,$A6,$00,$00,$4C,$49,$4E,$4B,$20
       .byte $31,$2E,$36,$0D,$49,$4E,$49,$54,$20,$2F,$F0,$C1,$41,$20,$20,$20
       .byte $20,$05,$F0,$D4,$4F,$50,$20,$20,$20,$00,$F0,$54,$50,$4C,$45,$4E
       .byte $20,$4B,$00,$58,$4D,$49,$4E,$20,$20,$08,$00,$59,$4D,$49,$4E,$20
       .byte $20,$08,$00,$59,$4D,$41,$58,$20,$20,$D0,$00,$58,$4D,$41,$58,$20
       .byte $20,$90,$00,$53,$54,$41,$52,$54,$20,$00,$00,$43,$45,$4E,$54,$20
       .byte $20,$A0,$00,$43,$43,$30,$39,$20,$20,$73,$00,$43,$43,$30,$36,$20
       .byte $20,$2C,$00,$43,$43,$30,$37,$20,$20,$38,$00,$43,$43,$30,$38,$20
       .byte $20,$1E,$00,$FF,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$FC,$30,$30,$30,$30
       .byte $70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70
       .byte $F0,$F0,$F0,$F0,$70,$70,$70,$70,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70
       .byte $10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$30,$30,$30,$30,$10,$10,$10,$10
       .byte $10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70,$30,$30,$30,$30
       .byte $F0,$F0,$F0,$F0,$10,$10,$10,$10,$30,$30,$30,$30,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$F0,$F0,$F0,$F0,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $30,$30,$30,$30,$10,$10,$10,$10,$70,$70,$70,$70,$70,$70,$70,$70
       .byte $30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30
       .byte $70,$70,$70,$70,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$70,$70,$70,$70
       .byte $30,$30,$30,$30,$30,$30,$30,$30,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $10,$10,$10,$10,$30,$30,$30,$30,$30,$30,$30,$30,$70,$70,$70,$70
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70,$30,$30,$30,$30
       .byte $70,$70,$70,$70,$30,$30,$30,$30,$10,$10,$10,$10,$10,$10,$10,$10
       .byte $30,$30,$30,$30,$70,$70,$70,$70,$F0,$F0,$F0,$F0,$70,$70,$70,$70
       .byte $F0,$F0,$F0,$F0,$70,$70,$70,$70,$10,$10,$10,$10,$30,$30,$30,$30
       .byte $10,$10,$10,$10,$10,$10,$10,$10,$30,$30,$30,$30
LFF00: .byte $0C,$0C,$38,$1A,$48,$1A,$38,$0C
LFF08: .byte $04,$04,$00,$32,$64,$32,$04,$00
LFF10: .byte $6A,$48,$34,$16,$08,$06,$5D,$74,$82,$6C,$4F,$3D,$38,$48,$5A,$32
       .byte $36,$1A,$05,$24,$12,$44,$64,$5A,$7C,$6A,$86,$3F,$93,$6A,$5F,$44
LFF30: .byte $1A,$24,$42,$74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D,$B4,$C6,$C0,$A0
       .byte $C6,$E2,$B8,$64,$38,$22,$44,$88,$54,$78,$A4,$C1,$D8,$C8,$C1,$92
LFF50: .byte $00,$FC,$80,$40,$20,$10,$08,$04,$FC
LFF59: .byte $00,$90,$90,$90,$92,$97,$1D,$98,$90
LFF62: .byte $00,$50,$50,$5F,$50,$50,$C9,$CF,$46
LFF6B: .byte $00,$9D,$A3,$A1,$A7,$A0,$20,$21,$1E
LFF74: .byte $08,$05,$03,$01
LFF78: .byte $00,$01,$02,$03,$04,$03,$02,$01
LFF80: .byte $38,$18,$0E,$2E,$5A,$4C,$8A,$AA
LFF88: .byte $02,$01,$03,$05,$03,$04,$04,$01
LFF90: .byte $1E,$6A,$6A,$48,$6A,$1E,$48,$7C
LFF98: .byte $03,$05,$05,$08,$05,$03,$08,$04
LFFA0: .byte $07,$06,$05,$05,$04,$04,$03,$03,$02,$01,$03,$04,$05,$01,$04,$02
       .byte $84,$B5,$A4,$B6,$C4,$C8,$B0,$04,$C8,$C8,$C8,$C8,$88,$88,$84,$B6
       .byte $C6,$D6,$F0,$03,$4C,$44,$F6,$20,$34,$F7,$A4,$CD,$C0,$E0,$B0,$3C
       .byte $C0,$08,$90,$38,$A5,$05,$0A,$B0,$5E,$AD,$A2,$00,$AE,$CB,$00,$D0
       .byte $05,$18,$65,$8A,$D0,$05,$38,$A5,$A2,$E5,$8A,$85,$A2,$38,$A9,$07
       .byte $E5,$8A,$29,$FE,$85,$C5,$A5,$D7,$F0,$FF,$FF,$FF,$00,$F0,$00,$F0
