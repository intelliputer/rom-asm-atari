; Disassembly of roms/VaultAssault.bin
; Disassembled Tue Oct  6 15:24:48 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/VaultAssault.bin
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
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
CXCLR   =  $2C
INPT4   =  $3C
INPT5   =  $3D
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000
LF000: .byte $28,$63,$29,$20,$32,$30,$30,$31,$20,$62,$79,$20,$42,$72,$69,$61
       .byte $6E,$20,$50,$72,$65,$73,$63,$6F,$74,$74
LF01A: STA    WSYNC   
       STA    WSYNC   
       LDA    #$38    
       LDX    #$00    
       STX    HMP0    
       JSR    LF049   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$49    
       LDX    #$02    
       JSR    LF049   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$57    
       LDX    #$03    
       JSR    LF049   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$40    
       LDX    #$01    
       JSR    LF049   
       RTS            

LF049: LDY    #$00    
       STY    HMP0    
       STY    HMP1    
       STY    HMM0    
       STY    HMM1    
       STY    HMBL    
       CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BE     
       CMP    #$0F    
       BCC    LF06D   
       SBC    #$0F    
       INY            
LF06D: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF077: DEY            
       BPL    LF077   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF081: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BE     
       CMP    #$0F    
       BCC    LF099   
       SBC    #$0F    
       INY            
LF099: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
LF0A9: DEY            
       BPL    LF0A9   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF0B3: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA    $BE     
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC    $BE     
       CMP    #$0F    
       BCC    LF0CB   
       SBC    #$0F    
       INY            
LF0CB: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       STA    WSYNC   
LF0DB: DEY            
       BPL    LF0DB   
       STA    RESP0,X 
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF0E5: LDA    $C1     
       LSR            
       LSR            
       SBC    $C1     
       LSR            
       ROR    $C2     
       ROR    $C1     
       ROR    $C1     
       LDA    $C1     
       EOR    $C3     
       RTS            

LF0F7: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       LDA    #$00    
LF107: STA    VSYNC,X 
       DEX            
       BNE    LF107   
       JSR    LFB4D   
LF10F: INC    $C0     
       JSR    LF12B   
       JSR    LF153   
       JSR    LF01A   
       JSR    LF1F9   
       JSR    LF40C   
       JSR    LF6CF   
       DEC    $C3     
       JSR    LF0E5   
       JMP    LF10F   
LF12B: LDX    #$00    
       LDA    #$02    
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    #$00    
       STA    CXCLR   
       STA    HMP0    
       STA    HMP1    
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
       STA    WSYNC   
       STA    VSYNC   
       RTS            

LF153: LDA    $81     
       STA    COLUBK  
       LDA    #$40    
       BIT    SWCHB   
       BNE    LF162   
       LDA    #$00    
       BEQ    LF164   
LF162: LDA    #$01    
LF164: STA    $C5     
       LDA    $88     
       BEQ    LF16D   
       JMP    LF1F8   
LF16D: LDA    #$00    
       STA    SWACNT  
       LDA    $88     
       BNE    LF198   
       LDA    INPT4   
       BPL    LF17C   
       BMI    LF198   
LF17C: LDA    $C4     
       BPL    LF198   
       LDA    $86     
       BEQ    LF198   
       STA    $87     
       LDA    #$0A    
       STA    $88     
       LDA    #$C4    
       STA    $C8     
       LDA    #$FE    
       STA    $C9     
       LDY    #$02    
       LDA    ($C8),Y 
       STA    $CA     
LF198: LDA    INPT4   
       STA    $C4     
       LDX    $86     
       LDA    INPT5   
       BPL    LF1A4   
       BMI    LF1B0   
LF1A4: JSR    LFBAA   
       LDX    #$09    
       STX    $BB     
       LDX    #$00    
       JMP    LF1F6   
LF1B0: LDA    #$40    
       BIT    SWCHA   
       BNE    LF1BC   
       LDX    #$02    
       JMP    LF1F6   
LF1BC: LDA    #$80    
       BIT    SWCHA   
       BNE    LF1C8   
       LDX    #$03    
       JMP    LF1F6   
LF1C8: LDA    #$10    
       BIT    SWCHA   
       BNE    LF1D4   
       LDX    #$01    
       JMP    LF1F6   
LF1D4: LDA    #$20    
       BIT    SWCHA   
       BNE    LF1E0   
       LDX    #$04    
       JMP    LF1F6   
LF1E0: LDA    #$01    
       BIT    SWCHB   
       BNE    LF1EF   
       JSR    LFBAA   
       LDX    #$00    
       JMP    LF1F6   
LF1EF: LDA    #$02    
       BIT    SWCHB   
       BNE    LF1F6   
LF1F6: STX    $86     
LF1F8: RTS            

LF1F9: LDA    $80     
       AND    #$80    
       BNE    LF203   
       LDA    #$00    
       STA    $86     
