; Disassembly of roms/Mr. Postman.bin
; Disassembled Tue Oct  6 15:21:52 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Mr. Postman.bin
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
RESM1   =  $13
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
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
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
       TXA            
LF004: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF004   
LF00A: JSR    LFFF5   
       LDA    #$05    
       STA    $B1     
       LDA    #$04    
       STA    $B7     
       LDA    #$00    
       LDX    #$0A    
LF019: STA    $80,X   
       DEX            
       BPL    LF019   
       LDA    #$02    
       STA    $81     
       JSR    LFE87   
       LDA    #$FA    
       STA    $B0     
       LDA    #$FF    
       STA    $B3     
       STA    $CD     
       STA    $CF     
       STA    $D1     
       LDA    #$F7    
       STA    $B8     
       JSR    LF8F4   
       JSR    LF439   
LF03D: LDA    $92     
       LDX    #$02    
       JSR    LF7B2   
       LDX    $83     
       LDA    #$80    
       CPX    #$05    
       BEQ    LF04E   
       LDA    $8E     
LF04E: LDX    #$01    
       JSR    LF7B2   
LF053: LDA    INTIM   
       BNE    LF053   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    WSYNC   
       LDA    #$12    
       STA    T1024T  
       LDA    #$00    
       STA    COLUBK  
       STA    $AD     
       LDX    #$06    
LF06D: STA    WSYNC   
       DEX            
       BNE    LF06D   
       LDA    $84     
       STA    REFP0   
       LDA    $94     
       LDX    #$03    
       JSR    LF7B2   
       LDA    $83     
       CMP    #$02    
       BCS    LF087   
       LDA    #$50    
       BNE    LF089   
LF087: LDA    $90     
LF089: LDX    #$04    
       JSR    LF7B2   
       LDA    $83     
       CMP    #$05    
       BNE    LF097   
       JMP    LF18D   
LF097: CMP    #$02    
       BCS    LF0EB   
       LDA    #$1C    
       STA    COLUPF  
       LDA    #$FF    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$11    
       STA    CTRLPF  
       JSR    LF504   
       LDA    #$20    
       STA    NUSIZ0  
       LDX    #$AA    
       LDA    #$02    
       STA    ENABL   
       LDA    #$0E    
       STA    $AB     
       LDA    #$A6    
       STA    $AC     
       JSR    LFB8F   
       LDA    #$2A    
       STA    COLUPF  
       LDA    #$A0    
       STA    $AC     
       JSR    LFB8F   
       LDA    #$BC    
       STA    COLUPF  
       LDA    #$8C    
       STA    $AC     
       JSR    LFB8F   
       LDA    #$EA    
       STA    COLUPF  
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JSR    LF755   
       JMP    LF1AF   
LF0EB: STA    WSYNC   
       STA    HMOVE   
       LDA    #$67    
       STA    COLUP0  
       LDA    #$49    
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       LDA    $C7     
       AND    #$0F    
       STA    NUSIZ1  
       LDA    #$00    
       STA    $BF     
       LDA    #$10    
       STA    CTRLPF  
       LDX    #$A1    
       LDY    #$08    
       STA    HMCLR   
LF10F: STA    WSYNC   
       DEY            
       BMI    LF118   
       LDA    ($B2),Y 
       STA    GRP1    
LF118: TXA            
       LSR            
       BCC    LF126   
       LDA    #$00    
       CPX    $91     
       BNE    LF124   
       LDA    #$FF    
LF124: STA    ENAM0   
LF126: DEX            
       CPX    #$96    
       BNE    LF10F   
       JSR    LF504   
       LDX    #$96    
       LDY    #$05    
LF132: LDA    LF6AF,Y 
       STA    WSYNC   
       STA    PF1     
       STA    PF2     
       CPY    #$02    
       BNE    LF143   
       LDA    #$02    
       STA    ENABL   
LF143: DEY            
       TXA            
       LSR            
       BCC    LF152   
       LDA    #$00    
       CPX    $91     
       BNE    LF150   
       LDA    #$FF    
LF150: STA    ENAM0   
LF152: DEX            
       CPX    #$90    
       BNE    LF132   
       LDY    $83     
       LDA    LFFC5,Y 
       STA    COLUPF  
       LDA    #$11    
       STA    CTRLPF  
       LDA    $95     
       STA    $94     
       LDA    $99     
       STA    $AC     
       JSR    LF656   
       JSR    LF600   
       JSR    LF600   
       JSR    LF600   
       JSR    LF600   
       LDA    #$00    
       STA    ENABL   
       STA    ENAM0   
       STA    $AC     
       LDA    #$0E    
       STA    $AB     
       STA    CTRLPF  
       JSR    LFB89   
       JMP    LF1AF   
LF18D: LDX    #$00    
       LDA    $8C     
       JSR    LF7B2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$FE    
       STA    $A9     
       LDA    #$00    
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDX    #$AA    
       STA    HMCLR   
       JSR    LF57E   
LF1AF: LDA    #$00    
       STA    WSYNC   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    GRP1    
       STA    GRP0    
       LDA    #$C6    
       JSR    LF86A   
       JSR    LF93C   
       LDA    $B1     
       BNE    LF1CF   
       JSR    LFFF5   
       JMP    LF2A0   
LF1CF: LDA    #$F5    
       STA    $D7     
       LDA    #$DF    
       STA    $D6     
       LDA    #$20    
       STA    $AC     
       LDA    $83     
       CMP    #$01    
       BNE    LF1E7   
       LDA    #$00    
       STA    $88     
       BEQ    LF20D   
LF1E7: CMP    #$05    
       BNE    LF24B   
       LDA    #$F6    
       STA    $D7     
       LDA    #$CF    
       STA    $D6     
       LDA    #$30    
       STA    $AC     
       LDA    $87     
       BEQ    LF20D   
       LDA    #$04    
       STA    AUDC0   
       LDA    $AE     
       ASL            
       ASL            
       ASL            
       ASL            
       EOR    #$1F    
       STA    AUDF0   
       LDY    #$09    
       BNE    LF249   
