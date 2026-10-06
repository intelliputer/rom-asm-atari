; Disassembly of roms/Racquetball.bin
; Disassembled Tue Oct  6 15:22:41 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Racquetball.bin
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
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $7000

START:
       CLD            
       SEI            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
L7007: STA    VSYNC,X 
       INX            
       BNE    L7007   
       JSR    L761F   
       LDX    #$77    
       STX    $CB     
       LDX    #$01    
       STX    $99     
L7017: INC    $C6     
       LDA    #$2A    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       LDX    #$01    
L7026: TXA            
       ASL            
       TAY            
       LDA    $98,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA.wy $0084,Y 
       LDA    $98,X   
       AND    #$F0    
       LSR            
       STA.wy $0080,Y 
       DEX            
       BPL    L7026   
       STA    HMCLR   
       INX            
       STX    $C1     
       STX    $C2     
       LDA    SWCHB   
       ASL            
       ROL    $C2     
       ASL            
       ROL    $C1     
       LDA    $B5     
       BEQ    L705E   
       LDA    $BB     
       BEQ    L705E   
       LDA    #$3C    
       STA    $BF     
       LDA    #$00    
       STA    $BE     
L705E: LDX    #$06    
       LDA    $BE     
       BEQ    L7074   
       DEC    $AC     
       BNE    L708D   
L7068: INC    $A5,X   
       DEX            
       BPL    L7068   
       INC    $8C     
       INC    $8E     
       JMP    L708D   
L7074: LDA    L7DE5,X 
       STA    $A5,X   
       DEX            
       BPL    L7074   
       LDX    $B8     
       LDA    L772E,X 
       STA    $A6     
       DEC    $C0     
       BNE    L708D   
       DEC    $BF     
       BNE    L708D   
       INC    $BE     
L708D: LDX    INTIM   
       BNE    L708D   
       STA    WSYNC   
       STX    VSYNC   
       LDA    #$2D    
       STA    TIM64T  
       LDA    $9C     
       STA    HMM0    
       AND    #$0F    
       TAX            
       LDA    $9E     
       STA    HMM1    
       AND    #$0F    
       TAY            
       LDA    $9D     
       STA    HMBL    
       AND    #$0F    
       STA    WSYNC   
L70B1: DEX            
       BNE    L70B1   
       STA    RESM0   
       STA    WSYNC   
L70B8: DEY            
       BNE    L70B8   
       STA    RESM1   
       TAX            
       STA    WSYNC   
L70C0: DEX            
       BNE    L70C0   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    SWCHB   
       LSR            
       TAY            
       BCS    L70E1   
       STX    $CB     
       STX    AUDV0   
       STX    $AC     
       STX    $99     
       STX    $98     
       STX    $B5     
       JSR    L761F   
       STX    $CC     
L70E1: LDA    $C6     
       AND    #$0F    
       BNE    L7107   
       TYA            
       LSR            
       BCS    L7107   
       JSR    L761F   
       INX            
       STX    $CC     
       STX    $AC     
       STX    AUDV0   
       STX    $B5     
       STX    $98     
       LDX    #$77    
       STX    $CB     
       LDA    $D3     
       EOR    #$01    
       STA    $D3     
       TAX            
       INX            
       STX    $99     
L7107: LDX    $CB     
       CPX    #$77    
       BNE    L7110   
       JMP    L7188   
L7110: LDA    $C6     
       AND    #$03    
       BEQ    L7119   
       JMP    L7365   
L7119: DEX            
       STX    $CB     
       CPX    #$F5    
       BEQ    L7124   
       BCS    L7131   
       BNE    L712E   
L7124: LDA    #$01    
       STA    $C4     
       STA    $C5     
       LDA    #$FF    
       STA    $C3     
L712E: JSR    L756B   
L7131: CPX    #$F6    
       BCC    L7139   
       INC    $96     
       BCS    L7183   
L7139: CPX    #$E4    
       BCC    L7145   
       INC    $A3     
       LDA    #$63    
       STA    $88     
       BCS    L7183   
L7145: CPX    #$D6    
       BCC    L714D   
       LDA    #$9F    
       BNE    L7185   
L714D: CPX    #$C4    
       BCC    L7159   
       INC    $A4     
       LDA    #$63    
       STA    $8A     
       BCS    L7183   
L7159: CPX    #$B6    
       BCC    L7161   
       LDA    #$F5    
       BCS    L7185   
L7161: CPX    #$AC    
       BCC    L7169   
       DEC    $96     
       BCS    L7183   