LF203: LDA    $80     
       BNE    LF22B   
       LDX    $C6     
       LDA    LFF7E,X 
       STA    $81     
       STA    $82     
       STA    $83     
       LDA    LFF8E,X 
       STA    $85     
       DEC    $C7     
       BNE    LF22B   
       LDA    #$FA    
       STA    $C7     
       INC    $C6     
       LDA    $C6     
       CMP    #$10    
       BCC    LF22B   
       LDA    #$00    
       STA    $C6     
LF22B: LDA    #$40    
       STA    $90     
       STA    $92     
       STA    $94     
       LDA    #$FE    
       STA    $91     
       STA    $93     
       STA    $95     
       LDX    $86     
       DEX            
       BEQ    LF255   
       DEX            
       BEQ    LF25F   
       DEX            
       BEQ    LF269   
       DEX            
       BEQ    LF24B   
       BNE    LF271   
LF24B: LDA    #$52    
       STA    $94     
       LDA    #$FE    
       STA    $95     
       BNE    LF271   
LF255: LDA    #$49    
       STA    $90     
       LDA    #$FE    
       STA    $91     
       BNE    LF271   
LF25F: LDA    #$5B    
       STA    $92     
       LDA    #$FE    
       STA    $93     
       BNE    LF271   
LF269: LDA    #$64    
       STA    $92     
       LDA    #$FE    
       STA    $93     
LF271: LDA    $C5     
       BEQ    LF279   
       LDA    #$06    
       BNE    LF27B   
LF279: LDA    #$0A    
LF27B: STA    $BE     
       LDA    $A2     
       BEQ    LF294   
       CMP    $BE     
       BMI    LF2AC   
       JSR    LF0E5   
       AND    #$03    
       TAY            
       LDX    LFFE7,Y 
       INX            
       LDA    LFFEB,Y 
       BNE    LF2B0   
LF294: LDA    $A7     
       AND    #$08    
       BEQ    LF2A0   
       LDX    #$94    
       LDA    #$FE    
       BNE    LF2B0   
LF2A0: LDA    $A7     
       AND    #$80    
       BEQ    LF2AC   
       LDX    #$72    
       LDA    #$FE    
       BNE    LF2B0   
LF2AC: LDX    #$40    
       LDA    #$FE    
LF2B0: STX    $96     
       STA    $97     
       CLC            
       LDA    $A3     
       ADC    $A4     
       BEQ    LF2CD   
       CMP    $BE     
       BMI    LF2F1   
       JSR    LF0E5   
       AND    #$03    
       TAY            
       LDX    LFFE7,Y 
       LDA    LFFEB,Y 
       BNE    LF2F5   
LF2CD: LDA    $A7     
       AND    #$06    
       BEQ    LF2D9   
       LDX    #$94    
       LDA    #$FE    
       BNE    LF2F5   
LF2D9: LDA    $A7     
       AND    #$40    
       BEQ    LF2E5   
       LDX    #$7A    
       LDA    #$FE    
       BNE    LF2F5   
LF2E5: LDA    $A7     
       AND    #$20    
       BEQ    LF2F1   
       LDX    #$83    
       LDA    #$FE    
       BNE    LF2F5   
LF2F1: LDX    #$40    
       LDA    #$FE    
LF2F5: STX    $98     
       STA    $99     
       LDA    $A5     
       BEQ    LF310   
       CMP    $BE     
       BMI    LF328   
       JSR    LF0E5   
       AND    #$03    
       TAY            
       LDX    LFFE7,Y 
       INX            
       LDA    LFFEB,Y 
       BNE    LF32C   
LF310: LDA    $A7     
       AND    #$01    
       BEQ    LF31C   
       LDX    #$94    
       LDA    #$FE    
       BNE    LF32C   
LF31C: LDA    $A7     
       AND    #$10    
       BEQ    LF328   
       LDX    #$8C    
       LDA    #$FE    
       BNE    LF32C   
LF328: LDX    #$40    
       LDA    #$FE    
LF32C: STX    $9A     
       STA    $9B     
       LDA    $88     
       BEQ    LF33C   
       DEC    $88     
       BNE    LF33C   
       LDA    #$00    
       STA    $87     
LF33C: LDA    $87     
       CMP    #$02    
       BEQ    LF36E   
       CMP    #$03    
       BEQ    LF358   
       LDA    #$00    
       STA    $89     
       STA    $8A     
       STA    $8D     
       STA    $8E     
       LDA    #$C0    
       STA    $8B     
       STA    $8C     
       BNE    LF382   
LF358: LDA    #$00    
       STA    $89     
       STA    $8A     
       LDA    #$C0    
       STA    $8B     
       LDA    #$CF    
       STA    $8C     
       LDA    #$FF    
       STA    $8D     
       STA    $8E     
       BNE    LF382   
LF36E: LDA    #$FF    
       STA    $89     
       STA    $8A     
       LDA    #$CF    
       STA    $8B     
       LDA    #$C0    
       STA    $8C     
       LDA    #$00    
       STA    $8D     
       STA    $8E     