LF20D: LDY    $89     
       BNE    LF217   
       LDA    $AC     
       STA    $89     
       BNE    LF22B   
LF217: LDA    $AE     
       AND    #$0F    
       BNE    LF22F   
       DEC    $89     
       BNE    LF22B   
       LDA    $83     
       CMP    #$01    
       BNE    LF22B   
       LDA    #$01    
       STA    $88     
LF22B: LDA    #$0C    
       STA    AUDC0   
LF22F: LDY    $89     
       LDA    ($D6),Y 
       STA    AUDF0   
       LDY    #$07    
       CMP    #$80    
       BCS    LF249   
       LDY    #$00    
       CMP    #$40    
       BCS    LF249   
       LDA    $AE     
       AND    #$0F    
       EOR    #$0F    
       LSR            
       TAY            
LF249: STY    AUDV0   
LF24B: LDA    $83     
       CMP    #$02    
       BCC    LF2A0   
       LDY    $8A     
       BNE    LF288   
       CMP    #$05    
       BEQ    LF2A0   
       LDA    $87     
       BNE    LF274   
       LDY    #$00    
       LDA    $D5     
       BEQ    LF26F   
       DEC    $D5     
       ASL            
       TAY            
       LDA    #$08    
       STA    AUDC0   
       LDA    #$04    
       STA    AUDF0   
LF26F: STY    AUDV0   
       JMP    LF2A0   
LF274: LDY    #$07    
       LDA    $8B     
       CMP    #$28    
       BCC    LF280   
       LDY    #$04    
       LSR            
       LSR            
LF280: EOR    #$1F    
       LDX    #$08    
       STX    AUDV0   
       BNE    LF298   
LF288: DEC    $8A     
       LDA    $8A     
       STA    AUDV0   
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFEF5,Y 
       LDY    #$04    
LF298: STA    AUDF0   
       STY    AUDC0   
       LDA    #$00    
       STA    AUDV1   
LF2A0: LDA    INTIM   
       BNE    LF2A0   
       LDX    #$04    
LF2A7: STA    WSYNC   
       DEX            
       BPL    LF2A7   
       STA    COLUBK  
       STA    COLUPF  
       JSR    LF7C6   
       LDA    #$1B    
       STA    TIM64T  
       INC    $AE     
       LDA    #$00    
       STA    $D2     
       LDA    $B1     
       BEQ    LF2CD   
       JSR    LF6B5   
       LDA    $88     
       BEQ    LF2ED   
       DEC    $88     
       BEQ    LF2D3   
LF2CD: JMP    LF427   
LF2D0: JMP    LF3A3   
LF2D3: LDA    $83     
       CMP    #$02    
       BCC    LF2DF   
       LDA    #$60    
       STA    $8A     
       BNE    LF2CD   
LF2DF: JSR    LFE85   
       LDY    $83     
       LDA    LF9EA,Y 
       JSR    LF8E5   
       JMP    LF32B   
LF2ED: LDA    $8A     
       BEQ    LF2F7   
       DEC    $8A     
       BEQ    LF2DF   
       BNE    LF2CD   
LF2F7: LDA    $87     
       BEQ    LF318   
       JSR    LFFDC   
       LDA    $83     
       CMP    #$02    
       BCS    LF30E   
       LDA    #$06    
       JSR    LF52C   
       LDA    LFF3E,Y 
       STA    AUDF0   
LF30E: DEC    $87     
       BNE    LF2D0   
       JSR    LFFBD   
       JMP    LF427   
LF318: JSR    LFD3B   
       LDA    $87     
       BNE    LF2D0   
       JSR    LFDBD   
       JSR    LF8E5   
       JSR    LFE07   
       JSR    LF8E5   
LF32B: LDA    $AE     
       AND    #$01    
       BNE    LF359   
       LDA    SWCHA   
       EOR    #$FF    
       AND    #$F0    
       STA    $A9     
       JSR    LFA80   
       LDA    $AD     
       BEQ    LF351   
       LDA    $83     
       BNE    LF351   
       STA    $D3     
       LDA    #$70    
       STA    $AF     
       LDA    #$30    
       STA    $87     
       BNE    LF2ED   
LF351: LDA    $AA     
       CMP    $8B     
       BCS    LF359   
       STA    $8B     
LF359: LDA    $AE     
       AND    #$03    
       BNE    LF3A0   
       LDA    $AF     
       LDX    $83     
       CPX    #$01    
       BCC    LF374   
       BEQ    LF3A3   
       CLC            
       ADC    #$10    
       CMP    #$70    
       BCC    LF39E   
       LDA    #$50    
       BNE    LF39E   
LF374: LDX    $A9     
       BEQ    LF39E   
       TAY            
       LDA    #$10    
       LDX    $86     
       BNE    LF39E   
       LDX    $85     
       BNE    LF39E   
       TYA            
       LDX    #$98    
       CPX    $8C     
       BNE    LF395   
       CLC            
       ADC    #$10    
       CMP    #$50    
       BCC    LF39E   
       LDA    #$30    
       BNE    LF39E   
LF395: CLC            
       ADC    #$10    
       CMP    #$30    
       BCC    LF39E   
       LDA    #$00    
LF39E: STA    $AF     
LF3A0: JSR    LFCE9   
LF3A3: LDA    #$0A    
       STA    $AB     
       LDA    $AE     
       TAX            
       AND    #$01    
       BNE    LF3C5   
       TXA            
       JSR    LFBDD   
       LDA    $AE     
       AND    #$07    
       BNE    LF3C5   
       LDA    $B2     
       CLC            
       ADC    #$08    
       CMP    #$60    
       BCC    LF3C3   
       LDA    #$50    
LF3C3: STA    $B2     
LF3C5: LDA    $83     
       CMP    #$02    
       BCS    LF3DF   
       LDA    $AE     
       AND    #$01    
       BNE    LF3F1   
       LDA    $C1     
       BEQ    LF3D9   
       DEC    $C1     
       BNE    LF3DC   