L7169: CPX    #$A1    
       BCC    L7171   
       LDA    #$7B    
       BCS    L7185   
L7171: CPX    #$8F    
       BCC    L7177   
       BCS    L7183   
L7177: CPX    #$84    
       BCC    L717F   
       LDA    #$B7    
       BCS    L7185   
L717F: LDA    #$FD    
       BNE    L7185   
L7183: LDA    #$FF    
L7185: JMP    L71E4   
L7188: LDA    $CC     
       BNE    L718F   
       JMP    L7365   
L718F: LDA    SWCHA   
       STA    $CD     
       LDX    $D3     
       BNE    L71E4   
       ORA    #$0F    
       STA    $CD     
       LDX    $B8     
       BEQ    L71E4   
       TAX            
       LDA    $C6     
       LSR            
       TXA            
       BCC    L71E4   
       LDA    $9B     
       JSR    L75F8   
       STA    $CA     
       LDA    $9D     
       JSR    L75F8   
       SEC            
       SBC    $CA     
       TAX            
       LDA    #$FB    
       CPX    #$08    
       BMI    L71C5   
       LDA    #$F7    
       CPX    #$0D    
       BPL    L71C5   
       LDA    #$FF    
L71C5: AND    $CD     
       STA    $CD     
       LDX    $94     
       CPX    #$7D    
       BCS    L71E4   
       TXA            
       SEC            
       SBC    #$53    
       TAX            
       LDA    #$FD    
       CPX    $A0     
       BMI    L71E2   
       LDA    #$FF    
       CPX    $A0     
       BEQ    L71E2   
       LDA    #$FE    
L71E2: AND    $CD     
L71E4: STA    $C7     
       LDX    #$00    
L71E8: LDY    #$00    
       STY    $C8     
       ASL            
       BCS    L71F3   
       LDY    #$10    
       STY    $C8     
L71F3: ASL            
       BCS    L71FA   
       LDY    #$F0    
       STY    $C8     
L71FA: ASL            
       BCS    L7203   
       LDY    $9F,X   
       BEQ    L7203   
       DEC    $9F,X   
L7203: ASL            
       BCS    L720E   
       LDY    $9F,X   
       CPY    #$1F    
       BEQ    L720E   
       INC    $9F,X   
L720E: PHA            
       LDA    $9A,X   
       LDY    $C8     
       JSR    L75A6   
       STA    $9A,X   
       JSR    L75F8   
       STA    $CA     
       LDY    $9F,X   
       LDA    L76EA,Y 
       CMP    $CA     
       BCS    L7234   
       LDA    L770A,Y 
       CMP    $CA     
       BCS    L7239   
       LDA    L76CA,Y 
       STA    $9A,X   
       BNE    L7239   
L7234: LDA    L76AA,Y 
       STA    $9A,X   
L7239: PLA            
       INX            
       CPX    #$02    
       BNE    L71E8   
       DEX            
L7240: LDA    $A3,X   
       BEQ    L7274   
       LDY    #$63    
       LDA    $C7     
       AND    L7FFE,X 
       CMP    L7FFE,X 
       BEQ    L725A   
       LDA    $C6     
       AND    #$0F    
       CMP    #$08    
       BCS    L725A   
       LDY    #$3A    
L725A: STY    $CA     
       TXA            
       ASL            
       TAY            
       LDA    $CA     
       CLC            
       ADC    $9F,X   
       STA.wy $0088,Y 
       LDA    $BE     
       BNE    L7274   
       LDA    L7FFA,X 
       CLC            
       ADC    $9F,X   
       STA.wy $008C,Y 
L7274: DEX            
       BPL    L7240   
       LDA    $CC     
       BNE    L727E   
       JMP    L7365   
L727E: LDX    $B8     
       LDA    $B5     
       BNE    L72B9   
       CPX    #$00    
       BEQ    L728C   
       LDA    $D3     
       BEQ    L7290   
L728C: LDA    INPT4,X 
       BMI    L72B9   
L7290: LDA    $BA     
       BEQ    L7298   
       DEC    $BA     
       BNE    L72B9   
L7298: LDY    #$01    
       STY    $AE     
       STY    $B5     
       LDA    #$5F    
       STA    $90     
       STA    $94     
       LDA    #$69    
       STA    $9E     
       DEY            
       STY    $AF     
       STY    $B0     
       STY    $B2     
       STY    $B9     
       STY    $D0     
       LDY    #$0C    
       STY    $CE     
       STY    $CF     