LF382: LDX    $B5     
       LDA    LFF68,X 
       STA    $A9     
       LDA    LFF73,X 
       STA    $AA     
       LDX    $B6     
       LDA    LFF68,X 
       STA    $AB     
       LDA    LFF73,X 
       STA    $AC     
       LDX    $B7     
       LDA    LFF68,X 
       STA    $AD     
       LDA    LFF73,X 
       STA    $AE     
       LDX    $B8     
       LDA    LFF68,X 
       STA    $AF     
       LDA    LFF73,X 
       STA    $B0     
       LDX    $B9     
       LDA    LFF68,X 
       STA    $B1     
       LDA    LFF73,X 
       STA    $B2     
       LDX    $BA     
       LDA    LFF68,X 
       STA    $B3     
       LDA    LFF73,X 
       STA    $B4     
       LDA    $80     
       BEQ    LF3DA   
       LDA    $C5     
       BEQ    LF3D6   
       LDA    #$15    
       BNE    LF3D8   
LF3D6: LDA    #$74    
LF3D8: STA    $85     
LF3DA: LDY    $BB     
       DEY            
       LDA    LFFC3,Y 
       CMP    $BC     
       BEQ    LF3E6   
       BNE    LF3F0   
LF3E6: LDA    #$00    
       STA    $BC     
       CPY    #$08    
       BEQ    LF3F0   
       INC    $BB     
LF3F0: LDA    #$50    
       LDX    #$04    
       JSR    LF049   
       LDA    $86     
       CMP    #$02    
       BEQ    LF405   
       CMP    #$03    
       BEQ    LF405   
       LDA    #$00    
       BEQ    LF409   
LF405: LDY    #$05    
       LDA    ($92),Y 
LF409: STA    $8F     
       RTS            

LF40C: LDA    $82     
       STA    COLUPF  
       LDA    $81     
       STA    COLUBK  
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    HMBL    
LF41C: LDA    $81     
       STA    COLUBK  
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    $BE     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $85     
       STA    COLUP0  
       STA    COLUP1  
       LDA    INTIM   
       BNE    LF41C   
       STA    WSYNC   
       STA    VBLANK  
LF43F: LDY    $BE     
       LDA    ($A9),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($AB),Y 
       STA    GRP1    
       LDA    ($AD),Y 
       STA    GRP0    
       LDA    ($AF),Y 
       STA    $BF     
       LDA    ($B1),Y 
       TAX            
       LDA    ($B3),Y 
       TAY            
       LDA    $BF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $BE     
       BPL    LF43F   
       LDX    $86     
       LDA    LFE6D,X 
       LDX    #$00    
       STX    HMP0    
       STX    HMP1    
       JSR    LF049   
       LDA    #$00    
       STA    VDELP0  
       STA    VDELP1  
       STA    GRP0    
       STA    GRP1    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA    #$4C    
       LDX    #$01    
       JSR    LF049   
       STA    WSYNC   
       LDA    $85     
       STA    COLUBK  
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $83     
       STA    COLUP0  
       STA    WSYNC   
       LDA    $81     
       STA    COLUBK  
       LDY    $BB     
       DEY            
       LDA    LFFCC,Y 
       STA    $84     
       STA    COLUP1  
       LDA    #$00    
       STA    HMP0    
       STA    HMP1    
       LDX    #$40    
LF4B4: STA    WSYNC   
       LDY    $87     
       LDA    LFF9E,Y 
       STA    ENABL   
       STX    $BE     
       LDA    $9D     
       SEC            
       SBC    $BE     
       BMI    LF4D2   
       CMP    #$08    
       BCS    LF4D2   
       TAY            
       LDA    ($96),Y 
       STA    GRP1    
       DEX            
       BNE    LF4B4   
LF4D2: LDY    #$00    
       STY    GRP1    
       DEX            
       BNE    LF4B4   
       LDY    #$08    
LF4DB: STA    WSYNC   
       LDA    $83     
       STA    COLUP1  
       LDA    ($90),Y 
       STA    GRP0    
       LDA    #$00    
       STA    ENABL   
       STA    PF0     
       STA    PF1     
       LDA    #$30    
       STA    PF2     
       DEY            
       CPY    #$02    
       BNE    LF4DB   
LF4F6: STA    WSYNC   
       LDA    ($90),Y 
       STA    GRP0    
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$30    
       STA    PF2     
       LDA    #$20    
       STA    HMM0    
       LDA    #$E0    
       STA    HMM1    
       DEY            
       BNE    LF4F6   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    GRP0    
       STA    PF0     
       STA    PF1     
       STA    HMM0    
       STA    HMM1    
       STA    WSYNC   
       LDA    $9F     
       LDX    #$01    
       JSR    LF081   
       LDY    #$08    
LF536: STA    WSYNC   
       LDA    $84     
       STA    COLUP1  
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       DEY            
       CPY    #$05    
       BNE    LF536   
