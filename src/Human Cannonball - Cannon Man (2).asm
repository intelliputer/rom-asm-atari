; Disassembly of roms/Human Cannonball - Cannon Man (2).bin
; Disassembled Tue Oct  6 15:21:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Human Cannonball - Cannon Man (2).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUPF  =  $08
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
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
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP1FB  =  $33
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF006: STA    NUSIZ0,X
       INX            
       BNE    LF006   
       LDA    #$F7    
       STA    $85     
       JSR    LF355   
       INY            
       BEQ    LF04C   
LF015: INC    $9B,X   
       STY    REFP0,X 
       DEX            
       BNE    LF015   
       STY    HMCLR   
       LDA    SWCHA   
       EOR    #$FF    
       BEQ    LF027   
       STA    $9D     
LF027: LDA    SWCHB   
       LSR            
       BCS    LF03D   
       JSR    LF55A   
       INY            
       STY    $B5     
       STY    $B6     
       STY    $B7     
       LDY    #$40    
       STY    $B4     
       BNE    LF08D   
LF03D: LSR            
       BCC    LF044   
       STX    $86     
       BCS    LF08D   
LF044: STX    AUDV0   
       DEC    $86     
       BPL    LF08D   
       NOP            
       NOP            
LF04C: LDA    #$1E    
       STA    $86     
       STA    $C2     
       LDX    #$02    
       STX    $97     
       INC    $C3     
       CPX    $C3     
       BEQ    LF085   
       STY    $87     
       INY            
       STY    $C3     
       INC    $D1     
       LDA    $D1     
       CMP    #$09    
       BNE    LF06B   
       STY    $D1     
LF06B: AND    #$03    
       STA    $88     
       CMP    #$03    
       BNE    LF075   
       STA    $87     
LF075: LDA    $D1     
       CMP    #$05    
       BCS    LF07C   
       DEX            
LF07C: STX    $D5     
       LDX    $88     
       LDA    LF709,X 
       STA    $C4     
LF085: LDA    $D1     
       STA    $B6     
       LDA    $C3     
       STA    $B7     
LF08D: LDA    $C4     
       CLC            
       LDX    $E8     
       ADC    LF749,X 
       LDX    #$00    
       JSR    LF604   
       JSR    LF2D5   
LF09D: LDX    INTIM   
       BPL    LF09D   
       LDX    #$33    
       STX    TIM64T  
       STX    VBLANK  
       STA    WSYNC   
       STX    VSYNC   
       STA    HMCLR   
       LDX    #$70    
       STX    HMBL    
       LDY    #$04    
       JSR    LF2D7   
       STY    VSYNC   
       STY    VBLANK  
       LDA    $C8     
       STA    COLUBK  
       LDY    #$04    
LF0C2: LDA.wy $00B5,Y 
       AND    #$0F    
       JSR    LF6B5   
       STA.wy $00B9,Y 
       LDA.wy $00B5,Y 
       AND    #$F0    
       JSR    LF61E   
       JSR    LF6B5   
       STA.wy $00BD,Y 
       DEY            
       BNE    LF0C2   
       LDA    #$08    
       BIT    SWCHB   
       BNE    LF0E6   
       SEC            
LF0E6: LDX    #$05    
LF0E8: LDA    LF6F6,X 
       BCC    LF0F0   
       LDA    LF6FB,X 
LF0F0: LDY    $97     
       BEQ    LF0FC   
       EOR    $91     
       AND    #$F6    
       BCC    LF0FC   
       AND    #$06    
LF0FC: STA    $C4,X   
       LDY    $BE     
       LDA    LF78F,Y 
       AND    #$F0    
       STA    $CE     
       LDY    $BA     
       LDA    LF78F,Y 
       AND    #$0F    
       ORA    $CE     
       STA    $E8,X   
       INC    $BE     
       INC    $BA     
       DEX            
       BNE    LF0E8   
       LDA    $C5     
       STA    COLUP0  
       STA    COLUP1  
       STA    HMCLR   
       LDA    SWCHB   
       LDX    $B5     
       BNE    LF129   
       ASL            
LF129: LDX    #$40    
       AND    #$80    
       TAY            
       BMI    LF132   
       LDX    #$C0    
LF132: EOR    $89     
       BEQ    LF13A   
       STY    $89     
       STX    HMM1    
LF13A: JSR    LF2D5   
       LDA    #$01    
       AND    $9F     
       STA    $9F     
       BEQ    LF157   
       INC    $92     
       INC    $D3     
       LDA    $D3     
       CMP    #$BF    
       BNE    LF153   
       LDA    #$50    
       STA    $D3     
LF153: ADC    #$19    
       STA    $D4     
LF157: STA    HMCLR   
LF159: JSR    LF2D5   
       LDY    INTIM   
       BPL    LF159   
       JSR    LF318   
       LDA    #$7D    
       STA    $A2     
       LDA    #$82    
       STA    $84     
       LDA    #$F7    
       STA    $A3     
       JSR    LF30B   
       LDA    #$14    
       STA    $A2     
       LDA    #$87    
       STA    $84     
       INY            
       JSR    LF30B   
       LDA    #$74    
       STA    $9A     
       LDX    #$02    
       BIT    $89     
       BPL    LF18A   
       INX            
LF18A: STX    $CE     
       JSR    LF2D5   
LF18F: LDX    $D5     
       CMP    $D3     
       BCC    LF19A   
       CMP    $D4     
       BCS    LF19A   
       DEX            
LF19A: STX    ENABL   
       JSR    LF2BF   
       LDA    $9A     
       CMP    #$BA    
       BNE    LF18F   
       LDX    #$04    
       STX    ENABL   
       LDA    #$90    
       STA    HMBL    