L72B9: LDA    $9A,X   
       JSR    L75F8   
       STA    $CD     
       LDA    $9D     
       JSR    L75F8   
       SEC            
       SBC    $CD     
       LDY    #$FF    
       CMP    #$0E    
       BMI    L72D2   
       INY            
       SEC            
       SBC    #$07    
L72D2: STY    $A1,X   
       LDY    $C1,X   
       CMP    L772A,Y 
       BPL    L7340   
       CMP    L772C,Y 
       BMI    L7340   
       STA    $CA     
       LDA    $B5     
       BEQ    L7340   
       LDA    $B2     
       BNE    L7340   
       LDA    $94     
       SEC            
       SBC    #$4F    
       SEC            
       SBC    $9F,X   
       CMP    #$07    
       BCS    L7340   
       LDA    $92     
       SEC            
       SBC    #$50    
       SEC            
       SBC    $9F,X   
       BMI    L7340   
       CMP    #$08    
       BPL    L7340   
       STA    $CE     
       STA    $CF     
       LSR            
       LSR            
       TAY            
       INY            
       STY    $AE     
       LDA    #$0A    
       STA    $D0     
       LDA    #$12    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$14    
       STA    $B6,X   
       LDY    #$01    
       STY    $B2     
       STY    $BB     
       STY    $B0     
       DEY            
       STY    $B9     
       STY    $BD     
       TXA            
       EOR    #$01    
       STA    $B8     
       LDA    $CA     
       SEC            
       SBC    #$0B    
       CLC            
       BMI    L733D   
       SEC            
L733D: ROR            
       STA    $AF     
L7340: LDX    #$01    
L7342: LDY    $B6,X   
       BEQ    L7362   
       DEC    $B6,X   
       LDA    #$8C    
       CPY    #$0D    
       BCS    L7356   
       LDA    #$63    
       CPY    #$07    
       BCS    L7356   
       LDA    #$B5    
L7356: CLC            
       ADC    $9F,X   
       STX    $CA     
       ASL    $CA     
       LDY    $CA     
       STA.wy $0088,Y 
L7362: DEX            
       BPL    L7342   
L7365: JMP    L7800   
L7368: LDA    $CB     
       CMP    #$77    
       BNE    L737A   
       LDA    $B4     
       BNE    L737A   
       LDA    #$00    
       STA    AUDV0   
       LDA    $B5     
       BNE    L737D   
L737A: JMP    L7556   
L737D: LDA    $C6     
       AND    #$01    
       BEQ    L7386   
       JMP    L7556   
L7386: LDA    #$10    
       STA    $AD     
       CLC            
       LDA    $B0     
       ADC    $94     
       STA    $94     
       LDA    $AF     
       ASL            
       ASL            
       ASL            
       ASL            
       TAY            
       LDA    $9E     
       JSR    L75A6   
       STA    $9E     
       LDA    $92     
       CMP    #$7D    
       BCC    L73B8   
       LDA    $94     
       CMP    #$7D    
       BCS    L73D2   
       LDA    #$7E    
       SEC            
       SBC    $94     
       CLC            
       ADC    #$7D    
       STA    $94     
       JMP    L73CA   
L73B8: LDA    $94     
       CMP    #$7D    
       BCC    L73D2   
       SEC            
       SBC    #$7D    
       STA    $CA     
       LDA    #$7E    
       SEC            
       SBC    $CA     
       STA    $94     
L73CA: LDA    $B0     
       EOR    #$FF    
       TAX            
       INX            
       STX    $B0     
L73D2: LDA    $94     
       CMP    #$7D    
       BCS    L73F1   
       CMP    #$70    
       BCC    L73E2   
       LDA    #$6F    
       STA    $94     
       BCS    L73EA   
L73E2: CMP    #$52    
       BCS    L73EA   
       LDA    #$52    
       STA    $94     
L73EA: SEC            
       SBC    #$52    
       TAX            
       JMP    L740A   
L73F1: CMP    #$A9    
       BCC    L73FB   
       LDA    #$A8    
       STA    $94     
       BCS    L7403   
L73FB: CMP    #$8C    
       BCS    L7403   
       LDA    #$8C    
       STA    $94     
L7403: SEC            
       SBC    #$A8    
       EOR    #$FF    
       TAX            
       INX            
L740A: LDA    $9E     
       JSR    L75F8   
       STA    $CA     
       CMP    #$98    
       BCS    L7428   
       LDA    L766A,X 
       CMP    $CA     
       BCC    L7421   
       LDA    L762A,X 
       STA    $9E     
L7421: LDA    L762A,X 
       STA    $9C     
       BNE    L7439   