LF553: STA    WSYNC   
       LDA    $8F     
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    $89     
       STA    PF0     
       LDA    $8A     
       STA    PF1     
       LDA    $8B     
       STA    PF2     
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    $8C     
       STA    PF2     
       LDA    $8D     
       STA    PF1     
       LDA    $8E     
       STA    PF0     
       DEY            
       CPY    #$03    
       BNE    LF553   
LF581: STA    WSYNC   
       LDA    ($92),Y 
       STA    GRP0    
       LDA    ($98),Y 
       STA    GRP1    
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       DEY            
       BNE    LF581   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    $83     
       STA    COLUP1  
       STA    WSYNC   
       LDA    #$4C    
       LDX    #$01    
       JSR    LF0B3   
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$C0    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       LDA    #$E0    
       STA    HMM0    
       LDA    #$20    
       STA    HMM1    
       LDY    #$08    
LF5D5: STA    WSYNC   
       LDA    #$00    
       STA    HMP1    
       STA    HMOVE   
       LDA    ($94),Y 
       STA    GRP0    
       LDA    #$30    
       STA    PF2     
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       CPY    #$06    
       BEQ    LF5F1   
       BNE    LF5F5   
LF5F1: STA    ENAM0   
       STA    ENAM1   
LF5F5: STA    HMM0    
       STA    HMM1    
       DEY            
       BNE    LF5D5   
       STY    PF2     
       LDX    #$40    
LF600: STA    WSYNC   
       LDA    $84     
       STA    COLUP1  
       LDY    $87     
       LDA    LFFA3,Y 
       STA    ENABL   
       STX    $BE     
       LDA    $A1     
       SEC            
       SBC    $BE     
       BMI    LF622   
       CMP    #$08    
       BCS    LF622   
       TAY            
       LDA    ($9A),Y 
       STA    GRP1    
       DEX            
       BNE    LF600   
LF622: LDY    #$00    
       STY    GRP1    
       DEX            
       BNE    LF600   
       STX    ENABL   
       STA    WSYNC   
       LDA    $85     
       STA    COLUBK  
       LDA    #$58    
       STA    $A9     
       LDA    #$FF    
       STA    $AA     
       LDA    #$60    
       STA    $B1     
       LDA    #$FF    
       STA    $B2     
       LDX    $BB     
       LDA    LFF68,X 
       STA    $AB     
       LDA    LFF73,X 
       STA    $AC     
       STA    WSYNC   
       LDA    $81     
       STA    COLUBK  
       LDA    #$38    
       LDX    #$00    
       STX    HMP0    
       JSR    LF049   
       LDA    #$40    
       STA    $AD     
       STA    $AF     
       LDA    #$FE    
       STA    $AE     
       STA    $B0     
       LDX    $BD     
       BPL    LF66D   
       INX            
LF66D: LDA    LFF68,X 
       STA    $B3     
       LDA    LFF73,X 
       STA    $B4     
       LDA    #$40    
       LDX    #$01    
       JSR    LF049   
       LDA    #$01    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    $BE     
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $85     
       STA    COLUP0  
       STA    COLUP1  
LF694: LDY    $BE     
       LDA    ($A9),Y 
       STA    GRP0    
       STA    WSYNC   
       LDA    ($AB),Y 
       STA    GRP1    
       LDA    ($AD),Y 
       STA    GRP0    
       LDA    ($AF),Y 
       STA    $BF     
       LDA    ($B1),Y 
       TAX            
       LDA    ($B3),Y 
       TAY            
       LDA    $BF     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $BE     
       BPL    LF694   
       LDA    #$02    
       STA    WSYNC   
       STA    VBLANK  
       STY    PF0     
       STY    PF1     
       STY    PF1     
       STY    GRP0    
       STY    GRP1    
       STY    ENABL   
       RTS            

LF6CF: LDA    #$23    
       STA    TIM64T  
       LDA    $80     
       AND    #$80    
       BNE    LF6DD   
       JMP    LFA07   
LF6DD: LDA    $CD     
       BNE    LF6F8   
       CLC            
       LDA    $A2     
       ADC    $A3     
       ADC    $A4     
       ADC    $A5     
       BEQ    LF6F8   
       LDA    #$E2    
       STA    $CB     
       LDA    #$FE    
       STA    $CC     
       LDA    #$0F    
       STA    $CD     
LF6F8: LDA    $9C     
       BEQ    LF6FE   
       DEC    $9C     
LF6FE: LDA    $9E     
       BEQ    LF704   
       DEC    $9E     
LF704: LDA    $A0     
       BEQ    LF70A   
       DEC    $A0     
LF70A: LDA    $C5     
       BEQ    LF712   
       LDA    #$0D    
       BNE    LF714   