LF3D9: JSR    LFC6B   
LF3DC: JMP    LF3F1   
LF3DF: DEC    $C1     
       BNE    LF3F1   
       LDY    $83     
       LDA    LFFD7,Y 
       STA    $C1     
       LDA    #$24    
       STA    $AB     
       JSR    LFCAE   
LF3F1: LDA    $83     
       CMP    #$02    
       BCC    LF3FD   
       JSR    LF4BD   
       JMP    LF400   
LF3FD: JSR    LF439   
LF400: JSR    LFD8C   
       LDA    $83     
       BEQ    LF40F   
       CMP    #$01    
       BEQ    LF427   
       CMP    #$05    
       BCC    LF427   
LF40F: LDA    $AE     
       AND    #$1F    
       BNE    LF427   
       LDA    $82     
       ORA    $81     
       BNE    LF41F   
       ORA    $80     
       BEQ    LF427   
LF41F: LDA    #$01    
       JSR    LF8D0   
       JMP    LF427   
LF427: JSR    LF8F4   
       LDA    SWCHB   
       LSR            
       BCC    LF436   
       LSR            
       BCC    LF436   
       JMP    LF03D   
LF436: JMP    LF00A   
LF439: LDA    $AE     
       AND    #$07    
       BNE    LF47B   
       INC    $BE     
       LDA    $BE     
       TAY            
       CMP    #$40    
       BCC    LF44E   
       LDY    #$00    
       STY    $BE     
       BEQ    LF459   
LF44E: CMP    #$20    
       BCC    LF459   
       LDA    $BE     
       EOR    #$1F    
       AND    #$1F    
       TAY            
LF459: LDA    LF47D,Y 
       STA    $BD     
       LDA    LF49D,Y 
       STA    $90     
       LDA    #$F0    
       CPY    #$10    
       BCS    LF46B   
       LDA    #$10    
LF46B: STA    $B5     
       LDA    $BD     
       LSR            
       LSR            
       LSR            
       STA    $A9     
       LDA    #$5B    
       CLC            
       ADC    $A9     
       STA    $8F     
LF47B: RTS            

LF47C: .byte $F0
LF47D: .byte $F0,$E0,$D0,$C0,$B0,$A0,$90,$80,$70,$60,$50,$40,$30,$20,$10,$00
       .byte $10,$20,$30,$40,$50,$60,$70,$80,$90,$A0,$B0,$C0,$D0,$E0,$F0,$F0
LF49D: .byte $20,$22,$24,$25,$27,$2A,$2D,$30,$32,$38,$3C,$3F,$43,$47,$4C,$53
       .byte $56,$5A,$5E,$61,$65,$69,$6D,$6F,$72,$76,$77,$79,$7C,$7E,$7E,$7E
LF4BD: LDA    $BD     
       LSR            
       LSR            
       LSR            
       LSR            
       ORA    #$20    
       STA    $B4     
       LDA    $8F     
       DEC    $8F     
       CMP    $B4     
       BCS    LF503   
       LDA    #$AA    
       STA    $8F     
       LDA    $8E     
       LSR            
       AND    #$03    
       TAX            
       LDY    LF6A9,X 
       STY    $90     
       LDA    #$F0    
       CPX    #$00    
       BEQ    LF4F5   
       LDA    #$10    
       CPX    #$03    
       BEQ    LF4F5   
       LDA    $8E     
       LSR            
       LSR            
       LSR            
       AND    #$01    
       TAX            
       LDA    LF6AD,X 
LF4F5: STA    $B5     
       LDA    $95     
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    LF47D,Y 
       STA    $BD     
LF503: RTS            

LF504: LDA    $8C     
       LDX    #$00    
       JSR    LF7B2   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    NUSIZ0  
       LDA    #$25    
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP1  
       LDA    #$1C    
       STA    COLUPF  
       LDA    #$FF    
       STA    $AA     
       STA    $A9     
       STA    HMCLR   
       LDA    $B5     
       STA    HMBL    
       RTS            

LF52C: TAY            
       BNE    LF538   
LF52F: TAY            
       LDA    #$0C    
       STA    AUDC0   
       LDA    $A9     
       BEQ    LF541   
LF538: LDA    $AE     
       ASL            
       CPY    #$06    
       BNE    LF541   
       EOR    #$0F    
LF541: STA    AUDV0   
       LDA    $AE     
       AND    #$07    
       BNE    LF557   
       TYA            
       INC    $D3     
       LDY    $D3     
       CMP    $D3     
       BCS    LF554   
       LDY    #$00    
LF554: STY    $D3     
       RTS            

LF557: LDY    $D3     
       RTS            

LF55A: LDA    $86     
       BNE    LF564   
LF55E: LDA    $8B     
       EOR    #$FF    
       LSR            
       LSR            
LF564: LSR            
       LDX    #$0A    
       LDY    #$04    
       BNE    LF577   
LF56B: LDA    $8B     
       SEC            
       SBC    #$14    
       EOR    #$FF    
       LSR            
       LDX    #$06    
       LDY    #$0C    
LF577: STX    AUDV0   
       STY    AUDC0   
       STA    AUDF0   
       RTS            

LF57E: LDY    $A9     
       BPL    LF58E   
       LDA    #$00    
       CPX    $8B     
       BNE    LF597   
       LDY    #$0F    
       STY    $A9     
       BNE    LF597   
LF58E: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       DEC    $A9     
LF597: STA    WSYNC   
       STA    GRP0    
       TXA            
       LSR            
       BCC    LF5B2   
       LSR            
       TAY            
       CPY    #$0B    
       BCS    LF5C9   
       LDA    LFF32,Y 
       STA    COLUP1  
       LDA    LF9DE,Y 
       STA    GRP1    
       JMP    LF5C9   
LF5B2: LSR            
       LSR            
       LSR            
       TAY            
       ADC    #$73    
       STA    COLUPF  
       LDA    LF9BD,Y 
       STA    PF0     
       LDA    LF9C8,Y 
       STA    PF1     
       LDA    LF9D3,Y 
       STA    PF2     
LF5C9: DEX            
       BNE    LF57E   
       RTS            