L7428: LDA    L768A,X 
       CMP    $CA     
       BCS    L7434   
       LDA    L764A,X 
       STA    $9E     
L7434: LDA    L764A,X 
       STA    $9C     
L7439: LDA    $D0     
       BEQ    L7441   
       DEC    $D0     
       BNE    L744B   
L7441: DEC    $CE     
       BNE    L744B   
       LDA    $CF     
       STA    $CE     
       DEC    $AE     
L744B: CLC            
       LDA    $90     
       ADC    $AE     
       STA    $90     
       LDA    $94     
       CMP    #$7D    
       BCS    L7464   
       LDA    $90     
       CMP    $94     
       BCS    L746C   
       LDA    $94     
       STA    $90     
       BCC    L746C   
L7464: LDA    $94     
       CMP    $90     
       BCS    L746C   
       STA    $90     
L746C: LDA    $90     
       STA    $92     
       LDA    $9E     
       STA    $9D     
       LDA    $B1     
       BNE    L74A6   
       LDA    $94     
       CMP    $92     
       BNE    L74A6   
       INC    $B1     
       JSR    L760E   
       LDA    $94     
       CMP    #$7D    
       BCS    L748F   
       LDA    $BB     
       BEQ    L748F   
       INC    $B9     
L748F: LDA    $AE     
       EOR    #$FF    
       TAX            
       INX            
       CPX    $B0     
       BNE    L74A1   
       LDA    $B0     
       BMI    L74A0   
       INX            
       BPL    L74A1   
L74A0: DEX            
L74A1: STX    $AE     
       JMP    L74AA   
L74A6: LDA    #$00    
       STA    $B1     
L74AA: LDA    $B3     
       BNE    L74D0   
       LDA    $9C     
       CMP    $9D     
       BNE    L74D0   
       INC    $B3     
       JSR    L760E   
       LDA    $AF     
       EOR    #$FF    
       TAX            
       INX            
       CPX    $B0     
       BNE    L74CB   
       LDA    $B0     
       BMI    L74CA   
       INX            
       BPL    L74CB   
L74CA: DEX            
L74CB: STX    $AF     
       JMP    L74D4   
L74D0: LDA    #$00    
       STA    $B3     
L74D4: LDA    $94     
       CMP    #$52    
       BEQ    L74ED   
       CMP    #$A8    
       BEQ    L74ED   
       CMP    #$6F    
       BEQ    L74E6   
       CMP    #$8C    
       BNE    L74F8   
L74E6: LDY    #$00    
       STY    $B2     
       INY            
       STY    $BD     
L74ED: JSR    L760E   
       LDA    $B0     
       EOR    #$FF    
       TAY            
       INY            
       STY    $B0     
L74F8: LDA    $BD     
       BEQ    L750A   
       LDA    $B9     
       CMP    #$02    
       BNE    L7556   
       LDA    $B8     
       EOR    #$01    
       STA    $B8     
       BPL    L7510   
L750A: LDA    $B9     
       BEQ    L7556   
       LDA    $B8     
L7510: TAX            
       CPX    $BC     
       BEQ    L7519   
       STX    $BC     
       BNE    L7540   
L7519: CLC            
       SED            
       LDA    $98,X   
       ADC    #$01    
       STA    $98,X   
       CLD            
       LDY    #$0C    
       STY    AUDC0   
       LDY    #$07    
       STY    AUDF0   
       LDY    #$0F    
       STY    AUDV0   
       CMP    #$21    
       BNE    L7540   
       LDY    #$FF    
       STY    $C3     
       INY            
       STY    $CC     
       INY            
       STY    $C4     
       STY    $C5     
       STY    $B4     
L7540: LDY    #$50    
       STY    $90     
       STY    $92     
       STY    $94     
       LDY    #$1E    
       STY    $BA     
       LDY    #$00    
       STY    $B5     
       STY    $B9     
       STY    $BD     
       STY    $BB     
L7556: LDA    $B4     
       BEQ    L7563   
       LDA    $C6     
       AND    #$03    
       BNE    L7563   
       JSR    L756B   
L7563: LDA    INTIM   
       BNE    L7563   
       JMP    L7017   
L756B: LDY    $C3     
       DEC    $C4     
       BNE    L75A5   
       LDA    #$01    
       STA    $C4     
       INY            
       CPY    #$27    
       BNE    L7580   
       DEC    $C5     
       BMI    L7599   
       LDY    #$00    
L7580: LDA    L7FD3,Y 
       STA    $C4     
       STY    $C3     
       LDA    L7F85,Y 
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC0   
       LDA    L7FAC,Y 
       STA    AUDF0   
       BNE    L75A5   