LF712: LDA    #$1E    
LF714: STA    $BE     
       LDA    $87     
       CMP    #$01    
       BNE    LF74B   
       LDA    $A7     
       AND    #$88    
       BEQ    LF74B   
       LDA    $A2     
       BNE    LF74B   
       INC    $BC     
       LDA    $A7     
       AND    #$08    
       BEQ    LF73E   
       LDA    $BE     
       STA    $A2     
       JSR    LFACC   
       LDA    $A7     
       AND    #$77    
       STA    $A7     
       JMP    LF74B   
LF73E: LDA    $BE     
       STA    $A2     
       JSR    LFAD9   
       LDA    $A7     
       AND    #$77    
       STA    $A7     
LF74B: LDA    $87     
       CMP    #$02    
       BNE    LF784   
       LDA    $A7     
       AND    #$44    
       BEQ    LF784   
       LDA    $A3     
       BNE    LF784   
       LDA    #$00    
       STA    $9E     
       INC    $BC     
       LDA    $A7     
       AND    #$04    
       BEQ    LF777   
       LDA    $BE     
       STA    $A3     
       JSR    LFACC   
       LDA    $A7     
       AND    #$BB    
       STA    $A7     
       JMP    LF784   
LF777: LDA    $BE     
       STA    $A3     
       JSR    LFAD9   
       LDA    $A7     
       AND    #$BB    
       STA    $A7     
LF784: LDA    $87     
       CMP    #$03    
       BNE    LF7BD   
       LDA    $A7     
       AND    #$22    
       BEQ    LF7BD   
       LDA    $A4     
       BNE    LF7BD   
       LDA    #$00    
       STA    $9E     
       INC    $BC     
       LDA    $A7     
       AND    #$02    
       BEQ    LF7B0   
       LDA    $BE     
       STA    $A4     
       JSR    LFACC   
       LDA    $A7     
       AND    #$DD    
       STA    $A7     
       JMP    LF7BD   
LF7B0: LDA    $BE     
       STA    $A4     
       JSR    LFAD9   
       LDA    $A7     
       AND    #$DD    
       STA    $A7     
LF7BD: LDA    $87     
       CMP    #$04    
       BNE    LF7F2   
       LDA    $A7     
       AND    #$11    
       BEQ    LF7F2   
       LDA    $A5     
       BNE    LF7F2   
       INC    $BC     
       LDA    $A7     
       AND    #$01    
       BEQ    LF7E5   
       LDA    $BE     
       STA    $A5     
       JSR    LFACC   
       LDA    $A7     
       AND    #$EE    
       STA    $A7     
       JMP    LF7F2   
LF7E5: LDA    $BE     
       STA    $A5     
       JSR    LFAD9   
       LDA    $A7     
       AND    #$EE    
       STA    $A7     
LF7F2: LDA    $A7     
       AND    #$88    
       BEQ    LF81E   
       LDA    $9C     
       BNE    LF81E   
       LDA    $A2     
       BNE    LF81E   
       LDA    $A7     
       AND    #$7F    
       ORA    #$08    
       STA    $A7     
       JSR    LFBEB   
       LDY    $BB     
       DEY            
       BNE    LF816   
       LDA    $C0     
       AND    #$01    
       BEQ    LF81E   
LF816: SEC            
       LDA    $9D     
       SBC    LFFA8,Y 
       STA    $9D     
LF81E: LDA    $A7     
       AND    #$44    
       BEQ    LF84A   
       LDA    $9E     
       BNE    LF84A   
       LDA    $A3     
       BNE    LF84A   
       LDA    $A7     
       AND    #$BF    
       ORA    #$04    
       STA    $A7     
       JSR    LFBEB   
       LDY    $BB     
       DEY            
       BNE    LF842   
       LDA    $C0     
       AND    #$01    
       BEQ    LF84A   
LF842: CLC            
       LDA    $9F     
       ADC    LFFA8,Y 
       STA    $9F     
LF84A: LDA    $A7     
       AND    #$22    
       BEQ    LF876   
       LDA    $9E     
       BNE    LF876   
       LDA    $A4     
       BNE    LF876   
       LDA    $A7     
       AND    #$DF    
       ORA    #$02    
       STA    $A7     
       JSR    LFBEB   
       LDY    $BB     
       DEY            
       BNE    LF86E   
       LDA    $C0     
       AND    #$01    
       BEQ    LF876   
LF86E: SEC            
       LDA    $9F     
       SBC    LFFA8,Y 
       STA    $9F     
LF876: LDA    $A7     
       AND    #$11    
       BEQ    LF8A2   
       LDA    $A0     
       BNE    LF8A2   
       LDA    $A5     
       BNE    LF8A2   
       LDA    $A7     
       AND    #$EF    
       ORA    #$01    
       STA    $A7     
       JSR    LFBEB   
       LDY    $BB     
       DEY            
       BNE    LF89A   
       LDA    $C0     
       AND    #$01    
       BEQ    LF8A2   
LF89A: CLC            
       LDA    $A1     
       ADC    LFFA8,Y 
       STA    $A1     