LF1AD: JSR    LF2BF   
       DEX            
       BNE    LF1AD   
       LDA    $D6     
       STA    GRP0    
       LDX    $CE     
       STX    ENABL   
       LDA    LF6E0,X 
       STA    CTRLPF  
       STA    HMCLR   
       JSR    LF2BF   
       LDA    $D7     
       STA    GRP0    
       LDA    $C7     
       STA    COLUPF  
       STX    ENAM0   
       STX    ENAM1   
       JSR    LF2BF   
       LDA    $C9     
       STA    COLUPF  
       LDX    $E8     
       LDA    LF6E4,X 
       LDX    #$07    
       STA    HMP0    
       JSR    LF2BF   
LF1E4: LDA    $D8,X   
       STA    GRP0    
       LDA    $9A     
       CMP    #$C7    
       BNE    LF1F0   
       STX    ENABL   
LF1F0: JSR    LF2BF   
       DEX            
       BPL    LF1E4   
       LDA    $E0     
       STA    GRP0    
       LDX    $E8     
       LDA    LF6E5,X 
       LDX    #$FC    
       STA    HMP0    
       JSR    LF2BF   
LF206: LDA    $E5,X   
       STA    GRP0    
       LDA    $9A     
       CMP    #$CB    
       BNE    LF214   
       LDA    #$10    
       STA    HMP0    
LF214: JSR    LF2BF   
       INX            
       BNE    LF206   
       LDA    $E5     
       STA    GRP0    
       LDX    $E8     
       LDA    #$E8    
       STA    $A2     
       LDA    LF6E5,X 
       STA    HMP0    
       JSR    LF2BF   
       LDA    $E6     
       STA    GRP0    
       LDA    #$14    
       STA    $84     
       LDA    LF746,X 
       LDX    $E7     
       STA    HMP0    
       JSR    LF2BF   
       STX    GRP0    
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$0A    
       STA    $9B     
       STA    HMCLR   
       JSR    LF2BF   
       LDX    #$03    
LF24F: JSR    LF2BF   
       LDA    #$3C    
       STA    GRP0    
       DEX            
       BPL    LF24F   
       STX    GRP0    
       STX    $83     
       LDX    #$08    
       STA    HMCLR   
LF261: JSR    LF2BF   
       DEX            
       BNE    LF261   
       LDA    $C6     
       STA    COLUBK  
       LDY    #$FC    
LF26D: STX    ENABL,Y 
       INY            
       BNE    LF26D   
       STX    NUSIZ0  
       STX    $A3     
       LDA    #$3E    
       STA    TIM64T  
       LDY    #$10    
       STY    CTRLPF  
       LDA    $97     
       BEQ    LF285   
       LDY    #$05    
LF285: STX    $A2,Y   
       DEY            
       BNE    LF285   
       JSR    LF3D2   
       BIT    $8B     
       BMI    LF2AD   
       LDA    $8F     
       JSR    LF6B5   
       ASL            
       LDY    $8A     
       BNE    LF29F   
       ADC    #$0B    
       SBC    $9B     
LF29F: TAY            
LF2A0: LDA    LF7C1,Y 
       AND    $83     
       STA    $A9,X   
       INX            
       INY            
       DEC    $9B     
       BNE    LF2A0   
LF2AD: LDY    INTIM   
       BPL    LF2AD   
       JSR    LF2D5   
       LDA    #$13    
       STA    TIM64T  
       LDX    #$04    
       JMP    LF015   
LF2BF: INC    $9A     
       LDA    $9A     
       SEC            
       SBC    $8D     
       CMP    #$0B    
       BCS    LF2CB   
       INY            
LF2CB: LDA.wy $00A8,Y 
       STA    WSYNC   
       STA    HMOVE   
       STA    GRP1    
       RTS            

LF2D5: LDY    #$01    
LF2D7: STA    WSYNC   
       STA    HMOVE   
       DEY            
       BNE    LF2D7   
       RTS            

LF2DF: LDA    SWCHA   
       LDX    $B5     
       BNE    LF2E9   
       JSR    LF61E   
LF2E9: AND    #$0F    
       CLC            
       TAX            
       RTS            

LF2EE: LDA    $80     
       EOR    $9C,X   
       ADC    $9E     
       STA    $80     
       BNE    LF2FA   
       LDA    $9C,X   
LF2FA: LSR            
       TAX            
       SEC            
       TYA            
       SBC    $A0     
       JSR    LF6B7   
       LDA    #$7F    
       JSR    LF67A   
       ADC    $A0     
       RTS            

LF30B: LDX    $C0,Y   
       STX    $BF     
       LDX    $BC,Y   
       STX    $BB     
       LDY    #$03    
       JSR    LF2D7   
LF318: LDY    #$05    
       SEC            
       LDA    #$AA    
       STA    $CE     
LF31F: STA    WSYNC   
       STA    HMOVE   
       LDA    ($A2),Y 
       STA    PF1     
       LDA    ($84),Y 
       STA    PF2     
       LDX    $BF     
       LDA    LF78F,X 
       AND    #$F0    
       STA    $A6     
       LDX    $BB     
       LDA    LF78F,X 
       AND    #$0F    
       ORA    $A6     
       STA    PF1     
       LDA    #$00    
       ROL    $CE     
       STA    PF2     
       BCS    LF31F   
       INC    $BF     
       INC    $BB     
       DEY            
       BNE    LF31F   
       STA    WSYNC   
       STA    HMOVE   
       STY    PF1     
LF354: RTS            