L7599: LDA    #$00    
       STA    $C5     
       STA    $B4     
       STA    AUDV0   
       STA    AUDC0   
       STA    AUDF0   
L75A5: RTS            

L75A6: STA    $C9     
       STY    $C8     
       SEC            
       SBC    $C8     
       LDY    $C8     
       BMI    L75BF   
       LDY    $C9     
       BPL    L75CF   
       TAY            
       BMI    L75CF   
       INY            
       TYA            
       SEC            
       SBC    #$10    
       BNE    L75CF   
L75BF: LDY    $C9     
       BMI    L75CF   
       TAY            
       AND    #$F0    
       CMP    #$70    
       BCC    L75D0   
       DEY            
       TYA            
       CLC            
       ADC    #$10    
L75CF: TAY            
L75D0: TYA            
       AND    #$0F    
       CMP    #$04    
       BCC    L75F5   
       BNE    L75E4   
       TYA            
       BMI    L75F2   
       AND    #$F0    
       CMP    #$60    
       BCC    L75F1   
       BCS    L75F5   
L75E4: CMP    #$0E    
       BNE    L75F1   
       TYA            
       BMI    L75F3   
       AND    #$F0    
       CMP    #$20    
       BCC    L75F3   
L75F1: TYA            
L75F2: RTS            

L75F3: LDA    #$34    
L75F5: LDA    #$2E    
       RTS            

L75F8: STA    $C9     
       EOR    #$F0    
       CLC            
       ADC    #$70    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $C8     
       LDA    $C9     
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $C8     
       RTS            

L760E: LDA    #$03    
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$0F    
       STA    AUDV0   
       LDA    #$20    
       STA    $AD     
       RTS            

L761F: LDX    #$3F    
L7621: LDA    L7DC0,X 
       STA    $80,X   
       DEX            
       BPL    L7621   
       RTS            

L762A: .byte $E4,$D4,$B4,$A4,$84,$65,$45,$35,$15,$05,$E5,$D5,$B5,$A5,$85,$66
       .byte $46,$36,$16,$06,$E6,$D6,$B6,$A6,$86,$67,$47,$37,$17,$07,$E7,$D7
L764A: .byte $DE,$EE,$0E,$1E,$3E,$4E,$6E,$8D,$AD,$BD,$DD,$ED,$0D,$1D,$3D,$4D
       .byte $6D,$8C,$AC,$BC,$DC,$EC,$0C,$1C,$3C,$4C,$6C,$8B,$AB,$BB,$DB,$EB
L766A: .byte $48,$49,$4B,$4C,$4E,$50,$52,$53,$55,$56,$58,$59,$5B,$5C,$5E,$60
       .byte $62,$63,$65,$66,$68,$69,$6B,$6C,$6E,$70,$72,$73,$75,$76,$78,$79
L768A: .byte $E9,$E8,$E6,$E5,$E3,$E2,$E0,$DE,$DC,$DB,$D9,$D8,$D6,$D5,$D3,$D2
       .byte $D0,$CE,$CC,$CB,$C9,$C8,$C6,$C5,$C3,$C2,$C0,$BE,$BC,$BB,$B9,$B8
L76AA: .byte $44,$44,$44,$44,$44,$24,$14,$F4,$E4,$C4,$B4,$94,$84,$55,$45,$25
       .byte $15,$F5,$E5,$C5,$B5,$95,$85,$56,$46,$26,$16,$F6,$E6,$C6,$B6,$B6
L76CA: .byte $CD,$ED,$FD,$1D,$2D,$4D,$5D,$8C,$9C,$BC,$CC,$EC,$FC,$1C,$2C,$4C
       .byte $5C,$8B,$9B,$BB,$CB,$EB,$FB,$1B,$2B,$4B,$5B,$8A,$9A,$BA,$CA,$CA
L76EA: .byte $42,$42,$42,$42,$42,$44,$45,$47,$48,$4A,$4B,$4D,$4E,$51,$52,$54
       .byte $55,$57,$58,$5A,$5B,$5D,$5E,$61,$62,$64,$65,$67,$68,$6A,$6B,$6B
L770A: .byte $DA,$D8,$D7,$D5,$D4,$D2,$D1,$CE,$CD,$CB,$CA,$C8,$C7,$C5,$C4,$C2
       .byte $C1,$BE,$BD,$BB,$BA,$B8,$B7,$B5,$B4,$B2,$B1,$AE,$AD,$AB,$AA,$AA