LF8A2: LDA    $A2     
       BEQ    LF8AE   
       DEC    $A2     
       BNE    LF8AE   
       LDA    #$00    
       STA    $9D     
LF8AE: LDA    $A3     
       BEQ    LF8BA   
       DEC    $A3     
       BNE    LF8BA   
       LDA    #$00    
       STA    $9F     
LF8BA: LDA    $A4     
       BEQ    LF8C6   
       DEC    $A4     
       BNE    LF8C6   
       LDA    #$00    
       STA    $9F     
LF8C6: LDA    $A5     
       BEQ    LF8D2   
       DEC    $A5     
       BNE    LF8D2   
       LDA    #$00    
       STA    $A1     
LF8D2: LDA    $A8     
       BEQ    LF8DB   
       DEC    $A8     
       JMP    LF9B4   
LF8DB: LDY    $BB     
       DEY            
       LDA    $C5     
       BEQ    LF8EA   
       LDA    LFFDE,Y 
       LDX    LFFBA,Y 
       BNE    LF8F0   
LF8EA: LDA    LFFD5,Y 
       LDX    LFFB1,Y 
LF8F0: STA    $BE     
       STX    $BF     
       JSR    LF0E5   
       AND    #$03    
       BEQ    LF905   
       TAY            
       DEY            
       BEQ    LF931   
       DEY            
       BEQ    LF931   
       JMP    LF988   
LF905: LDA    $A7     
       AND    #$88    
       BNE    LF92E   
       LDA    $A2     
       BNE    LF92E   
       JSR    LF0E5   
       CMP    $BE     
       BCS    LF92E   
       LDA    $BF     
       STA    $9C     
       LDA    #$40    
       STA    $9D     
       LDA    #$00    
       STA    $A2     
       LDA    $A7     
       ORA    #$80    
       AND    #$F7    
       STA    $A7     
       LDA    #$0F    
       STA    $A8     
LF92E: JMP    LF9B4   
LF931: LDA    $A7     
       AND    #$44    
       BNE    LF96A   
       LDA    $A3     
       BNE    LF96A   
       LDA    $A7     
       AND    #$22    
       BNE    LF96A   
       LDA    $A4     
       BNE    LF96A   
       JSR    LF0E5   
       CMP    $BE     
       BCS    LF96A   
       LDA    $C3     
       AND    #$01    
       BEQ    LF96D   
       LDA    $BF     
       STA    $9E     
       LDA    #$01    
       STA    $9F     
       LDA    #$00    
       STA    $A3     
       LDA    $A7     
       ORA    #$40    
       AND    #$FB    
       STA    $A7     
       LDA    #$0F    
       STA    $A8     
LF96A: JMP    LF9B4   
LF96D: LDA    $BF     
       STA    $9E     
       LDA    #$97    
       STA    $9F     
       LDA    #$00    
       STA    $A4     
       LDA    $A7     
       ORA    #$20    
       AND    #$FD    
       STA    $A7     
       LDA    #$0F    
       STA    $A8     
       JMP    LF9B4   
LF988: LDA    $A7     
       AND    #$11    
       BNE    LF9B4   
       LDA    $A5     
       BNE    LF9B4   
       LDY    $BB     
       DEY            
       JSR    LF0E5   
       CMP    $BE     
       BCS    LF9B4   
       LDA    $BF     
       STA    $A0     
       LDA    #$09    
       STA    $A1     
       LDA    #$00    
       STA    $A5     
       LDA    $A7     
       ORA    #$10    
       AND    #$FE    
       STA    $A7     
       LDA    #$0F    
       STA    $A8     
LF9B4: LDA    $C5     
       BEQ    LF9C2   
       LDA    $A8     
       CMP    #$0F    
       BNE    LF9C2   
       LDA    #$0A    
       STA    $A8     
LF9C2: LDA    $A7     
       AND    #$08    
       BEQ    LF9D6   
       LDA    $9D     
       BEQ    LF9D6   
       CMP    #$09    
       BCS    LF9D6   
       JSR    LFB16   
       JMP    LFA07   
LF9D6: LDA    $A7     
       AND    #$06    
       BEQ    LF9F6   
       LDA    $9F     
       CMP    #$50    
       BCS    LF9EC   
       CMP    #$3A    
       BCC    LF9F6   
       JSR    LFB16   
       JMP    LFA07   
LF9EC: CMP    #$5F    
       BCS    LF9F6   
       JSR    LFB16   
       JMP    LFA07   
LF9F6: LDA    $A7     
       AND    #$01    
       BEQ    LFA07   
       LDA    $A1     
       BEQ    LFA07   
       CMP    #$43    
       BCC    LFA07   
       JSR    LFB16   
LFA07: LDA    $80     
       CMP    #$00    
       BEQ    LFA4E   
       LDA    $A6     
       BEQ    LFA4E   
       DEC    $A6     
       BEQ    LFA25   
       JSR    LF0E5   
       ORA    #$01    
       STA    $81     
       CLC            
       ADC    #$44    
       STA    $83     
       STA    $82     
       BNE    LFA4E   