LF5CD: .byte $2F,$2F,$2F,$2F,$2F,$98,$98,$98,$2F,$2F,$2F,$2F,$2F,$2F,$2F,$2F
       .byte $FF,$FF,$FF,$53,$13,$93,$93,$11,$0F,$1A,$17,$13,$93,$11,$0F,$0F
       .byte $0F,$0F,$8F,$11,$91,$0F,$0C,$0F,$13,$1A,$17,$13,$93,$11,$0F,$0F
       .byte $0F,$0F,$8F
LF600: LDA    $94     
       STA    WSYNC   
       SEC            
LF605: SBC    #$0F    
       BCS    LF605   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM1    
       STA    RESM1   
       STA    WSYNC   
       STA    HMOVE   
       LDY    $A9     
       BPL    LF623   
       CPX    $8B     
       BNE    LF62C   
       LDY    #$0F    
       STY    $A9     
LF623: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       STA    GRP0    
LF62C: DEC    $A9     
       DEC    $A9     
       LDY    $BF     
       LDA.wy $00C3,Y 
       AND    #$3F    
       STA    NUSIZ1  
       LDA.wy $0099,Y 
       ASL            
       STA    ENAM1   
       LDA    #$1F    
       CPY    #$03    
       BEQ    LF648   
       LDA.wy $009A,Y 
LF648: STA    $AC     
       LDA.wy $0096,Y 
       STA    $94     
       INC    $BF     
       STA    HMCLR   
       JMP    LF6A3   
LF656: LDY    $A9     
       BPL    LF666   
       CPX    $8B     
       BNE    LF662   
       LDY    #$0F    
       STY    $A9     
LF662: LDA    #$00    
       BEQ    LF66F   
LF666: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       DEC    $A9     
LF66F: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       TXA            
       LSR            
       BCS    LF693   
       CPX    $8F     
       BCS    LF683   
       LDY    #$00    
       STY    ENABL   
       BEQ    LF6A3   
LF683: LDA    $AD     
       ADC    $BD     
       STA    $AD     
       STA    HMCLR   
       BCC    LF6A3   
       LDA    $B5     
       STA    HMBL    
       BCS    LF6A3   
LF693: LDY    #$00    
       STY    ENAM1   
       LSR            
       BCS    LF6A3   
       LDY    #$00    
       CPX    $91     
       BNE    LF6A1   
       DEY            
LF6A1: STY    ENAM0   
LF6A3: DEX            
       CPX    $AC     
       BCS    LF656   
       RTS            

LF6A9: .byte $21,$45,$71,$95
LF6AD: .byte $F0,$10
LF6AF: .byte $00,$44,$44,$6C,$38,$10
LF6B5: LDA    $83     
       BNE    LF6BD   
       LDA    #$60    
       BNE    LF6C3   
LF6BD: CMP    #$02    
       BNE    LF6CF   
       LDA    #$90    
LF6C3: STA    $CC     
       CLC            
       ADC    #$0F    
       STA    $CE     
       CLC            
       ADC    #$0F    
       STA    $D0     
LF6CF: RTS            

LF6D0: .byte $5D,$5D,$5D,$1D,$9D,$9D,$1A,$17,$13,$11,$13,$13,$1A,$1A,$1A,$17
       .byte $13,$13,$11,$11,$11,$13,$13,$13,$0C,$0E,$0F,$0E,$0F,$11,$0F,$0E
       .byte $0E,$13,$13,$13,$1A,$1A,$1A,$17,$13,$13,$11,$11,$11,$13,$13,$13
LF700: LDY    $A9     
       BPL    LF710   
       CPX    $8B     
       BNE    LF70C   
       LDY    #$0F    
       STY    $A9     
LF70C: LDA    #$00    
       BEQ    LF719   
LF710: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       DEC    $A9     
LF719: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDY    $AA     
       BPL    LF72D   
       CPX    $8D     
       BNE    LF73B   
       LDY    #$07    
       STY    $AA     
       BNE    LF73B   
LF72D: LDA    ($B2),Y 
       STA    GRP1    
       DEC    $AA     
       LDY    #$04    
       TXA            
       LSR            
       BCC    LF74A   
       BCS    LF746   
LF73B: LDY    #$04    
       TXA            
       LSR            
       BCC    LF74A   
       CPX    $93     
       BNE    LF746   
       DEY            
LF746: STY    ENAM1   
       BNE    LF751   
LF74A: CPX    $91     
       BNE    LF74F   
       DEY            
LF74F: STY    ENAM0   
LF751: DEX            
       BNE    LF700   
       RTS            

LF755: STA    HMCLR   
       LDA    $AD     
       ADC    $BD     
       STA    $AD     
       BCC    LF763   
       LDA    $B5     
       STA    HMBL    
LF763: LDY    $A9     
       BPL    LF773   
       CPX    $8B     
       BNE    LF76F   
       LDY    #$0F    
       STY    $A9     
LF76F: LDA    #$00    
       BEQ    LF77C   
LF773: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       DEC    $A9     
LF77C: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       TXA            
       LDY    #$30    
       AND    #$02    
       BNE    LF78B   
       LDY    #$04    
LF78B: STY    PF0     
       DEX            
       CPX    $8F     
       BCS    LF755   
       LDA    #$00    
       STA    ENABL   
       LDA    #$30    
       STA    PF0     
       JMP    LF700   
LF79D: LDA    $A9     
       BEQ    LF7B1   
       ASL            
       BCC    LF7A9   
       CPX    #$98    
       BCS    LF7B1   
       INX            
LF7A9: ASL            
       BCC    LF7B1   
       CPX    #$0C    
       BCC    LF7B1   
       DEX            
LF7B1: RTS            

LF7B2: SEC            
       STA    WSYNC   
LF7B5: SBC    #$0F    
       BCS    LF7B5   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       STA    WSYNC   
       RTS            

LF7C6: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       RTS            

LF7D9: LDA    $A9     
       ASL            
       ASL            
       ASL            
       BCC    LF7E7   
       CPX    $AB     
       BCC    LF7EF   
       DEX            
       BNE    LF7EF   