L772A: .byte $10,$0F
L772C: .byte $07,$08
L772E: .byte $2C,$CC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$70,$F8,$B4
       .byte $37,$33,$20,$20,$30,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$30,$30,$70,$F8,$B4,$37,$3B,$48,$88,$CC,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$30,$30,$70
       .byte $F8,$B8,$3C,$3C,$48,$88,$CC,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$30,$30,$73,$FF,$B0,$30,$38,$48,$88,$CC
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L77FD: JMP    L7368   
L7800: LDX    INTIM   
       BNE    L7800   
       STA    WSYNC   
       STX    VBLANK  
       STX    COLUBK  
       LDA    $C6     
       LSR            
       BCC    L7813   
       JMP    L7A93   
L7813: STA    HMCLR   
       STA    WSYNC   
       NOP            
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       STX    NUSIZ1  
       PHA            
       NOP            
       STA    RESM0   
       LDA    #$E0    
       STA    HMM0    
       LDA    #$D0    
       STA    HMM1    
       PLA            
       STA    RESP0   
       NOP            
       NOP            
       NOP            
       DEX            
       STX    REFP1   
       STA    RESP1   
       LDA    $A9     
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUP1  
       NOP            
       NOP            
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       STA    COLUBK  
       STX    ENAM0   
       STX    ENAM1   
       LDA    #$10    
       STX    HMM0    
       STA    HMM1    
       LDX    #$18    
L7857: STA    WSYNC   
       STA    HMOVE   
       NOP            
       TXA            
       AND    #$03    
       BNE    L7869   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       BEQ    L7871   
L7869: LDA    #$F0    
       STA    HMM0    
       LDA    #$10    
       STA    HMM1    
L7871: DEX            
       BNE    L7857   
       LDX    #$0F    
L7876: STA    WSYNC   
       STA    HMOVE   
       LDA    L7DB0,X 
       STA    GRP0    
       STA    GRP1    
       LDA    #$F0    
       STA    HMM0    
       LDY    #$10    
       STY    HMM1    
       TXA            
       AND    #$01    
       BEQ    L7896   
       LDA    #$F0    
       STA    HMP0    
       STY    HMP1    
       BNE    L789A   
L7896: STA    HMP0    
       STA    HMP1    
L789A: TXA            
       AND    #$03    
       CMP    #$03    
       BNE    L78A7   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
L78A7: DEX            
       BPL    L7876   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       LDX    #$12    
L78B4: STA    WSYNC   
       STA    HMOVE   
       TXA            
       AND    #$03    
       CMP    #$02    
       BNE    L78C7   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       BEQ    L78CF   
L78C7: LDA    #$F0    
       STA    HMM0    
       LDA    #$10    
       STA    HMM1    
L78CF: DEX            
       BNE    L78B4   
       LDA    #$01    
       STA    CTRLPF  
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       STA    WSYNC   
       STA    HMOVE   
       STA    ENAM0   
       STA    ENAM1   
       LDA    $A8     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF2     
       LDA    $9A     
       AND    #$0F    
       TAX            
       LDA    $9B     
       AND    #$0F    
       STA    WSYNC   
       STA    HMOVE   
L78F9: DEX            
       BNE    L78F9   
       STA    RESP0   
       TAX            
       STA    WSYNC   
       STA    HMOVE   
L7903: DEX            
       BNE    L7903   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAD   
       LDA    $9A     
       STA    HMP0    
       LDA    $9B     
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAD   
       LDA    $A1     
       STA    REFP0   
       LDA    $A2     
       STA    REFP1   
       STA    HMCLR   
       LDX    #$1E    
L792A: STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L792A   
       LDX    #$0A    
       LDY    #$00    
L7935: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       LDA    ($96),Y 
       STA    PF2     
       INY            
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L7935   
       JSR    L7DAB   
       JSR    L7DAB   
       STX    PF2     
       DEX            
       STX    ENAM0   
       STX    ENAM1   
       LDX    #$0A    
L7964: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INY            
       TXA            
       LSR            
       BCS    L7981   
       STA    HMCLR   
       BCC    L7989   
L7981: LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
L7989: STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAB   
       JSR    L7DAF   
       LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       DEX            
       BNE    L7964   
       LDA    $A5     
       STA    COLUPF  
       DEX            
       LDA    #$0F    
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STX    PF2     
       STA    COLUP1  
       INY            
       STA    HMCLR   
       LDX    #$04    
L79C2: DEX            
       BNE    L79C2   
       STX    PF2     
       STX    PF1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       JSR    L7DAD   
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       LDX    #$04    
L79DA: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INY            
       TXA            
       LSR            
       BCC    L79F7   
       STA    HMCLR   
       BCS    L79FF   