LFA25: LDA    $BD     
       BPL    LFA3C   
       LDA    #$00    
       STA    $BD     
       LDA    #$00    
       STA    $80     
       LDA    #$00    
       STA    $C6     
       LDA    #$FA    
       STA    $C7     
       JMP    LFA4E   
LFA3C: LDA    #$81    
       STA    $80     
       LDA    #$00    
       STA    $81     
       LDA    #$06    
       STA    $83     
       STA    $82     
       LDA    #$80    
       STA    $A8     
LFA4E: LDY    #$00    
       LDA    ($C8),Y 
       BMI    LFA7D   
       BEQ    LFA7D   
       STA    AUDC0   
       INY            
       LDA    ($C8),Y 
       STA    AUDF0   
       LDA    #$0F    
       STA    AUDV0   
       JMP    LFA68   
LFA64: .byte $A9,$00,$85,$19
LFA68: DEC    $CA     
       LDA    $CA     
       BNE    LFA89   
       INC    $C8     
       INC    $C8     
       INC    $C8     
       LDY    #$02    
       LDA    ($C8),Y 
       STA    $CA     
       JMP    LFA89   
LFA7D: LDA    #$00    
       STA    AUDV0   
       LDA    #$C1    
       STA    $C8     
       LDA    #$FE    
       STA    $C9     
LFA89: LDY    #$00    
       LDA    ($CB),Y 
       BMI    LFAB8   
       BEQ    LFAB8   
       STA    AUDC1   
       INY            
       LDA    ($CB),Y 
       STA    AUDF1   
       LDA    #$0F    
       STA    AUDV1   
       JMP    LFAA3   
LFA9F: .byte $A9,$00,$85,$1A
LFAA3: DEC    $CD     
       LDA    $CD     
       BNE    LFAC4   
       INC    $CB     
       INC    $CB     
       INC    $CB     
       LDY    #$02    
       LDA    ($CB),Y 
       STA    $CD     
       JMP    LFAC4   
LFAB8: LDA    #$00    
       STA    AUDV1   
       LDA    #$C1    
       STA    $CB     
       LDA    #$FE    
       STA    $CC     
LFAC4: LDA    INTIM   
       BNE    LFAC4   
       STA    WSYNC   
       RTS            

LFACC: INC    $B9     
       LDA    $B9     
       CMP    #$0A    
       BEQ    LFAD5   
       RTS            

LFAD5: LDA    #$00    
       STA    $B9     
LFAD9: INC    $B8     
       LDA    $B8     
       CMP    #$0A    
       BEQ    LFAE2   
       RTS            

LFAE2: LDA    #$00    
       STA    $B8     
       INC    $B7     
       LDA    $B7     
       CMP    #$0A    
       BEQ    LFAEF   
       RTS            

LFAEF: LDA    #$00    
       STA    $B7     
       INC    $BD     
       LDA    $BD     
       CMP    #$0A    
       BNE    LFAFD   
       DEC    $BD     
LFAFD: INC    $B6     
       LDA    $B6     
       CMP    #$0A    
       BEQ    LFB06   
       RTS            

LFB06: LDA    #$00    
       STA    $B6     
       INC    $B5     
       LDA    $B5     
       CMP    #$0B    
       BEQ    LFB13   
       RTS            

LFB13: DEC    $B5     
       RTS            

LFB16: LDA    #$00    
       STA    $87     
       STA    $88     
       STA    $9D     
       STA    $9F     
       STA    $A1     
       STA    $A2     
       STA    $A3     
       STA    $A4     
       STA    $A5     
       STA    $A7     
       DEC    $BD     
       LDA    #$01    
       STA    $80     
       LDA    #$7F    
       STA    $A6     
       LDA    #$EE    
       STA    $C8     
       LDA    #$FE    
       STA    $C9     
       LDA    #$F4    
       STA    $CB     
       LDA    #$FE    
       STA    $CC     
       LDA    #$78    
       STA    $CA     
       STA    $CD     
       RTS            

LFB4D: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    $87     
       STA    $88     
       STA    $C5     
       STA    $C6     
       STA    $9D     
       STA    $A1     
       STA    $9E     
       STA    $B5     
       STA    $B6     
       STA    $B7     
       STA    $B8     
       STA    $B9     
       STA    $BA     
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$00    
       STA    $81     
       LDA    #$06    
       STA    $82     
       STA    $83     
       STA    COLUP0  
       LDA    #$57    
       STA    $84     
       LDA    #$FA    
       STA    $C7     
       LDA    #$02    
       STA    ENAM0   
       STA    ENAM1   
       LDA    #$2F    
       STA    $C3     
       LDA    #$6D    
       STA    $C1     
       LDA    #$17    
       STA    $C2     
       LDA    #$00    
       STA    $80     
       LDA    #$C1    
       STA    $C8     
       STA    $CB     
       LDA    #$FE    
       STA    $C9     
       STA    $CC     
       RTS            