LF355: LDA    #$16    
       STA    $82     
       LDX    #$01    
       LDA    #$B5    
       JSR    LF603   
       LDA    #$BE    
       JSR    LF603   
       INY            
       STY    $89     
       LDA    #$B6    
       JMP    LF603   
LF36D: LDA    #$0F    
       BIT    $9E     
       BNE    LF354   
       JSR    LF2DF   
       LDA    $88     
       BEQ    LF3C6   
       LDA    LF6E8,X 
       STX    $9A     
       ADC    $C2     
       CMP    #$14    
       BCC    LF3D1   
       CMP    #$51    
       BCS    LF3D1   
LF389: STA    $C2     
       JSR    LF69D   
       STA    $B9     
       LDX    #$00    
       CMP    #$37    
       BCC    LF39C   
       INX            
       CMP    #$59    
       BCC    LF39C   
       INX            
LF39C: LDA    #$12    
       STX    $E8     
       JSR    LF6B7   
       TAY            
       LDX    #$EE    
LF3A6: LDA    LF710,Y 
       STA    $E8,X   
       INY            
       INX            
       BNE    LF3A6   
       LDA    $87     
       BEQ    LF3C5   
       LDX    $9A     
       LDA    LF6E1,X 
       ADC    $99     
       CMP    #$2E    
       BCS    LF3C5   
       STA    $99     
       JSR    LF69D   
       STA    $B8     
LF3C5: RTS            

LF3C6: LDA    LF6FA,X 
       ADC    $C4     
       CMP    #$41    
       BCS    LF3C5   
       STA    $C4     
LF3D1: RTS            

LF3D2: INC    $90     
       BNE    LF3DC   
       INC    $91     
       BNE    LF3DC   
       INC    $97     
LF3DC: LDA    $97     
LF3DE: BNE    LF36D   
       BIT    $B4     
       BVS    LF3EF   
       BMI    LF438   
       LDX    $B5     
       LDA    INPT4,X 
       BMI    LF3DE   
       JMP    LF62B   
LF3EF: STX    $B4     
       LDA    $88     
       BEQ    LF40E   
       TAY            
       LDA    LF78C,Y 
       STA    $A0     
       LDA    $87     
       BEQ    LF409   
       STX    $A0     
       LDY    #$40    
       JSR    LF2EE   
       STA    $C4     
       RTS            

LF409: INX            
       LDY    #$2D    
       BNE    LF42D   
LF40E: LDA    #$14    
       STA    $A0     
       LDY    #$50    
       JSR    LF2EE   
       JSR    LF389   
       LDA    $C2     
       SBC    #$0A    
LF41E: INX            
       SBC    #$0A    
       BPL    LF41E   
       LDY    LF76F,X 
       LDA    LF776,X 
       STA    $A0     
       LDX    #$01    
LF42D: JSR    LF2EE   
       STA    $99     
       JSR    LF69D   
       STA    $B8     
       RTS            

LF438: LDY    $96     
       BEQ    LF441   
       DEY            
       STY    AUDV0   
       STY    $96     
LF441: LDX    #$D2    
       CPX    $8D     
       BCC    LF4AF   
       LDA    #$34    
       JSR    LF6AB   
       EOR    #$FF    
       SEC            
       ADC    $CA     
       BPL    LF459   
       DEC    $A5     
       EOR    #$FF    
       ADC    #$01    
LF459: ASL            
       JSR    LF6AB   
       BIT    $A5     
       BMI    LF467   
       DEC    $CD     
       LDA    $CD     
       EOR    #$FF    
LF467: LDY    $E8     
       ADC    LF7F6,Y 
       STA    $8D     
       LDY    $8A     
       BNE    LF4A2   
       CMP    #$75    
       BCS    LF482   
       CMP    #$6C    
       BCC    LF482   
       SBC    #$6B    
       STA    $9B     
       LDA    #$75    
       STA    $8D     
LF482: LDA    $9F     
       BEQ    LF4A2   
       CMP    $8F     
       BCC    LF4A2   
       TAX            
       LDA    $8D     
       TAY            
       SBC    $95     
       STY    $95     
       CMP    #$02    
       BCC    LF4A0   
       INX            
       CMP    #$81    
       BCC    LF4A0   
       DEX            
       CMP    #$FF    
       BCC    LF4A2   
LF4A0: STX    $8F     
LF4A2: LDX    #$08    
       BIT    CXM0P   
       BMI    LF4F9   
       BIT    CXP1FB  
       BVC    LF4CF   
       JMP    LF56C   
LF4AF: INX            
       STX    $8D     
       LDX    #$00    
       INC    $93     
       BMI    LF531   
       BNE    LF4C0   
       LDA    #$07    
       STA    AUDV0   
       STA    AUDC0   
LF4C0: LDA    #$18    
       STA    AUDF0   
       CMP    $93     
       BNE    LF4CA   
       STX    AUDV0   
LF4CA: LDX    #$04    
       STX    $8F     
       RTS            

LF4CF: LDA    #$07    
       BIT    $9E     
       BNE    LF4F6   
       LDA    $D1     
       CMP    #$05    
       BCS    LF4F6   
       LDY    $82     
       DEY            
       JSR    LF2DF   
       LDA    LF707,X 
       BEQ    LF4F6   
       BPL    LF4EA   
       INY            
       INY            
LF4EA: CPY    #$2C    
       BCS    LF4F6   
       STY    $82     
       STA    HMM0    
       STA    HMM1    
       STA    HMBL    
LF4F6: JMP    LF5EF   
LF4F9: LDY    $8A     
       BNE    LF578   
       LDY    #$01    
       INC    $94     
       BNE    LF50B   
       LDA    #$16    
       STA    AUDF0   
       STX    AUDV0   
       STY    AUDC0   