L79F7: LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
L79FF: STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAD   
       LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       DEX            
       BNE    L79DA   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INY            
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$FF    
       STA    PF2     
       LDA    #$3F    
       STA    PF1     
       LDX    #$09    
L7A34: DEX            
       BNE    L7A34   
       LDX    #$0E    
       NOP            
       NOP            
       LDA    #$00    
       STA    PF2     
       STA    PF1     
L7A41: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INY            
       TXA            
       LSR            
       BCS    L7A62   
       LDA    #$00    
       STA    HMM0    
       STA    HMM1    
       BEQ    L7A6A   
L7A62: LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
L7A6A: STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAD   
       LDA    #$10    
       STA    HMM0    
       LDA    #$F0    
       STA    HMM1    
       DEX            
       BNE    L7A41   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       JMP    L7D3C   
L7A93: STA    HMCLR   
       STA    WSYNC   
       NOP            
       STX    GRP0    
       STX    GRP1    
       STX    NUSIZ0  
       STX    NUSIZ1  
       DEX            
       STX    REFP1   
       LDA    $A9     
       STA    COLUP0  
       STA    COLUP1  
       STA    COLUPF  
       STA    COLUPF  
       INX            
       STA    RESP0   
       INX            
       STX    CTRLPF  
       NOP            
       LDY    #$00    
       NOP            
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $A7     
       STA    COLUBK  
       LDA    $AD     
       STA    NUSIZ1  
       LDX    #$0C    
L7AC7: STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L7AC7   
       LDX    #$0F    
L7AE1: STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       LDA    L7DB0,X 
       STA    GRP0    
       STA    GRP1    
       LDA    #$F0    
       STA    HMP0    
       LDA    #$10    
       STA    HMP1    
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       LDA    L7DB0,X 
       STA    GRP0    
       STA    GRP1    
       JSR    L7DAB   
       NOP            
       STA    HMCLR   
       DEX            
       BPL    L7AE1   
       LDX    #$09    
L7B18: LDA    #$00    
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       STA    GRP1    
       STA    REFP1   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BNE    L7B18   
       LDA    $A8     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       DEX            
       STX    PF2     
       LDA    $9A     
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STA    HMOVE   
L7B59: DEX            
       BNE    L7B59   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       LDA    $9B     
       AND    #$0F    
       TAX            
       STA    WSYNC   
       STA    HMOVE   
L7B78: DEX            
       BNE    L7B78   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       LDA    $A1     
       STA    REFP0   
       LDA    $A2     
       STA    REFP1   
       LDA    $9A     
       STA    HMP0    
       LDA    $9B     
       STA    HMP1    
       LDX    #$0F    
L7BA0: STA    WSYNC   
       STA    HMOVE   
       JSR    L7DAD   
       STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INY            
       DEX            
       BNE    L7BA0   
       LDX    #$0A    
       STY    $D1     
       LDY    #$00    
       STY    $D2     
L7BC5: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       LDA    ($96),Y 
       STA    PF2     
       INC    $D2     
       LDY    $D1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       DEX            
       BNE    L7BC5   
       JSR    L7DAD   
       STX    PF2     
       LDX    #$0A    
L7BFF: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INC    $D2     
       LDY    $D1     
       LDA    $A9     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       DEX            
       BNE    L7BFF   
       LDA    $A5     
       STA    COLUPF  
       LDA    #$0F    
       JSR    L7DAF   
       NOP            
       DEX            
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STX    PF2     
       STA    COLUP1  
       INC    $D2     
       LDY    $D1     
       LDX    #$02    
L7C5B: DEX            
       BNE    L7C5B   
       LDA    $A9     
       STX    PF2     
       STX    PF1     
       STA    COLUPF  
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       LDX    #$04    
L7C7C: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INC    $D2     
       LDY    $D1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       DEX            
       BNE    L7C7C   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INC    $D2     
       LDY    $D1     
       LDY    $D1     
       NOP            
       NOP            
       NOP            
       LDA    $A5     
       STA    COLUPF  
       LDA    #$FF    
       STA    PF2     
       LDA    #$3F    
       STA    PF1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       JSR    L7DAD   
       LDX    #$0E    
       LDX    #$0E    
       LDA    #$00    
       STA    PF2     
       STA    PF1     
       LDA    $A9     
       STA    COLUPF  