LFBAA: LDA    #$00    
       STA    $9D     
       STA    $9C     
       STA    $9F     
       STA    $9E     
       STA    $A1     
       STA    $A0     
       STA    $B5     
       STA    $B6     
       STA    $B7     
       STA    $B8     
       STA    $B9     
       STA    $BA     
       STA    $A7     
       STA    $A6     
       STA    $A8     
       STA    $C4     
       LDA    #$01    
       STA    $BB     
       LDA    #$02    
       STA    $BD     
       LDA    #$00    
       STA    $81     
       LDA    #$06    
       STA    $83     
       STA    $82     
       LDA    $C0     
       STA    $C1     
       ADC    #$45    
       STA    $C2     
       LDA    #$81    
       STA    $80     
       RTS            

LFBEB: LDA    #$E8    
       STA    $CB     
       LDA    #$FE    
       STA    $CC     
       LDA    #$04    
       STA    $CD     
       RTS            

LFBF8: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$FF,$66,$24,$3C,$5A,$99,$00,$00,$00,$99,$5A,$3C,$24
       .byte $66,$FF,$00,$00,$42,$26,$1E,$72,$72,$1E,$26,$42,$00,$42,$64,$78
       .byte $4E,$4E,$78,$64,$42
LFE6D: .byte $00,$4C,$40,$58,$4C,$DB,$FF,$FF,$5A,$18,$3C,$3C,$18,$00,$E0,$F0
       .byte $66,$FF,$FF,$66,$F0,$E0,$00,$07,$0F,$66,$FF,$FF,$66,$0F,$07,$18
       .byte $3C,$3C,$18,$5A,$FF,$FF,$DB,$00,$00,$42,$18,$3C,$3C,$18,$42,$00
       .byte $00,$08,$2A,$76,$88,$5A,$D1,$2A,$14,$00,$28,$62,$56,$EB,$56,$1C
       .byte $56,$08,$00,$2C,$2A,$56,$D4,$22,$66,$D8,$1C,$00,$08,$4C,$96,$69
       .byte $B2,$86,$68,$08,$00,$00,$00,$07,$00,$01,$07,$01,$01,$07,$02,$01
       .byte $07,$03,$01,$07,$04,$01,$07,$05,$01,$07,$06,$01,$07,$07,$01,$07
       .byte $08,$01,$00,$00,$00,$0F,$1F,$02,$00,$00,$00,$0E,$0F,$04,$00,$00
       .byte $00,$08,$1F,$78,$00,$00,$00,$09,$1F,$78,$00,$00,$00,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$00,$7F,$67,$67,$67,$63,$63,$7F,$00,$1C,$1C,$1C,$1C
       .byte $0C,$0C,$0C,$00,$7F,$70,$70,$7F,$03,$03,$7F,$00,$7F,$07,$07,$7F
       .byte $03,$03,$7F,$00,$07,$07,$07,$7F,$63,$63,$63,$00,$7F,$07,$07,$7F
       .byte $60,$60,$7F,$00,$7F,$67,$67,$7F,$60,$60,$7F,$00,$07,$07,$07,$07
       .byte $03,$03,$7F,$00,$7F,$67,$67,$7F,$63,$63,$7F,$00,$7F,$07,$07,$7F
       .byte $63,$63,$7F,$00,$0C,$66,$63,$03,$63,$66,$0C,$00,$DB,$FF,$5A,$18
       .byte $3C,$3C,$18,$00,$C3,$C3,$3C,$3C,$3C,$C3,$C3
LFF68: .byte $00,$08,$10,$18,$20,$28,$30,$38,$40,$48,$50
LFF73: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LFF7E: .byte $00,$16,$26,$36,$46,$56,$66,$76,$86,$96,$A6,$B6,$C6,$D6,$E6,$F6
LFF8E: .byte $06,$1A,$2A,$3A,$4A,$5A,$6A,$7A,$8A,$9A,$AA,$BA,$CA,$DA,$EA,$FA
LFF9E: .byte $00,$02,$00,$00,$00
LFFA3: .byte $00,$00,$00,$00,$02
LFFA8: .byte $01,$01,$01,$01,$02,$02,$02,$02,$03
LFFB1: .byte $FF,$64,$32,$28,$3C,$32,$2D,$23,$1E
LFFBA: .byte $FF,$64,$32,$28,$3C,$32,$2D,$23,$1A
LFFC3: .byte $0A,$0C,$0E,$10,$12,$14,$14,$14,$C8
LFFCC: .byte $57,$67,$77,$87,$97,$A7,$B7,$C7,$2F
LFFD5: .byte $03,$05,$07,$09,$0B,$0E,$10,$13,$17
LFFDE: .byte $0A,$0C,$0E,$10,$12,$14,$16,$18,$21
LFFE7: .byte $9D,$A6,$AF,$B8
LFFEB: .byte $FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
       .byte $FF,$00,$F1,$00,$F1