LF50B: LDX    $94     
       CPX    #$0F    
       BNE    LF514   
       DEY            
       STY    AUDV0   
LF514: LDA    $CB     
       LSR            
       LSR            
       LSR            
       JSR    LF6AD   
       EOR    #$FF    
       BIT    CXM0P   
       BMI    LF52A   
       LDY    $8E     
       BEQ    LF52A   
       ADC    #$90    
       BNE    LF52E   
LF52A: ADC    #$96    
       ADC    $82     
LF52E: JMP    LF603   
LF531: INX            
       CPX    $C3     
       BNE    LF538   
LF536: INC    $B6,X   
LF538: LDY    #$07    
       CPY    $B7     
       BEQ    LF54C   
       CPY    $B6     
       BNE    LF54F   
       LDX    $B5     
       BNE    LF54C   
       LDX    #$01    
       CPX    $C3     
       BNE    LF54F   
LF54C: INC    $97     
       RTS            

LF54F: LDA    $C3     
       LSR            
       EOR    $B5     
       STA    $B5     
       LSR    $B4     
       LDY    #$00    
LF55A: LDX    #$0E    
LF55C: STY    $89,X   
       DEX            
       BNE    LF55C   
       STY    CXCLR   
       STY    AUDV0   
       DEC    $93     
       DEC    $94     
       JMP    LF355   
LF56C: LDA    $D2     
       STA    $8E     
       CMP    #$98    
       BCC    LF4F9   
       CMP    #$9C    
       BCC    LF5ED   
LF578: BIT    $89     
       BMI    LF57E   
       SBC    #$04    
LF57E: SBC    $82     
       CMP    #$9F    
       BCC    LF588   
       LDA    $8A     
       BEQ    LF5ED   
LF588: INC    $8A     
       INC    $93     
       BMI    LF5AB   
       BNE    LF59C   
       STX    AUDC0   
       LDX    #$0B    
       STX    $96     
       STX    AUDV0   
       LDA    #$18    
       STA    AUDF0   
LF59C: LDA    $8C     
       BNE    LF5A8   
       LDA    $8D     
       CMP    #$C0    
       BCC    LF5CB   
       STA    $8C     
LF5A8: STX    $8D     
       RTS            

LF5AB: LDA    #$BA    
       STA    $8D     
       LDX    #$01    
       LDA    #$9E    
       BIT    $89     
       BPL    LF5B9   
       LDA    #$9C    
LF5B9: ADC    $82     
       JSR    LF604   
       LDX    #$03    
       STX    $8F     
       DEC    $94     
       BMI    LF5EC   
       LDX    $B5     
       JMP    LF536   
LF5CB: LDA    #$C1    
       SBC    $8D     
       STA    $9B     
       JSR    LF5EF   
       LDA    $D2     
       SEC            
       BIT    $89     
       BMI    LF5DD   
       SBC    #$04    
LF5DD: SBC    $82     
       SBC    #$9B    
       BMI    LF5E9   
       TAY            
LF5E4: ASL    $83     
       DEY            
       BPL    LF5E4   
LF5E9: INX            
       STX    $8F     
LF5EC: RTS            

LF5ED: STA    CXCLR   
LF5EF: LDA    $CB     
       JSR    LF6AB   
       ADC    $C4     
       LDY    $E8     
       ADC    LF7F9,Y 
       STA    $D2     
       CMP    #$D0    
       BCC    LF603   
       STA    $8B     
LF603: INX            
LF604: SEC            
       SBC    #$2F    
       LDY    #$02    
LF609: INY            
       SBC    #$0F    
       BCS    LF609   
       EOR    #$FF    
       SBC    #$06    
       JSR    LF61E   
       STY    WSYNC   
LF617: DEY            
       BPL    LF617   
       STA    RESP0,X 
       STA    HMP0,X  
LF61E: ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       ASL            
       ADC    #$00    
       RTS            

LF62B: STY    $9C     
       ROR    $B4     
       LDA    #$0F    
       STA    AUDV0   
       STA    $96     
       LSR            
       STA    AUDC0   
       LDA    #$1B    
       STA    AUDF0   
       LDA    $99     
       LDX    #$B0    
       JSR    LF6AD   
       STX    $92     
       STA    $81     
       LDA    #$CA    
       STA    $95     
       LDA    $C2     
       JSR    LF660   
       LDX    #$0D    
       JSR    LF6B7   
       LDA    #$10    
       JSR    LF67A   
       STA    $CA     
       LDA    #$5B    
       SBC    $C2     
LF660: LSR            
       TAX            
       LDA    LF747,X 
       BCC    LF66D   
       INX            
       CLC            
       ADC    LF747,X 
       LSR            
LF66D: LDX    $81     
       JSR    LF6B7   
       LDA    #$64    
       JSR    LF67A   
       STA    $CB     
       RTS            

LF67A: STA    $CF     
       LDX    #$08    
LF67E: ASL    $CD     
       ROL    $CC     
       SEC            
       LDA    $CC     
       SBC    $CF     
       STA    $CC     
       BPL    LF693   
       CLC            
       ADC    $CF     
       STA    $CC     
       JMP    LF698   
LF693: LSR    $CD     
       SEC            
       ROL    $CD     
LF698: DEX            
       BNE    LF67E   
       BEQ    LF6DE   
LF69D: SED            
       TAX            
       LDA    #$00    
       DEX            
       BMI    LF6A9   
LF6A4: ADC    #$01    
       DEX            
       BPL    LF6A4   