LF7E7: ASL            
       BCC    LF7EF   
       CPX    $AA     
       BCS    LF7EF   
       INX            
LF7EF: RTS            

LF7F0: .byte $08,$00,$20,$60,$40,$20,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LF808: .byte $3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18,$38,$18
       .byte $7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06,$46,$3C
       .byte $0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06,$42,$7E
       .byte $3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66,$66,$3C
LF858: SEC            
       STA    WSYNC   
LF85B: SBC    #$0F    
       BCS    LF85B   
       EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    RESP0,X 
       RTS            

LF86A: STA    COLUBK  
       LDA    #$23    
       LDX    #$00    
       JSR    LF858   
       LDA    #$2B    
       LDX    #$01    
       JSR    LF858   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0F    
       STA    COLUP1  
       STA    COLUP0  
       LDY    #$07    
       STY    $A9     
       LDA    #$00    
       STA    REFP0   
       STA    REFP1   
       LDA    #$FF    
       STA    VDELP0  
       STA    VDELP1  
       STA    HMCLR   
LF89C: LDY    $A9     
       LDA    ($A3),Y 
       PHA            
       LDA    ($A5),Y 
       TAX            
       STA    WSYNC   
       LDA    ($9D),Y 
       STA    GRP0    
       LDA    ($9F),Y 
       STA    GRP1    
       LDA    ($A1),Y 
       STA    GRP0    
       LDA    LF808,Y 
       TAY            
       PLA            
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STY    GRP0    
       DEC    $A9     
       BPL    LF89C   
       STA    WSYNC   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       RTS            

LF8D0: LDX    #$02    
       SED            
       STA    $A9     
       SEC            
LF8D6: LDA    $80,X   
       SBC    $A9     
       STA    $80,X   
       LDA    #$00    
       STA    $A9     
       DEX            
       BPL    LF8D6   
       CLD            
       RTS            

LF8E5: LDX    #$02    
       SED            
       CLC            
LF8E9: ADC    $80,X   
       STA    $80,X   
       LDA    #$00    
       DEX            
       BPL    LF8E9   
       CLD            
       RTS            

LF8F4: LDX    #$02    
       LDY    #$04    
LF8F8: LDA    $80,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $009F,Y 
       LDA    $80,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00A1,Y 
       LDA    #$F8    
       STA.wy $00A0,Y 
       STA.wy $00A2,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BNE    LF8F8   
       STA    $9E     
       LDA    $80     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $9D     
       LDX    #$00    
LF92C: LDA.wx $009D,X 
       EOR    #$08    
       BNE    LF93B   
       STA    $9D,X   
       INX            
       INX            
       CPX    #$0A    
       BCC    LF92C   
LF93B: RTS            

LF93C: LDA    #$40    
       LDX    #$00    
       JSR    LF7B2   
       LDA    #$35    
       STA    COLUBK  
       LDA    #$48    
       LDX    #$01    
       JSR    LF7B2   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$00    
       STY    REFP0   
       STY    REFP1   
       INY            
       STY    NUSIZ0  
       STY    NUSIZ1  
       STY    CTRLPF  
       LDA    #$1C    
       STA    COLUP1  
       STA    COLUP0  
       LDA    #$0F    
       STA    COLUPF  
       LDY    #$08    
       LDX    $B1     
       LDA    LF9AF,X 
       STA    $A9     
       LDA    LF9B6,X 
       STA    $AA     
       STA    HMCLR   
LF979: STA    WSYNC   
       LDA    $AA     
       STA    PF0     
       LDA    $A9     
       STA    PF1     
       LDA    LFF08,Y 
       STA    GRP0    
       LDA    LFF11,Y 
       STA    GRP1    
       LDA    LFF1A,Y 
       LDA    LFF23,Y 
       TAX            
       LDA    LFF1A,Y 
       NOP            
       STA.w  $001B   
       STX    GRP1    
       LDA    #$00    
       STA    PF1     
       STA    PF0     
       CPY    #$03    
       BCS    LF9AB   
       STA    $AA     
       STA    $A9     
LF9AB: DEY            
       BPL    LF979   
       RTS            

LF9AF: .byte $00,$00,$00,$80,$A0,$A8,$AA
LF9B6: .byte $00,$10,$50,$50,$50,$50,$50
LF9BD: .byte $F0,$F0,$F0,$B0,$D0,$F0,$F0,$B0,$50,$B0,$F0
LF9C8: .byte $00,$01,$01,$00,$00,$03,$0F,$86,$83,$80,$E0
LF9D3: .byte $8E,$DB,$71,$CF,$5C,$C7,$70,$3C,$0F,$80,$C0
LF9DE: .byte $E7,$E7,$E7,$E7,$66,$66,$7E,$7E,$FF,$7E,$3C,$18
LF9EA: .byte $90,$80,$40,$50,$60,$70
LF9F0: .byte $00,$00,$01,$02,$03
LF9F5: .byte $00,$10,$50,$50,$50,$50
LF9FB: .byte $00,$00,$60,$A2,$E6,$00,$07,$7E,$EE,$FC,$7E,$3F,$3F,$1C,$3C,$76
       .byte $5F,$FB,$FE,$DF,$07,$00,$3C,$38,$3B,$3F,$3E,$FC,$7F,$3E,$1C,$3E
       .byte $76,$DF,$FB,$CF,$06,$00,$0E,$0E,$EC,$EC,$7C,$7E,$FE,$FF,$BB,$3C
       .byte $76,$5E,$FA,$FF,$E7,$00,$E7,$E7,$66,$7E,$3C,$7E,$FF,$DB,$BD,$7E
       .byte $7E,$7F,$FF,$FB,$E0,$00,$00,$00,$C3,$FF,$7E,$7E,$FF,$DB,$3C,$7E
       .byte $7E,$FE,$FF,$DF,$07,$00,$FF,$0E,$EC,$EC,$7C,$7E,$FE,$FF,$9B,$3C
       .byte $76,$DE,$FB,$CF,$06,$00,$FF,$0E,$EC,$EC,$7C,$FF,$7E,$3C,$18,$3C
       .byte $76,$DE,$FB,$CF,$06,$00,$7C,$30,$38,$1E,$1E,$1C,$38,$3C,$7E,$76
       .byte $7C,$38,$00,$66,$18