L7CF9: STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
       INC    $D2     
       LDY    $D1     
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($90),Y 
       STA    ENAM0   
       LDA    ($92),Y 
       STA    ENAM1   
       LDA    ($94),Y 
       STA    ENABL   
       INC    $D1     
       LDY    $D2     
       DEX            
       BNE    L7CF9   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($88),Y 
       STA    GRP0    
       LDA    ($8A),Y 
       STA    GRP1    
       LDA    ($8C),Y 
       STA    COLUP0  
       LDA    ($8E),Y 
       STA    COLUP1  
L7D3C: LDY    #$00    
       LDX    #$02    
       LDA    $A6     
       STA    WSYNC   
       STA    HMOVE   
       STA    COLUBK  
       STY    ENAM0   
       STY    ENAM1   
       STY    ENABL   
       STY    GRP0    
       STY    GRP1    
L7D52: DEX            
       BNE    L7D52   
       STA    RESP0   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$04    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDY    #$07    
L7D6B: STA    WSYNC   
       STA    HMOVE   
       LDA    $AA     
       STA    COLUP0  
       STA    COLUP1  
       LDA    ($80),Y 
       STA    GRP0    
       LDA    ($84),Y 
       STA    GRP1    
       LDA    ($82),Y 
       LDX    $A5     
       LDX    $AB     
       STX    COLUP0  
       STX    COLUP1  
       STA    GRP0    
       LDA    ($86),Y 
       STA    GRP1    
       DEY            
       BPL    L7D6B   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$00    
       STX    GRP0    
       STX    GRP1    
       DEX            
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STX    VBLANK  
       LDA    #$1F    
       STA    TIM64T  
       JMP    L77FD   
L7DAB: PHA            
       PLA            
L7DAD: PHA            
       PLA            
L7DAF: RTS            

L7DB0: .byte $F8,$FC,$FC,$FC,$FC,$FE,$FC,$FE,$FE,$FE,$FE,$FF,$FE,$FF,$FF,$FF
L7DC0: .byte $00,$7E,$00,$7E,$00,$7E,$00,$7E,$30,$77,$30,$77,$00,$7F,$29,$7F
       .byte $50,$7E,$50,$7E,$50,$7E,$71,$7F,$00,$00,$C8,$C8,$09,$09,$09,$1F
       .byte $1F,$00,$FF,$00,$00
L7DE5: .byte $44,$2C,$84,$86,$1C,$00,$00,$FF,$10,$00,$01,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3C,$3C,$7E,$66,$66,$66
       .byte $66,$7E,$3C,$3C,$3C,$18,$18,$18,$18,$38,$18,$7E,$7E,$60,$7C,$3E
       .byte $06,$7E,$3C,$3C,$7E,$06,$0C,$0C,$06,$7E,$3C,$0C,$0C,$7E,$7E,$6C
       .byte $6C,$3C,$1C,$3C,$7E,$06,$3E,$7C,$60,$7E,$7E,$3C,$7E,$66,$7E,$7C
       .byte $60,$7E,$3C,$60,$30,$18,$0C,$06,$06,$7E,$7E,$3C,$7E,$66,$3C,$3C
       .byte $66,$7E,$3C,$3C,$7E,$06,$3E,$7E,$66,$7E,$3C,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$2C,$2C,$18,$18,$18,$18
       .byte $18,$2C,$2C,$18,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$2C,$2C,$C8,$C8,$C8,$C8,$C8,$2C,$2C,$C8,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$1C,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
L7F85: .byte $C8,$C8,$14,$C8,$14,$C8,$14,$C8,$14,$C8,$C8,$C8,$C8,$C8,$C8,$C8
       .byte $C8,$C8,$C8,$C8,$C8,$C8,$C8,$C8,$14,$C8,$58,$C8,$C8,$C8,$14,$C8
       .byte $C8,$C8,$C8,$58,$C8,$C8,$C0
L7FAC: .byte $1F,$0F,$04,$14,$04,$1F,$04,$14,$04,$1B,$0D,$0B,$12,$0B,$1B,$0B
       .byte $12,$0F,$14,$10,$0F,$0D,$14,$0D,$04,$0B,$1F,$14,$0B,$14,$04,$14
       .byte $0D,$14,$0F,$1F,$07,$1F,$1F
L7FD3: .byte $02,$01,$01,$02,$02,$02,$02,$02,$02,$02,$01,$01,$02,$02,$02,$02
       .byte $02,$02,$02,$01,$01,$03,$02,$01,$01,$03,$01,$01,$01,$01,$01,$01
       .byte $01,$01,$02,$02,$02,$01,$01
L7FFA: .byte $00,$29,$00,$70
L7FFE: .byte $F0,$0F