LF6A9: CLD            
       RTS            

LF6AB: LDX    $92     
LF6AD: JSR    LF6B7   
       LDA    #$3C    
       JMP    LF67A   
LF6B5: LDX    #$05    
LF6B7: STA    $D0     
       LDA    #$00    
       STA    $CC     
       STA    $CD     
       STX    $CF     
       LDX    #$08    
LF6C3: ASL    $CF     
       BCC    LF6D4   
       LDA    $CD     
       CLC            
       ADC    $D0     
       STA    $CD     
       LDA    #$00    
       ADC    $CC     
       STA    $CC     
LF6D4: DEX            
       BEQ    LF6DE   
       ASL    $CD     
       ROL    $CC     
       JMP    LF6C3   
LF6DE: LDA    $CD     
LF6E0: CLC            
LF6E1: RTS            

LF6E2: .byte $31,$21
LF6E4: .byte $00
LF6E5: .byte $10,$00,$00
LF6E8: .byte $01,$00,$00,$00,$FF,$00,$00,$00,$00,$F6,$0A,$00,$00,$FF
LF6F6: .byte $01,$00,$D6,$94
LF6FA: .byte $86
LF6FB: .byte $28,$02,$04,$0A,$06,$04,$05,$00,$FC,$00,$FB,$00
LF707: .byte $FF,$01
LF709: .byte $00,$32,$10,$00,$00,$F0,$00
LF710: .byte $00,$00,$1F,$0E,$06,$00,$00,$00,$00,$00,$7F,$7F,$FF,$FF,$FF,$FF
       .byte $FF,$3E,$00,$00,$7E,$7E,$7C,$FC,$F8,$F0,$E0,$80,$7F,$FE,$FE,$FE
       .byte $FF,$7F,$FF,$3C,$02,$07,$7C,$7E,$3E,$3E,$1E,$1F,$0F,$0F,$7C,$FC
       .byte $FC,$7C,$7E,$3F,$3F,$3C
LF746: .byte $72
LF747: .byte $52,$42
LF749: .byte $4E,$52,$48,$11,$15,$18,$1C,$1F,$22,$25,$29,$2C,$2F,$32,$35,$38
       .byte $3B,$3E,$40,$43,$45,$48,$4A,$4D,$4F,$51,$53,$55,$57,$58,$5A,$5B
       .byte $5D,$5E,$5F,$60,$61,$62
LF76F: .byte $62,$2D,$2A,$27,$27,$27,$2A
LF776: .byte $2D,$28,$28,$1C,$18,$19,$1E,$29,$45,$45,$55,$6D,$45,$28,$A8,$3B
       .byte $AA,$2B,$3C,$84,$08,$90
LF78C: .byte $20,$1C,$24
LF78F: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF7C1: .byte $00,$08,$14,$14,$08,$1E,$30,$50,$10,$20,$00,$42,$24,$1E,$1E,$64
       .byte $02,$00,$00,$00,$00,$20,$10,$52,$34,$18,$08,$34,$04,$00,$2A,$2A
       .byte $1C,$08,$08,$08,$00,$00,$00,$00,$EA,$AA,$EE,$00,$35,$27,$35,$00
       .byte $02,$7E,$07,$0A,$01