LFA80: LDA    #$00    
       STA    $AD     
       LDY    $83     
       LDA    LFFCB,Y 
       STA    $AA     
       LDA    LFFD1,Y 
       STA    $AB     
       LDA    $83     
       BEQ    LFAA5   
       LDX    $8B     
       JSR    LF7D9   
       STX    $8B     
       LDX    $8C     
       JSR    LF79D   
       STX    $8C     
LFAA2: JMP    LFB88   
LFAA5: LDA    $85     
       BEQ    LFAAC   
       JMP    LFB4C   
LFAAC: LDA    $86     
       BNE    LFB06   
       LDA    $8B     
       CMP    $AB     
       BNE    LFAD6   
       LDX    $8C     
       JSR    LF79D   
       STX    $8C     
       LDA    $A9     
       AND    #$C0    
       BEQ    LFACC   
       LDY    #$08    
       ASL            
       BCC    LFACA   
       LDY    #$00    
LFACA: STY    $84     
LFACC: LDA    #$07    
       JSR    LF52F   
       LDA    LFFEA,Y 
       STA    AUDF0   
LFAD6: LDA    $8C     
       CMP    #$98    
       BNE    LFAA2   
       LDX    $8B     
       JSR    LF7D9   
       CPX    $AB     
       BCS    LFAE7   
       LDX    $AB     
LFAE7: STX    $8B     
       LDA    #$02    
       JSR    LF52F   
       LDA    LFFF2,Y 
       STA    AUDF0   
       LDA    REFP1   
       ASL            
       BCS    LFAA2   
       LDA    #$00    
       STA    $AF     
       LDA    #$08    
       STA    $84     
       LDA    #$40    
       STA    $86     
       BNE    LFAA2   
LFB06: CMP    #$30    
       BCC    LFB15   
       JSR    LF55A   
       DEC    $8C     
       DEC    $86     
       INC    $8B     
       BNE    LFB3C   
LFB15: CMP    #$20    
       BCC    LFB24   
       JSR    LF55A   
       DEC    $8C     
       DEC    $8B     
       DEC    $86     
       BNE    LFB3C   
LFB24: LDA    $AB     
       CMP    $8B     
       BCC    LFB35   
       STA    $8B     
       LDX    #$00    
       STX    $86     
       INX            
       STX    $AD     
       BNE    LFB88   
LFB35: JSR    LF55E   
       DEC    $8B     
       DEC    $8B     
LFB3C: LDA    WSYNC   
       AND    #$40    
       BEQ    LFB88   
       LDX    #$00    
       STX    $86     
       LDX    #$20    
       STX    $85     
       BNE    LFB88   
LFB4C: LDY    #$00    
       LDA    $BE     
       CMP    #$1F    
       BCC    LFB56   
       LDY    #$08    
LFB56: STY    $84     
       LDA    $8F     
       CLC            
       ADC    #$04    
       STA    $8B     
       LDA    $90     
       SEC            
       SBC    #$04    
       STA    $8C     
       JSR    LF56B   
       LDX    $85     
       BEQ    LFB88   
       DEX            
       BEQ    LFB74   
       DEC    $85     
       BNE    LFB88   
LFB74: LDA    REFP1   
       ASL            
       BCS    LFB88   
       LDA    #$1F    
       STA    $86     
       LDA    #$00    
       STA    $85     
       LDA    $8B     
       SEC            
       SBC    #$04    
       STA    $8B     
LFB88: RTS            

LFB89: LDA    $83     
       CMP    #$02    
       BCS    LFBA1   
LFB8F: STA    HMCLR   
       LDA    $AD     
       ADC    $BD     
       STA    $AD     
       BCC    LFB9D   
       LDA    $B5     
       STA    HMBL    
LFB9D: LDA    #$00    
       BEQ    LFBBA   
LFBA1: LDY    $A9     
       BPL    LFBB1   
       LDA    #$00    
       CPX    $8B     
       BNE    LFBBA   
       LDY    #$0F    
       STY    $A9     
       BNE    LFBBA   
LFBB1: LDA    LF5CD,Y 
       STA    COLUP0  
       LDA    ($AF),Y 
       DEC    $A9     
LFBBA: STA    WSYNC   
       STA    HMOVE   
       STA    GRP0    
       LDY    $AB     
       TXA            
       LSR            
       BCC    LFBCF   
       LDA    ($D0),Y 
       STA    PF2     
       DEC    $AB     
       JMP    LFBD7   
LFBCF: LDA    ($CC),Y 
       STA    PF0     
       LDA    ($CE),Y 
       STA    PF1     
LFBD7: DEX            
       CPX    $AC     
       BNE    LFB89   
       RTS            

LFBDD: LDX    $83     
       CPX    #$01    
       BCS    LFBEB   
       AND    #$03    
       BNE    LFC58   
       LDA    #$69    
       BNE    LFC14   
LFBEB: BNE    LFBFD   
       LDA    $8B     
       SEC            
       SBC    #$0C    
       STA    $8D     
       LDA    $8C     
       SEC            
       SBC    #$05    
       STA    $8E     
       BNE    LFC58   
LFBFD: LDA    $C7     
       AND    #$0F    
       TAX            
       LDA    #$5C    
       CPX    #$06    
       BEQ    LFC14   
       CPX    #$04    
       BEQ    LFC14   
       LDA    #$7A    
       CPX    #$02    
       BEQ    LFC14   
       LDA    #$98    
LFC14: STA    $AA     
       LDA    $83     
       CMP    #$02    
       BCS    LFC3C   
       LDA    $8D     
       LDX    $C9     
       BNE    LFC2D   
       LDY    #$01    
       CMP    $CA     
       BCS    LFC3A   
       CLC            
       ADC    #$05    
       BNE    LFC36   
LFC2D: LDY    #$00    
       CMP    $CB     
       BCC    LFC3A   
       SEC            
       SBC    #$05    
LFC36: STA    $8D     
       BNE    LFC3C   
LFC3A: STY    $C9     
LFC3C: LDA    $C0     
       BEQ    LFC4D   
       LDY    #$00    
       LDA    $8E     
       CMP    $AB     
       BCC    LFC5C   
       SEC            
       SBC    #$04    
       BNE    LFC56   
LFC4D: LDA    $8E     
       CMP    $AA     
       BCS    LFC5A   
       CLC            
       ADC    #$04    
LFC56: STA    $8E     
LFC58: BNE    LFC6A   
LFC5A: LDY    #$08    
LFC5C: STY    $C0     
       LDA    $83     
       BNE    LFC6A   
       LDA    $CB     
       CMP    #$1B    
       BCC    LFC6A   
       DEC    $CB     
LFC6A: RTS            

LFC6B: LDA    $83     
       CMP    #$01    
       BEQ    LFCAD   
       LDA    $93     
       CMP    $AB     
       BCC    LFC7E   
       SEC            
       SBC    #$02    
       STA    $93     
       BNE    LFC90   
LFC7E: CLC            
       LDA    $8E     
       ADC    #$04    
       STA    $94     
       SEC            
       LDA    $8D     
       SBC    #$08    
       LSR            
       ASL            
       ORA    #$01    
       STA    $93     
LFC90: LDA    $92     
       CMP    #$98    
       BCS    LFC9D   
       CLC            
       ADC    #$04    
       STA    $92     
       BNE    LFCAD   
LFC9D: LDA    $8E     
       CLC            
       ADC    #$0E    
       STA    $92     
       LDA    $8D     
       SEC            
       SBC    #$04    
       AND    #$FE    
       STA    $91     
LFCAD: RTS            

LFCAE: LDX    #$03    
       LDA    $99,X   
       CMP    $AB     
       BCC    LFCC3   
LFCB6: LDA    $99,X   
       SEC            
       SBC    #$02    
       STA    $99,X   
       DEX            
       BPL    LFCB6   
       JMP    LFCE8   
LFCC3: LDA    $C3,X   
       STA    $A7     
       DEX            
LFCC8: LDA    $99,X   
       STA    $9A,X   
       LDA    $95,X   
       STA    $96,X   
       LDA    $C3,X   
       STA    $C4,X   
       DEX            
       BPL    LFCC8   
       LDA    $A7     
       STA    $C3     
       LDY    #$8F    
       AND    #$C0    
       BNE    LFCE2   
       DEY            
LFCE2: STY    $99     
       LDA    $8E     
       STA    $95     
LFCE8: RTS            

LFCE9: LDA    $83     
       CMP    #$02    
       BCC    LFD3A   
       CMP    #$05    
       BCS    LFD3A   
       LDY    #$00    
       LDA    $D4     
       BEQ    LFD08   
       DEC    $D4     
       LDA    $D4     
       ASL            
       EOR    #$1F    
       STA    AUDF1   
       LDY    #$04    
       STY    AUDC1   
       LDY    #$06    
LFD08: STY    AUDV1   
       LDA    #$A2    
       STA    $AA     
       LDA    $91     
       CMP    $AA     
       BCS    LFD1B   
       CLC            
       ADC    #$04    
       STA    $91     
       BNE    LFD3A   
LFD1B: LDA    #$FF    
       STA    $91     
       LDA    REFP1   
       ASL            
       BCS    LFD3A   
       LDA    $8B     
       CLC            
       ADC    #$06    
       AND    #$FC    
       ORA    #$01    
       STA    $91     
       LDA    $8C     
       CLC            
       ADC    #$04    
       STA    $92     
       LDA    #$0F    
       STA    $D4     
LFD3A: RTS            

LFD3B: LDA    $87     
       BNE    LFD8B   
       LDA    $83     
       BNE    LFD51   
       LDA    $86     
       CMP    #$1F    
       BEQ    LFD8B   
       LDA    VSYNC   
       ASL            
       ASL            
       BCS    LFD62   
       BCC    LFD5D   
LFD51: CMP    #$01    
       BEQ    LFD8B   
       LDA    WSYNC   
       ASL            
       BCS    LFD62   
       ASL            
       BCS    LFD62   
LFD5D: LDA    VBLANK  
       ASL            
       BCC    LFD8B   
LFD62: LDA    #$00    
       STA    $86     
       STA    $D3     
       LDA    #$30    
       STA    $87     
       LDA    $83     
       CMP    #$02    
       BCS    LFD7A   
       INC    $91     
       INC    $93     
       LDA    #$70    
       BNE    LFD89   
LFD7A: LDX    #$03    
LFD7C: LDA    $C3,X   
       AND    #$C0    
       BEQ    LFD84   
       INC    $99,X   
LFD84: DEX            
       BPL    LFD7C   
       LDA    #$70    
LFD89: STA    $AF     
LFD8B: RTS            

LFD8C: LDA    $83     
       BEQ    LFD94   
       CMP    #$05    
       BNE    LFDA3   
LFD94: LDA    $88     
       BNE    LFDBC   
       LDA    COLUP1  
       ASL            
       BCC    LFDBC   
       INC    $91     
       INC    $93     
       BCS    LFDB8   
LFDA3: CMP    #$01    
       BEQ    LFDB8   
       LDA    $C2     
       BNE    LFDBC   
       STA    $B2     
       LDX    #$03    
LFDAF: LDA    $C3,X   
       AND    #$C0    
       BNE    LFDBC   
       DEX            
       BPL    LFDAF   
LFDB8: LDA    #$09    
       STA    $88     
LFDBC: RTS            

LFDBD: LDY    #$00    
       LDA    $83     
       CMP    #$02    
       BCC    LFE05   
       LDA    COLUP1  
       ASL            
       ASL            
       BCC    LFE05   
       LDX    #$03    
LFDCD: LDA    $91     
       CMP    $99,X   
       BEQ    LFDE1   
       BCC    LFDDC   
       SEC            
       SBC    #$08    
       CMP    $99,X   
       BCC    LFDE1   
LFDDC: DEX            
       BPL    LFDCD   
       BMI    LFE05   