LF7F6: .byte $C1,$BB,$B7
LF7F9: .byte $53,$51,$4D,$00,$F0,$00,$00,$D8,$A2,$FF,$9A,$E8,$8A,$95,$04,$E8
       .byte $D0,$FB,$A9,$F7,$85,$85,$20,$55,$F3,$C8,$F0,$37,$F6,$9B,$94,$0B
       .byte $CA,$D0,$F9,$84,$2B,$AD,$80,$02,$49,$FF,$F0,$02,$85,$9D,$AD,$82
       .byte $02,$4A,$B0,$10,$20,$5A,$F5,$C8,$84,$B5,$84,$B6,$84,$B7,$A0,$40
       .byte $84,$B4,$D0,$50,$4A,$90,$04,$86,$86,$B0,$49,$86,$19,$C6,$86,$10
       .byte $43,$EA,$EA,$A9,$1E,$85,$86,$85,$C2,$A2,$02,$86,$97,$E6,$C3,$E4
       .byte $C3,$F0,$29,$84,$87,$C8,$84,$C3,$E6,$D1,$A5,$D1,$C9,$09,$D0,$02
       .byte $84,$D1,$29,$03,$85,$88,$C9,$03,$D0,$02,$85,$87,$A5,$D1,$C9,$05
       .byte $B0,$01,$CA,$86,$D5,$A6,$88,$BD,$09,$F7,$85,$C4,$A5,$D1,$85,$B6
       .byte $A5,$C3,$85,$B7,$A5,$C4,$18,$A6,$E8,$7D,$49,$F7,$A2,$00,$20,$04
       .byte $F6,$20,$D5,$F2,$AE,$84,$02,$10,$FB,$A2,$33,$8E,$96,$02,$86,$01
       .byte $85,$02,$86,$00,$85,$2B,$A2,$70,$86,$24,$A0,$04,$20,$D7,$F2,$84
       .byte $00,$84,$01,$A5,$C8,$85,$09,$A0,$04,$B9,$B5,$00,$29,$0F,$20,$B5
       .byte $F6,$99,$B9,$00,$B9,$B5,$00,$29,$F0,$20,$1E,$F6,$20,$B5,$F6,$99
       .byte $BD,$00,$88,$D0,$E4,$A9,$08,$2C,$82,$02,$D0,$01,$38,$A2,$05,$BD
       .byte $F6,$F6,$90,$03,$BD,$FB,$F6,$A4,$97,$F0,$08,$45,$91,$29,$F6,$90
       .byte $02,$29,$06,$95,$C4,$A4,$BE,$B9,$8F,$F7,$29,$F0,$85,$CE,$A4,$BA
       .byte $B9,$8F,$F7,$29,$0F,$05,$CE,$95,$E8,$E6,$BE,$E6,$BA,$CA,$D0,$CF
       .byte $A5,$C5,$85,$06,$85,$07,$85,$2B,$AD,$82,$02,$A6,$B5,$D0,$01,$0A
       .byte $A2,$40,$29,$80,$A8,$30,$02,$A2,$C0,$45,$89,$F0,$04,$84,$89,$86
       .byte $23,$20,$D5,$F2,$A9,$01,$25,$9F,$85,$9F,$F0,$12,$E6,$92,$E6,$D3
       .byte $A5,$D3,$C9,$BF,$D0,$04,$A9,$50,$85,$D3,$69,$19,$85,$D4,$85,$2B
       .byte $20,$D5,$F2,$AC,$84,$02,$10,$F8,$20,$18,$F3,$A9,$7D,$85,$A2,$A9
       .byte $82,$85,$84,$A9,$F7,$85,$A3,$20,$0B,$F3,$A9,$14,$85,$A2,$A9,$87
       .byte $85,$84,$C8,$20,$0B,$F3,$A9,$74,$85,$9A,$A2,$02,$24,$89,$10,$01
       .byte $E8,$86,$CE,$20,$D5,$F2,$A6,$D5,$C5,$D3,$90,$05,$C5,$D4,$B0,$01
       .byte $CA,$86,$1F,$20,$BF,$F2,$A5,$9A,$C9,$BA,$D0,$EA,$A2,$04,$86,$1F
       .byte $A9,$90,$85,$24,$20,$BF,$F2,$CA,$D0,$FA,$A5,$D6,$85,$1B,$A6,$CE
       .byte $86,$1F,$BD,$E0,$F6,$85,$0A,$85,$2B,$20,$BF,$F2,$A5,$D7,$85,$1B
       .byte $A5,$C7,$85,$08,$86,$1D,$86,$1E,$20,$BF,$F2,$A5,$C9,$85,$08,$A6
       .byte $E8,$BD,$E4,$F6,$A2,$07,$85,$20,$20,$BF,$F2,$B5,$D8,$85,$1B,$A5
       .byte $9A,$C9,$C7,$D0,$02,$86,$1F,$20,$BF,$F2,$CA,$10,$EE,$A5,$E0,$85
       .byte $1B,$A6,$E8,$BD,$E5,$F6,$A2,$FC,$85,$20,$20,$BF,$F2,$B5,$E5,$85
       .byte $1B,$A5,$9A,$C9,$CB,$D0,$04,$A9,$10,$85,$20,$20,$BF,$F2,$E8,$D0
       .byte $EC,$A5,$E5,$85,$1B,$A6,$E8,$A9,$E8,$85,$A2,$BD,$E5,$F6,$85,$20
       .byte $20,$BF,$F2,$A5,$E6,$85,$1B,$A9,$14,$85,$84,$BD,$46,$F7,$A6,$E7
       .byte $85,$20,$20,$BF,$F2,$86,$1B,$A9,$05,$85,$04,$A9,$0A,$85,$9B,$85
       .byte $2B,$20,$BF,$F2,$A2,$03,$20,$BF,$F2,$A9,$3C,$85,$1B,$CA,$10,$F6
       .byte $86,$1B,$86,$83,$A2,$08,$85,$2B,$20,$BF,$F2,$CA,$D0,$FA,$A5,$C6
       .byte $85,$09,$A0,$FC,$96,$1F,$C8,$D0,$FB,$86,$04,$86,$A3,$A9,$3E,$8D
       .byte $96,$02,$A0,$10,$84,$0A,$A5,$97,$F0,$02,$A0,$05,$96,$A2,$88,$D0
       .byte $FB,$20,$D2,$F3,$24,$8B,$30,$1C,$A5,$8F,$20,$B5,$F6,$0A,$A4,$8A
       .byte $D0,$04,$69,$0B,$E5,$9B,$A8,$B9,$C1,$F7,$25,$83,$95,$A9,$E8,$C8
       .byte $C6,$9B,$D0,$F3,$AC,$84,$02,$10,$FB,$20,$D5,$F2,$A9,$13,$8D,$96
       .byte $02,$A2,$04,$4C,$15,$F0,$E6,$9A,$A5,$9A,$38,$E5,$8D,$C9,$0B,$B0
       .byte $01,$C8,$B9,$A8,$00,$85,$02,$85,$2A,$85,$1C,$60,$A0,$01,$85,$02
       .byte $85,$2A,$88,$D0,$F9,$60,$AD,$80,$02,$A6,$B5,$D0,$03,$20,$1E,$F6
       .byte $29,$0F,$18,$AA,$60,$A5,$80,$55,$9C,$65,$9E,$85,$80,$D0,$02,$B5
       .byte $9C,$4A,$AA,$38,$98,$E5,$A0,$20,$B7,$F6,$A9,$7F,$20,$7A,$F6,$65
       .byte $A0,$60,$B6,$C0,$86,$BF,$B6,$BC,$86,$BB,$A0,$03,$20,$D7,$F2,$A0
       .byte $05,$38,$A9,$AA,$85,$CE,$85,$02,$85,$2A,$B1,$A2,$85,$0E,$B1,$84
       .byte $85,$0F,$A6,$BF,$BD,$8F,$F7,$29,$F0,$85,$A6,$A6,$BB,$BD,$8F,$F7
       .byte $29,$0F,$05,$A6,$85,$0E,$A9,$00,$26,$CE,$85,$0F,$B0,$D8,$E6,$BF
       .byte $E6,$BB,$88,$D0,$D1,$85,$02,$85,$2A,$84,$0E,$60,$A9,$16,$85,$82
       .byte $A2,$01,$A9,$B5,$20,$03,$F6,$A9,$BE,$20,$03,$F6,$C8,$84,$89,$A9
       .byte $B6,$4C,$03,$F6,$A9,$0F,$24,$9E,$D0,$E1,$20,$DF,$F2,$A5,$88,$F0
       .byte $4C,$BD,$E8,$F6,$86,$9A,$65,$C2,$C9,$14,$90,$4C,$C9,$51,$B0,$48
       .byte $85,$C2,$20,$9D,$F6,$85,$B9,$A2,$00,$C9,$37,$90,$06,$E8,$C9,$59
       .byte $90,$01,$E8,$A9,$12,$86,$E8,$20,$B7,$F6,$A8,$A2,$EE,$B9,$10,$F7
       .byte $95,$E8,$C8,$E8,$D0,$F7,$A5,$87,$F0,$12,$A6,$9A,$BD,$E1,$F6,$65
       .byte $99,$C9,$2E,$B0,$07,$85,$99,$20,$9D,$F6,$85,$B8,$60,$BD,$FA,$F6
       .byte $65,$C4,$C9,$41,$B0,$F6,$85,$C4,$60,$E6,$90,$D0,$06,$E6,$91,$D0
       .byte $02,$E6,$97,$A5,$97,$D0,$8D,$24,$B4,$70,$0B,$30,$52,$A6,$B5,$B5
       .byte $3C,$30,$F2,$4C,$2B,$F6,$86,$B4,$A5,$88,$F0,$19,$A8,$B9,$8C,$F7
       .byte $85,$A0,$A5,$87,$F0,$0A,$86,$A0,$A0,$40,$20,$EE,$F2,$85,$C4,$60
       .byte $E8,$A0,$2D,$D0,$1F,$A9,$14,$85,$A0,$A0,$50,$20,$EE,$F2,$20,$89
       .byte $F3,$A5,$C2,$E9,$0A,$E8,$E9,$0A,$10,$FB,$BC,$6F,$F7,$BD,$76,$F7
       .byte $85,$A0,$A2,$01,$20,$EE,$F2,$85,$99,$20,$9D,$F6,$85,$B8,$60,$A4
       .byte $96,$F0,$05,$88,$84,$19,$84,$96,$A2,$D2,$E4,$8D,$90,$68,$A9,$34
       .byte $20,$AB,$F6,$49,$FF,$38,$65,$CA,$10,$06,$C6,$A5,$49,$FF,$69,$01
       .byte $0A,$20,$AB,$F6,$24,$A5,$30,$06,$C6,$CD,$A5,$CD,$49,$FF,$A4,$E8
       .byte $79,$F6,$F7,$85,$8D,$A4,$8A,$D0,$30,$C9,$75,$B0,$0C,$C9,$6C,$90
       .byte $08,$E9,$6B,$85,$9B,$A9,$75,$85,$8D,$A5,$9F,$F0,$1C,$C5,$8F,$90
       .byte $18,$AA,$A5,$8D,$A8,$E5,$95,$84,$95,$C9,$02,$90,$0A,$E8,$C9,$81
       .byte $90,$05,$CA,$C9,$FF,$90,$02,$86,$8F,$A2,$08,$24,$30,$30,$51,$24
       .byte $33,$50,$23,$4C,$6C,$F5,$E8,$86,$8D,$A2,$00,$E6,$93,$30,$79,$D0
       .byte $06,$A9,$07,$85,$19,$85,$15,$A9,$18,$85,$17,$C5,$93,$D0,$02,$86
       .byte $19,$A2,$04,$86,$8F,$60,$A9,$07,$24,$9E,$D0,$21,$A5,$D1,$C9,$05
       .byte $B0,$1B,$A4,$82,$88,$20,$DF,$F2,$BD,$07,$F7,$F0,$10,$10,$02,$C8
       .byte $C8,$C0,$2C,$B0,$08,$84,$82,$85,$22,$85,$23,$85,$24,$4C,$EF,$F5
       .byte $A4,$8A,$D0,$7B,$A0,$01,$E6,$94,$D0,$08,$A9,$16,$85,$17,$86,$19
       .byte $84,$15,$A6,$94,$E0,$0F,$D0,$03,$88,$84,$19,$A5,$CB,$4A,$4A,$4A
       .byte $20,$AD,$F6,$49,$FF,$24,$30,$30,$08,$A4,$8E,$F0,$04,$69,$90,$D0
       .byte $04,$69,$96,$65,$82,$4C,$03,$F6,$E8,$E4,$C3,$D0,$02,$F6,$B6,$A0
       .byte $07,$C4,$B7,$F0,$0E,$C4,$B6,$D0,$0D,$A6,$B5,$D0,$06,$A2,$01,$E4
       .byte $C3,$D0,$03,$E6,$97,$60,$A5,$C3,$4A,$45,$B5,$85,$B5,$46,$B4,$A0
       .byte $00,$A2,$0E,$94,$89,$CA,$D0,$FB,$84,$2C,$84,$19,$C6,$93,$C6,$94
       .byte $4C,$55,$F3,$A5,$D2,$85,$8E,$C9,$98,$90,$85,$C9,$9C,$90,$75,$24
       .byte $89,$30,$02,$E9,$04,$E5,$82,$C9,$9F,$90,$04,$A5,$8A,$F0,$65,$E6
       .byte $8A,$E6,$93,$30,$1D,$D0,$0C,$86,$15,$A2,$0B,$86,$96,$86,$19,$A9
       .byte $18,$85,$17,$A5,$8C,$D0,$08,$A5,$8D,$C9,$C0,$90,$25,$85,$8C,$86
       .byte $8D,$60,$A9,$BA,$85,$8D,$A2,$01,$A9,$9E,$24,$89,$10,$02,$A9,$9C
       .byte $65,$82,$20,$04,$F6,$A2,$03,$86,$8F,$C6,$94,$30,$26,$A6,$B5,$4C
       .byte $36,$F5,$A9,$C1,$E5,$8D,$85,$9B,$20,$EF,$F5,$A5,$D2,$38,$24,$89
       .byte $30,$02,$E9,$04,$E5,$82,$E9,$9B,$30,$06,$A8,$06,$83,$88,$10,$FB
       .byte $E8,$86,$8F,$60,$85,$2C,$A5,$CB,$20,$AB,$F6,$65,$C4,$A4,$E8,$79
       .byte $F9,$F7,$85,$D2,$C9,$D0,$90,$02,$85,$8B,$E8,$38,$E9,$2F,$A0,$02
       .byte $C8,$E9,$0F,$B0,$FB,$49,$FF,$E9,$06,$20,$1E,$F6,$84,$02,$88,$10
       .byte $FD,$95,$10,$95,$20,$0A,$69,$00,$0A,$69,$00,$0A,$69,$00,$0A,$69
       .byte $00,$60,$84,$9C,$66,$B4,$A9,$0F,$85,$19,$85,$96,$4A,$85,$15,$A9
       .byte $1B,$85,$17,$A5,$99,$A2,$B0,$20,$AD,$F6,$86,$92,$85,$81,$A9,$CA
       .byte $85,$95,$A5,$C2,$20,$60,$F6,$A2,$0D,$20,$B7,$F6,$A9,$10,$20,$7A
       .byte $F6,$85,$CA,$A9,$5B,$E5,$C2,$4A,$AA,$BD,$47,$F7,$90,$06,$E8,$18
       .byte $7D,$47,$F7,$4A,$A6,$81,$20,$B7,$F6,$A9,$64,$20,$7A,$F6,$85,$CB
       .byte $60,$85,$CF,$A2,$08,$06,$CD,$26,$CC,$38,$A5,$CC,$E5,$CF,$85,$CC
       .byte $10,$08,$18,$65,$CF,$85,$CC,$4C,$98,$F6,$46,$CD,$38,$26,$CD,$CA
       .byte $D0,$E3,$F0,$41,$F8,$AA,$A9,$00,$CA,$30,$05,$69,$01,$CA,$10,$FB
       .byte $D8,$60,$A6,$92,$20,$B7,$F6,$A9,$3C,$4C,$7A,$F6,$A2,$05,$85,$D0
       .byte $A9,$00,$85,$CC,$85,$CD,$86,$CF,$A2,$08,$06,$CF,$90,$0D,$A5,$CD
       .byte $18,$65,$D0,$85,$CD,$A9,$00,$65,$CC,$85,$CC,$CA,$F0,$07,$06,$CD
       .byte $26,$CC,$4C,$C3,$F6,$A5,$CD,$18,$60,$31,$21,$00,$10,$00,$00,$01
       .byte $00,$00,$00,$FF,$00,$00,$00,$00,$F6,$0A,$00,$00,$FF,$01,$00,$D6
       .byte $94,$86,$28,$02,$04,$0A,$06,$04,$05,$00,$FC,$00,$FB,$00,$FF,$01
       .byte $00,$32,$10,$00,$00,$F0,$00,$00,$00,$1F,$0E,$06,$00,$00,$00,$00
       .byte $00,$7F,$7F,$FF,$FF,$FF,$FF,$FF,$3E,$00,$00,$7E,$7E,$7C,$FC,$F8
       .byte $F0,$E0,$80,$7F,$FE,$FE,$FE,$FF,$7F,$FF,$3C,$02,$07,$7C,$7E,$3E
       .byte $3E,$1E,$1F,$0F,$0F,$7C,$FC,$FC,$7C,$7E,$3F,$3F,$3C,$72,$52,$42
       .byte $4E,$52,$48,$11,$15,$18,$1C,$1F,$22,$25,$29,$2C,$2F,$32,$35,$38
       .byte $3B,$3E,$40,$43,$45,$48,$4A,$4D,$4F,$51,$53,$55,$57,$58,$5A,$5B
       .byte $5D,$5E,$5F,$60,$61,$62,$62,$2D,$2A,$27,$27,$27,$2A,$2D,$28,$28
       .byte $1C,$18,$19,$1E,$29,$45,$45,$55,$6D,$45,$28,$A8,$3B,$AA,$2B,$3C
       .byte $84,$08,$90,$20,$1C,$24,$0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22
       .byte $EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE
       .byte $88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA
       .byte $EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$00,$08,$14,$14,$08,$1E,$30,$50
       .byte $10,$20,$00,$42,$24,$1E,$1E,$64,$02,$00,$00,$00,$00,$20,$10,$52
       .byte $34,$18,$08,$34,$04,$00,$2A,$2A,$1C,$08,$08,$08,$00,$00,$00,$00
       .byte $EA,$AA,$EE,$00,$35,$27,$35,$00,$02,$7E,$07,$0A,$01,$C1,$BB,$B7
       .byte $53,$51,$4D,$00,$F0,$00,$00