LFDE1: LDY    $95,X   
       TXA            
       PHA            
       LDA    $C3,X   
       TAX            
       JSR    LFE34   
       STX    $A7     
       PLA            
       TAX            
       STY    $95,X   
       LDA    #$07    
       STA    $D5     
       LDA    $A7     
       STA    $C3,X   
       LDY    #$A2    
       STY    $91     
       LDY    #$10    
       AND    #$C0    
       BNE    LFE05   
       INC    $99,X   
LFE05: TYA            
       RTS            

LFE07: LDX    #$00    
       LDA    $83     
       CMP    #$02    
       BCC    LFE32   
       LDA    VSYNC   
       ASL            
       BCS    LFE1F   
       LDA    NUSIZ0  
       ASL            
       BCC    LFE32   
       LDA    #$A2    
       STA    $91     
       BNE    LFE32   
LFE1F: DEC    $C2     
       LDX    $C7     
       LDY    $8E     
       JSR    LFE34   
       STX    $C7     
       STY    $8E     
       LDX    #$07    
       STX    $D5     
       LDX    #$50    
LFE32: TXA            
       RTS            

LFE34: TXA            
       AND    #$C0    
       BEQ    LFE84   
       CMP    #$40    
       BEQ    LFE82   
       CMP    #$80    
       BEQ    LFE5F   
       TYA            
       CLC            
       ADC    #$0A    
       CMP    $92     
       BCC    LFE50   
       TYA            
       CLC            
       ADC    #$20    
       TAY            
       BNE    LFE5B   
LFE50: CLC            
       ADC    #$20    
       CMP    $92     
       BCC    LFE5B   
       LDX    #$A4    
       BNE    LFE84   
LFE5B: LDX    #$A2    
       BNE    LFE84   
LFE5F: TYA            
       CPX    #$A2    
       BNE    LFE72   
       CLC            
       ADC    #$0A    
       CMP    $92     
       BCC    LFE7E   
       TYA            
       CLC            
       ADC    #$20    
       TAY            
       BNE    LFE7E   
LFE72: CLC            
       ADC    #$0A    
       CMP    $92     
       BCC    LFE7E   
       TYA            
       CLC            
       ADC    #$40    
       TAY            
LFE7E: LDX    #$60    
       BNE    LFE84   
LFE82: LDX    #$20    
LFE84: RTS            

LFE85: INC    $83     
LFE87: LDA    #$50    
       STA    $8D     
       LDA    #$50    
       STA    $CA     
       LDA    #$30    
       STA    $CB     
       LDA    #$58    
       STA    $90     
       LDA    #$60    
       STA    $8F     
       LDA    #$37    
       STA    $91     
       STA    $92     
       LDX    #$03    
       LDA    #$30    
LFEA5: STA    $95,X   
       STA    $99,X   
       ADC    #$20    
       DEX            
       BPL    LFEA5   
       LDY    $83     
       CPY    #$06    
       BCC    LFEBE   
       LDY    #$00    
       STY    $83     
       STY    CXCLR   
       STY    $87     
       STY    $86     
LFEBE: CPY    #$01    
       BEQ    LFEF4   
       LDA    #$45    
       STA    $93     
       STA    $94     
       LDA    LF9FB,Y 
       STA    $C7     
       LDX    #$03    
LFECF: STA    $C3,X   
       DEX            
       BPL    LFECF   
       LDA    #$40    
       STA    $8E     
       LDA    #$50    
       STA    $B2     
       LDA    LF9F0,Y 
       STA    $C2     
LFEE1: LDA    LF7F0,Y 
       STA    $8C     
       LDA    LFF2C,Y 
       STA    $8B     
       LDA    LF9F5,Y 
       STA    $AF     
       LDA    #$20    
       STA    $C1     
LFEF4: RTS            

LFEF5: .byte $13,$17,$1D,$17,$1D,$1D,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
       .byte $00,$00,$00
LFF08: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFF11: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFF1A: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFF23: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LFF2C: .byte $11,$00,$33,$33,$33,$20
LFF32: .byte $B8,$B8,$1C,$1C,$1C,$2A,$2A,$2A,$35,$35,$35,$35
LFF3E: .byte $0E,$0E,$0B,$0E,$09,$0B,$0E,$0E,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$00,$24,$18,$3C,$66,$DB,$42,$81,$00,$24,$18,$18,$00,$00
       .byte $00,$00,$10,$10,$30,$70,$70,$F0,$B0,$D0,$F0,$F0,$F0,$70,$F0,$F0
       .byte $F0,$00,$00,$00,$0C,$1C,$1E,$3E,$FF,$EF,$EF,$FF,$FF,$FB,$FD,$FF
       .byte $00,$00,$00,$00,$00,$00,$80,$C0,$E1,$F3,$7F,$37,$1F,$0F,$9F,$FF
       .byte $FF,$FF,$10,$10,$50,$50,$10,$F0,$F0,$F0,$F0,$B0,$90,$10,$00,$00
       .byte $00,$01,$45,$C5,$F1,$E1,$F1,$FB,$FF,$F7,$C3,$83,$01,$01,$00,$00
       .byte $00,$20,$80,$92,$92,$F0,$F2,$F0,$FF,$7F,$1F,$0F,$0E,$06,$04
LFFBD: DEC    $B1     
       LDY    $83     
       JSR    LFEE1   
       RTS            

LFFC5: .byte $1C,$1C,$7F,$CF,$5C,$3B
LFFCB: .byte $8C,$60,$8E,$8E,$8E,$A6
LFFD1: .byte $11,$18,$11,$11,$11,$11
LFFD7: .byte $02,$02,$03,$03,$02
LFFDC: LDA    $83     
       CMP    #$02    
       BCC    LFFE9   
       LDA    WSYNC   
       ASL            
       BCS    LFFE9   
       DEC    $8B     
LFFE9: RTS            

LFFEA: .byte $0C,$0E,$0F,$11,$11,$0F,$0E,$0C
LFFF2: .byte $13,$0F,$0C
LFFF5: LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFFFC: .byte $00,$F0,$00,$F0
