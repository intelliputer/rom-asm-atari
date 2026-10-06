; Disassembly of roms/Adventure.bin
; Disassembled Tue Oct  6 15:19:35 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Adventure.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
RSYNC   =  $03
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
AUDF0   =  $17
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXP0FB  =  $32
CXP1FB  =  $33
CXM0FB  =  $34
CXM1FB  =  $35
CXBLPF  =  $36
CXPPMM  =  $37
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       JMP    LF2EF   
LF003: .byte $78,$D8,$4C,$06,$F3
LF008: STA    HMCLR   
       LDA    $86     
       LDX    #$00    
       JSR    LF0D2   
       LDA    $88     
       LDX    #$01    
       JSR    LF0D2   
       LDA    $8B     
       LDX    #$04    
       JSR    LF0D2   
       STA    WSYNC   
       STA    HMOVE   
       STA    CXCLR   
       LDA    $8C     
       SEC            
       SBC    #$04    
       STA    $8D     
LF02C: LDA    INTIM   
       BNE    LF02C   
       LDA    #$00    
       STA    $90     
       STA    $91     
       STA    $8F     
       STA    GRP1    
       LDA    #$01    
       STA    VDELP1  
       LDA    #$68    
       STA    $8E     
       LDY    $8F     
       LDA    ($80),Y 
       STA    PF0     
       INY            
       LDA    ($80),Y 
       STA    PF1     
       INY            
       LDA    ($80),Y 
       STA    PF2     
       INY            
       STY    $8F     
       STA    WSYNC   
       LDA    #$00    
       STA    VBLANK  
       JMP    LF072   
LF05F: LDA    $8E     
       SEC            
       SBC    $89     
       STA    WSYNC   
       BPL    LF072   
       LDY    $91     
       LDA    ($84),Y 
       STA    GRP1    
       BEQ    LF072   
       INC    $91     
LF072: LDX    #$00    
       LDA    $8E     
       SEC            
       SBC    $87     
       BPL    LF084   
       LDY    $90     
       LDA    ($82),Y 
       TAX            
       BEQ    LF084   
       INC    $90     
LF084: LDY    #$00    
       LDA    $8E     
       SEC            
       SBC    $8D     
       AND    #$FC    
       BNE    LF091   
       LDY    #$02    
LF091: LDA    $8E     
       AND    #$0F    
       BNE    LF0BD   
       STA    WSYNC   
       STY    ENABL   
       STX    GRP0    
       LDY    $8F     
       LDA    ($80),Y 
       STA    PF0     
       INY            
       LDA    ($80),Y 
       STA    PF1     
       INY            
       LDA    ($80),Y 
       STA    PF2     
       INY            
       STY    $8F     
LF0B0: DEC    $8E     
       LDA    $8E     
       CMP    #$08    
       BPL    LF05F   
       STA    VBLANK  
       JMP    LF0C6   
LF0BD: STA    WSYNC   
       STY    ENABL   
       STX    GRP0    
       JMP    LF0B0   
LF0C6: LDA    #$00    
       STA    GRP1    
       STA    GRP0    
       LDA    #$20    
       STA    TIM64T  
       RTS            

LF0D2: LDY    #$02    
       SEC            
LF0D5: INY            
       SBC    #$0F    
       BCS    LF0D5   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STY    WSYNC   
LF0E4: DEY            
       BPL    LF0E4   
       STA    RESP0,X 
       STA    HMP0,X  
       RTS            

LF0EC: LDA    INTIM   
       BNE    LF0EC   
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
       LDA    #$2A    
       STA    TIM64T  
       RTS            

LF10F: LDA    $8A     
       JSR    LF271   
       LDY    #$00    
       LDA    ($93),Y 
       STA    $80     
       LDY    #$01    
       LDA    ($93),Y 
       STA    $81     
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF133   
       LDY    #$02    
       LDA    ($93),Y 
       JSR    LF2D3   
       STA    COLUPF  
       JMP    LF13C   
LF133: LDY    #$03    
       LDA    ($93),Y 
       JSR    LF2D3   
       STA    COLUPF  
LF13C: LDA    #$08    
       JSR    LF2D3   
       STA    COLUBK  
       LDY    #$04    
       LDA    ($93),Y 
       STA    CTRLPF  
       AND    #$C0    
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    ENAM1   
       LSR            
       STA    ENAM0   
       JSR    LF235   
       LDA    $95     
       CMP    #$00    
       BEQ    LF168   
       CMP    #$5A    
       BNE    LF174   
       LDA    $96     
       CMP    #$00    
       BEQ    LF174   
LF168: LDA    $95     
       STA    $D8     
       LDA    $96     
       STA    $95     
       LDA    $D8     
       STA    $96     
LF174: LDX    $95     
       LDA    LFF44,X 
       STA    $93     
       LDA    LFF45,X 
       STA    $94     
       LDY    #$01    
       LDA    ($93),Y 
       STA    $86     
       LDY    #$02    
       LDA    ($93),Y 
       STA    $87     
       LDA    LFF46,X 
       STA    $93     
       LDA    LFF47,X 
       STA    $94     
       LDY    #$00    
       LDA    ($93),Y 
       STA    $DC     
       LDA    LFF48,X 
       STA    $93     
       LDA    LFF49,X 
       STA    $94     
       JSR    LF2A1   
       INY            
       LDA    ($93),Y 
       STA    $82     
       INY            
       LDA    ($93),Y 
       STA    $83     
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF1C5   
       LDA    LFF4A,X 
       JSR    LF2D3   
       STA    COLUP0  
       JMP    LF1CD   
LF1C5: LDA    LFF4B,X 
       JSR    LF2D3   
       STA    COLUP0  
LF1CD: LDA    LFF4C,X 
       ORA    #$10    
       STA    NUSIZ0  
       LDX    $96     
       LDA    LFF44,X 
       STA    $93     
       LDA    LFF45,X 
       STA    $94     
       LDY    #$01    
       LDA    ($93),Y 
       STA    $88     
       LDY    #$02    
       LDA    ($93),Y 
       STA    $89     
       LDA    LFF46,X 
       STA    $93     
       LDA    LFF47,X 
       STA    $94     
       LDY    #$00    
       LDA    ($93),Y 
       STA    $DC     
       LDA    LFF48,X 
       STA    $93     
       LDA    LFF49,X 
       STA    $94     
       JSR    LF2A1   
       INY            
       LDA    ($93),Y 
       STA    $84     
       INY            
       LDA    ($93),Y 
       STA    $85     
       LDA    SWCHB   
       AND    #$08    
       BEQ    LF225   
       LDA    LFF4A,X 
       JSR    LF2D3   
       STA    COLUP1  
       JMP    LF22D   
LF225: LDA    LFF4B,X 
       JSR    LF2D3   
       STA    COLUP1  
LF22D: LDA    LFF4C,X 
       ORA    #$10    
       STA    NUSIZ1  
       RTS            

LF235: LDY    $9C     
       LDA    #$A2    
       STA    $95     
       STA    $96     
LF23D: TYA            
       CLC            
       ADC    #$09    
       CMP    #$A2    
       BCC    LF247   
       LDA    #$00    
LF247: TAY            
       LDA    LFF44,Y 
       STA    $93     
       LDA    LFF45,Y 
       STA    $94     
       LDX    #$00    
       LDA    ($93,X) 
       CMP    $8A     
       BNE    LF26A   
       LDA    $95     
       CMP    #$A2    
       BNE    LF265   
       STY    $95     
       JMP    LF26A   
LF265: STY    $96     
       JMP    LF26E   
LF26A: CPY    $9C     
       BNE    LF23D   
LF26E: STY    $9C     
       RTS            

LF271: STA    $D8     
       STA    $93     
       LDA    #$00    
       STA    $94     
       CLC            
       ROL    $93     
       ROL    $94     
       ROL    $93     
       ROL    $94     
       ROL    $93     
       ROL    $94     
       LDA    $D8     
       CLC            
       ADC    $93     
       STA    $93     
       LDA    #$00    
       ADC    $94     
       STA    $94     
       LDA    #$1B    
       CLC            
       ADC    $93     
       STA    $93     
       LDA    #$FE    
       ADC    $94     
       STA    $94     
       RTS            

LF2A1: LDY    #$00    
       LDA    $DC     
LF2A5: CMP    ($93),Y 
       BCC    LF2B1   
       BEQ    LF2B1   
       INY            
       INY            
       INY            
       JMP    LF2A5   
LF2B1: RTS            

LF2B2: INC    $E5     
       BNE    LF2BE   
       INC    $E6     
       BNE    LF2BE   
       LDA    #$80    
       STA    $E6     
LF2BE: LDA    SWCHA   
       CMP    #$FF    
       BNE    LF2CE   
       LDA    SWCHB   
       AND    #$03    
       CMP    #$03    
       BEQ    LF2D2   
LF2CE: LDA    #$00    
       STA    $E6     
LF2D2: RTS            

LF2D3: LSR            
       BCC    LF2DA   
       TAY            
       LDA.wy $0080,Y 
LF2DA: LDY    $E6     
       BPL    LF2E2   
       EOR    $E6     
       AND    #$FB    
LF2E2: ASL            
       RTS            

LF2E4: LDA    LFF44,X 
       STA    $93     
       LDA    LFF45,X 
       STA    $94     
       RTS            

LF2EF: SEI            
       CLD            
       LDX    #$28    
       LDA    #$00    
LF2F5: STA    NUSIZ0,X
       DEX            
       BPL    LF2F5   
       TXS            
LF2FB: STA    VSYNC,X 
       DEX            
       BMI    LF2FB   
       JSR    LF371   
       JSR    LF3D3   
LF306: JSR    LF384   
       JSR    LFA23   
       JSR    LF2B2   
       LDA    $DE     
       BNE    LF365   
       LDA    $B9     
       CMP    #$12    
       BNE    LF323   
       LDA    #$FF    
       STA    $DF     
       STA    $DE     
       LDA    #$00    
       STA    $E0     
LF323: LDY    #$00    
       JSR    LF4C2   
       JSR    LF5D4   
       JSR    LF0EC   
       JSR    LF10F   
       JSR    LF008   
       JSR    LF556   
       LDY    #$01    
       JSR    LF4C2   
       JSR    LF9E7   
       JSR    LF0EC   
       JSR    LF8A5   
       JSR    LF93C   
       JSR    LF008   
       JSR    LF7CB   
       JSR    LF7B0   
       JSR    LF0EC   
       LDY    #$02    
       JSR    LF4C2   
       JSR    LF795   
       JSR    LF9B3   
       JSR    LF008   
       JMP    LF306   
LF365: JSR    LF0EC   
       JSR    LF008   
       JSR    LF10F   
       JMP    LF306   
LF371: LDA    #$0D    
       LDX    #$02    
       JSR    LF0D2   
       LDA    #$96    
       LDX    #$03    
       JSR    LF0D2   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF384: LDA    SWCHB   
       EOR    #$FF    
       AND    $92     
       AND    #$01    
       BEQ    LF3B5   
       LDA    $DE     
       CMP    #$FF    
       BEQ    LF3D3   
       LDA    #$11    
       STA    $8A     
       STA    $E2     
       LDA    #$50    
       STA    $8B     
       STA    $E3     
       LDA    #$20    
       STA    $8C     
       STA    $E4     
       LDA    #$00    
       STA    $A8     
       STA    $AD     
       STA    $B2     
       STA    $DF     
       LDA    #$A2    
       STA    $9D     
LF3B5: LDA    SWCHB   
       EOR    #$FF    
       AND    $92     
       AND    #$02    
       BEQ    LF40C   
       LDA    $8A     
       CMP    #$00    
       BNE    LF3D3   
       LDA    $DD     
       CLC            
       ADC    #$02    
       CMP    #$06    
       BCC    LF3D1   
       LDA    #$00    
LF3D1: STA    $DD     
LF3D3: LDA    #$00    
       STA    $8A     
       STA    $E2     
       LDA    #$00    
       STA    $8C     
       STA    $E4     
       LDY    $DD     
       LDA    LF45A,Y 
       STA    $93     
       LDA    LF45B,Y 
       STA    $94     
       LDY    #$30    
LF3ED: LDA    ($93),Y 
       STA.wy $00A1,Y 
       DEY            
       BPL    LF3ED   
       LDA    $DD     
       CMP    #$04    
       BCC    LF404   
       JSR    LF412   
       JSR    LF0EC   
       JSR    LF008   
LF404: LDA    #$00    
       STA    $DE     
       LDA    #$A2    
       STA    $9D     
LF40C: LDA    SWCHB   
       STA    $92     
       RTS            

LF412: LDY    #$1E    
LF414: LDA    $E5     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       SEC            
       ADC    $E5     
       STA    $E5     
       AND    #$1F    
       CMP    LF43A,Y 
       BCC    LF414   
       CMP    LF43B,Y 
       BEQ    LF42E   
       BCS    LF414   
LF42E: LDX    LF439,Y 
       STA    VSYNC,X 
       DEY            
       DEY            
       DEY            
       BPL    LF414   
       RTS            

LF439: .byte $B9
LF43A: .byte $13
LF43B: .byte $1A,$A4,$01,$1D,$A9,$01,$1D,$AE,$01,$1D,$B6,$01,$1D,$BC,$01,$1D
       .byte $BF,$01,$1D,$C2,$01,$16,$C5,$01,$12,$CB,$01,$1D,$B3,$01,$1D
LF45A: .byte $60
LF45B: .byte $F4,$91,$F4,$91,$F4,$15,$51,$12,$0E,$50,$20,$00,$00,$01,$50,$20
       .byte $00,$00,$1D,$50,$20,$00,$00,$1B,$80,$20,$12,$20,$20,$1C,$30,$20
       .byte $04,$29,$37,$11,$20,$40,$0E,$20,$40,$1D,$20,$40,$1C,$1C,$1C,$1A
       .byte $20,$20,$00,$00,$78,$00,$15,$51,$12,$14,$50,$20,$A0,$00,$19,$50
       .byte $20,$A0,$00,$04,$50,$20,$A0,$00,$0E,$80,$20,$11,$20,$20,$14,$30
       .byte $20,$0B,$40,$40,$09,$20,$40,$06,$20,$40,$19,$20,$40,$1C,$1C,$1C
       .byte $02,$20,$20,$90,$00,$78,$00
LF4C2: LDA    CXBLPF  
       AND    #$80    
       BNE    LF4F5   
       LDA    CXM0FB  
       AND    #$40    
       BNE    LF4F5   
       LDA    CXM1FB  
       AND    #$40    
       BEQ    LF4DA   
       LDA    $96     
       CMP    #$87    
       BNE    LF4F5   
LF4DA: LDA    CXP0FB  
       AND    #$40    
       BEQ    LF4E6   
       LDA    $95     
       CMP    #$00    
       BNE    LF4F5   
LF4E6: LDA    CXP1FB  
       AND    #$40    
       BEQ    LF51F   
       LDA    $96     
       CMP    #$00    
       BNE    LF4F5   
       JMP    LF51F   
LF4F5: CPY    #$02    
       BNE    LF52F   
       LDA    $9D     
       CMP    #$5A    
       BEQ    LF52F   
       LDA    $8A     
       CMP    $BC     
       BNE    LF52F   
       LDA    $8B     
       SEC            
       SBC    $BD     
       CMP    #$0A    
       BCC    LF52F   
       CMP    #$17    
       BCS    LF52F   
       LDA    $BE     
       SEC            
       SBC    $8C     
       CMP    #$FC    
       BCS    LF51F   
       CMP    #$19    
       BCS    LF52F   
LF51F: LDA    #$FF    
       STA    $99     
       LDA    $8A     
       STA    $E2     
       LDA    $8B     
       STA    $E3     
       LDA    $8C     
       STA    $E4     
LF52F: CPY    #$00    
       BNE    LF538   
       LDA    SWCHA   
       STA    $99     
LF538: LDA    $E2     
       STA    $8A     
       LDA    $E3     
       STA    $8B     
       LDA    $E4     
       STA    $8C     
       LDA    $99     
       ORA    LF553,Y 
       STA    $9B     
       LDY    #$03    
       LDX    #$8A    
       JSR    LF5FF   
       RTS            

LF553: .byte $00,$C0,$30
LF556: ROL    INPT4   
       ROR    $D7     
       LDA    $D7     
       AND    #$C0    
       CMP    #$40    
       BNE    LF572   
       LDA    #$A2    
       CMP    $9D     
       BEQ    LF572   
       STA    $9D     
       LDA    #$04    
       STA    $E0     
       LDA    #$04    
       STA    $DF     
LF572: LDA    #$FF    
       STA    $98     
       LDA    CXP0FB  
       AND    #$40    
       BEQ    LF583   
       LDA    $95     
       STA    $97     
       JMP    LF593   
LF583: LDA    CXP1FB  
       AND    #$40    
       BEQ    LF590   
       LDA    $96     
       STA    $97     
       JMP    LF593   
LF590: JMP    LF5D3   
LF593: LDX    $97     
       JSR    LF2E4   
       LDA    $97     
       CMP    #$51    
       BCC    LF5D3   
       LDY    #$00    
       LDA    ($93),Y 
       CMP    $8A     
       BNE    LF5D3   
       LDA    $97     
       CMP    $9D     
       BEQ    LF5B4   
       LDA    #$05    
       STA    $E0     
       LDA    #$04    
       STA    $DF     
LF5B4: LDA    $97     
       STA    $9D     
       LDX    $93     
       LDY    #$06    
       LDA    $99     
       JSR    LF6AC   
       LDY    #$01    
       LDA    ($93),Y 
       SEC            
       SBC    $8B     
       STA    $9E     
       LDY    #$02    
       LDA    ($93),Y 
       SEC            
       SBC    $8C     
       STA    $9F     
LF5D3: RTS            

LF5D4: LDX    $9D     
       CPX    #$A2    
       BEQ    LF5FE   
       JSR    LF2E4   
       LDY    #$00    
       LDA    $8A     
       STA    ($93),Y 
       LDY    #$01    
       LDA    $8B     
       CLC            
       ADC    $9E     
       STA    ($93),Y 
       LDY    #$02    
       LDA    $8C     
       CLC            
       ADC    $9F     
       STA    ($93),Y 
       LDY    #$00    
       LDA    #$FF    
       LDX    $93     
       JSR    LF5FF   
LF5FE: RTS            

LF5FF: JSR    LF6AC   
       LDY    #$02    
LF604: STY    $9A     
       LDA.wy $00C8,Y 
       CMP    #$1C    
       BEQ    LF62F   
       LDY    $9A     
       LDA    VSYNC,X 
       CMP    LF9AD,Y 
       BNE    LF62F   
       LDA    WSYNC,X 
       CMP    #$0D    
       BPL    LF62F   
       LDA    LF9B0,Y 
       STA    VSYNC,X 
       LDA    #$50    
       STA    VBLANK,X
       LDA    #$2C    
       STA    WSYNC,X 
       LDA    #$01    
       STA.wy $00C8,Y 
       RTS            

LF62F: LDY    $9A     
       DEY            
       BPL    LF604   
       LDA    WSYNC,X 
       CMP    #$6A    
       BMI    LF643   
       LDA    #$0D    
       STA    WSYNC,X 
       LDY    #$05    
       JMP    LF69F   
LF643: LDA    VBLANK,X
       CMP    #$03    
       BCC    LF650   
       CMP    #$F0    
       BCS    LF650   
       JMP    LF662   
LF650: CPX    #$8A    
       BEQ    LF659   
       LDA    #$9A    
       JMP    LF65B   
LF659: LDA    #$9E    
LF65B: STA    VBLANK,X
       LDY    #$08    
       JMP    LF69F   
LF662: LDA    WSYNC,X 
       CMP    #$0D    
       BCS    LF671   
       LDA    #$69    
       STA    WSYNC,X 
       LDY    #$07    
       JMP    LF69F   
LF671: LDA    VBLANK,X
       CPX    #$8A    
       BNE    LF692   
       CMP    #$9F    
       BCC    LF6AB   
       LDA    VSYNC,X 
       CMP    #$03    
       BNE    LF696   
       LDA    $A1     
       CMP    #$15    
       BEQ    LF696   
       LDA    #$1E    
       STA    VSYNC,X 
       LDA    #$03    
       STA    VBLANK,X
       JMP    LF6AB   
LF692: CMP    #$9B    
       BCC    LF6AB   
LF696: LDA    #$03    
       STA    VBLANK,X
       LDY    #$06    
       JMP    LF69F   
LF69F: LDA    VSYNC,X 
       JSR    LF271   
       LDA    ($93),Y 
       JSR    LF6D5   
       STA    VSYNC,X 
LF6AB: RTS            

LF6AC: STA    $9B     
LF6AE: DEY            
       BMI    LF6D4   
       LDA    $9B     
       AND    #$80    
       BNE    LF6B9   
       INC    VBLANK,X
LF6B9: LDA    $9B     
       AND    #$40    
       BNE    LF6C1   
       DEC    VBLANK,X
LF6C1: LDA    $9B     
       AND    #$10    
       BNE    LF6C9   
       INC    WSYNC,X 
LF6C9: LDA    $9B     
       AND    #$20    
       BNE    LF6D1   
       DEC    WSYNC,X 
LF6D1: JMP    LF6AE   
LF6D4: RTS            

LF6D5: CMP    #$80    
       BCC    LF6E8   
       SEC            
       SBC    #$80    
       STA    $D8     
       LDA    $DD     
       LSR            
       CLC            
       ADC    $D8     
       TAY            
       LDA    LFF32,Y 
LF6E8: RTS            

LF6E9: CMP    $95     
       BEQ    LF6F4   
       CMP    $96     
       BEQ    LF6F9   
       LDA    #$00    
       RTS            

LF6F4: LDA    CXP0FB  
       AND    #$40    
       RTS            

LF6F9: LDA    CXP1FB  
       AND    #$40    
       RTS            

LF6FE: LDA    CXPPMM  
       AND    #$80    
       BEQ    LF70C   
       CPX    $95     
       BEQ    LF70F   
       CPX    $96     
       BEQ    LF712   
LF70C: LDA    #$A2    
       RTS            

LF70F: LDA    $96     
       RTS            

LF712: LDA    $95     
       RTS            

LF715: JSR    LF728   
       LDX    $D5     
       LDA    $9B     
       BNE    LF720   
       LDA    RSYNC,X 
LF720: STA    RSYNC,X 
       LDY    $D4     
       JSR    LF5FF   
       RTS            

LF728: LDA    #$00    
       STA    $E1     
LF72C: LDY    $E1     
       LDA    ($D2),Y 
       TAX            
       INY            
       LDA    ($D2),Y 
       TAY            
       LDA    VSYNC,X 
       CMP.wy $0000,Y 
       BNE    LF748   
       CPY    $D6     
       BEQ    LF748   
       CPX    $D6     
       BEQ    LF748   
       JSR    LF757   
       RTS            

LF748: INC    $E1     
       INC    $E1     
       LDY    $E1     
       LDA    ($D2),Y 
       BNE    LF72C   
       LDA    #$00    
       STA    $9B     
       RTS            

LF757: LDA    #$FF    
       STA    $9B     
       LDA.wy $0000,Y 
       CMP    VSYNC,X 
       BNE    LF792   
       LDA.wy $0001,Y 
       CMP    VBLANK,X
       BCC    LF774   
       BEQ    LF77A   
       LDA    $9B     
       AND    #$7F    
       STA    $9B     
       JMP    LF77A   
LF774: LDA    $9B     
       AND    #$BF    
       STA    $9B     
LF77A: LDA.wy $0002,Y 
       CMP    WSYNC,X 
       BCC    LF78C   
       BEQ    LF792   
       LDA    $9B     
       AND    #$EF    
       STA    $9B     
       JMP    LF792   
LF78C: LDA    $9B     
       AND    #$DF    
       STA    $9B     
LF792: LDA    $9B     
       RTS            

LF795: LDA    #$A7    
       STA    $D2     
       LDA    #$F7    
       STA    $D3     
       LDA    #$03    
       STA    $D4     
       LDX    #$36    
       JSR    LF7EA   
       RTS            

LF7A7: .byte $B6,$A4,$A4,$8A,$A4,$B9,$A4,$C2,$00
LF7B0: LDA    #$C2    
       STA    $D2     
       LDA    #$F7    
       STA    $D3     
       LDA    #$02    
       STA    $D4     
       LDX    #$3F    
       JSR    LF7EA   
       RTS            

LF7C2: .byte $B6,$A9,$BF,$A9,$A9,$8A,$A9,$B9,$00
LF7CB: LDA    #$DD    
       STA    $D2     
       LDA    #$F7    
       STA    $D3     
       LDA    #$02    
       STA    $D4     
       LDX    #$48    
       JSR    LF7EA   
       RTS            

LF7DD: .byte $B6,$AE,$AE,$8A,$AE,$B9,$AE,$BC,$AE,$B3,$AE,$C5,$00
LF7EA: STX    $A0     
       LDA    LFF44,X 
       TAX            
       LDA    NUSIZ0,X
       CMP    #$00    
       BNE    LF84E   
       LDA    SWCHB   
       AND    #$80    
       BEQ    LF802   
       LDA    #$00    
       JMP    LF804   
LF802: LDA    #$B6    
LF804: STA    $D6     
       STX    $D5     
       JSR    LF715   
       LDA    $A0     
       JSR    LF6E9   
       BEQ    LF832   
       LDA    SWCHB   
       ROL            
       ROL            
       ROL            
       AND    #$01    
       ORA    $DD     
       TAY            
       LDA    LF89F,Y 
       STA    NUSIZ0,X
       LDA    $E3     
       STA    VBLANK,X
       LDA    $E4     
       STA    WSYNC,X 
       LDA    #$01    
       STA    $E0     
       LDA    #$10    
       STA    $DF     
LF832: STX    $9A     
       LDX    $A0     
       JSR    LF6FE   
       LDX    $9A     
       CMP    #$51    
       BNE    LF84B   
       LDA    #$01    
       STA    NUSIZ0,X
       LDA    #$03    
       STA    $E0     
       LDA    #$10    
       STA    $DF     
LF84B: JMP    LF89E   
LF84E: CMP    #$01    
       BEQ    LF89E   
       CMP    #$02    
       BNE    LF871   
       LDA    VSYNC,X 
       STA    $8A     
       STA    $E2     
       LDA    VBLANK,X
       CLC            
       ADC    #$03    
       STA    $8B     
       STA    $E3     
       LDA    WSYNC,X 
       SEC            
       SBC    #$0A    
       STA    $8C     
       STA    $E4     
       JMP    LF89E   
LF871: INC    NUSIZ0,X
       LDA    NUSIZ0,X
       CMP    #$FC    
       BCC    LF89E   
       LDA    $A0     
       JSR    LF6E9   
       BEQ    LF89E   
       LDA    #$02    
       STA    NUSIZ0,X
       LDA    #$02    
       STA    $E0     
       LDA    #$10    
       STA    $DF     
       LDA    #$9B    
       CMP    VBLANK,X
       BEQ    LF896   
       BCS    LF896   
       STA    VBLANK,X
LF896: LDA    #$17    
       CMP    WSYNC,X 
       BCC    LF89E   
       STA    WSYNC,X 
LF89E: RTS            

LF89F: .byte $D0,$E8,$F0,$F6,$F0,$F6
LF8A5: INC    $CF     
       LDA    $CF     
       CMP    #$08    
       BNE    LF8B1   
       LDA    #$00    
       STA    $CF     
LF8B1: LDA    $D1     
       BEQ    LF8C3   
       INC    $D1     
       LDA    $CE     
       LDX    #$CB    
       LDY    #$03    
       JSR    LF5FF   
       JMP    LF908   
LF8C3: LDA    #$CB    
       STA    $D5     
       LDA    #$03    
       STA    $D4     
       LDA    #$27    
       STA    $D2     
       LDA    #$F9    
       STA    $D3     
       LDA    $D0     
       STA    $D6     
       JSR    LF715   
       LDY    $E1     
       LDA    ($D2),Y 
       BEQ    LF908   
       INY            
       LDA    ($D2),Y 
       TAX            
       LDA    VSYNC,X 
       CMP    $CB     
       BNE    LF908   
       LDA    VBLANK,X
       SEC            
       SBC    $CC     
       CLC            
       ADC    #$04    
       AND    #$F8    
       BNE    LF908   
       LDA    WSYNC,X 
       SEC            
       SBC    $CD     
       CLC            
       ADC    #$04    
       AND    #$F8    
       BNE    LF908   
       STX    $D0     
       LDA    #$10    
       STA    $D1     
LF908: LDX    $D0     
       LDA    $CB     
       STA    VSYNC,X 
       LDA    $CC     
       CLC            
       ADC    #$08    
       STA    VBLANK,X
       LDA    $CD     
       STA    WSYNC,X 
       LDA    $D0     
       LDY    $9D     
       CMP    LFF44,Y 
       BNE    LF926   
       LDA    #$A2    
       STA    $9D     
LF926: RTS            

LF927: .byte $CB,$B9,$CB,$B6,$CB,$BC,$CB,$BF,$CB,$C2,$CB,$C5,$CB,$A4,$CB,$A9
       .byte $CB,$AE,$CB,$B3,$00
LF93C: LDY    #$02    
LF93E: LDX    LF9A7,Y 
       JSR    LF6FE   
       STA    $97     
       CMP    LF9AA,Y 
       BNE    LF94F   
       TYA            
       TAX            
       INC    $C8,X   
LF94F: TYA            
       TAX            
       LDA    $C8,X   
       CMP    #$1C    
       BEQ    LF988   
       LDA    LF9A7,Y 
       JSR    LF6E9   
       BEQ    LF968   
       LDA    #$01    
       STA    $C8,X   
       LDX    #$8A    
       JMP    LF97F   
LF968: LDA    $97     
       CMP    #$A2    
       BEQ    LF97C   
       LDX    $97     
       STY    $9A     
       JSR    LF2E4   
       LDY    $9A     
       LDX    $93     
       JMP    LF97F   
LF97C: JMP    LF988   
LF97F: LDA    LF9AD,Y 
       STA    VSYNC,X 
       LDA    #$10    
       STA    WSYNC,X 
LF988: TYA            
       TAX            
       LDA    $C8,X   
       CMP    #$01    
       BEQ    LF9A0   
       CMP    #$1C    
       BEQ    LF9A0   
       INC    $C8,X   
       LDA    $C8,X   
       CMP    #$38    
       BNE    LF9A0   
       LDA    #$01    
       STA    $C8,X   
LF9A0: DEY            
       BMI    LF9A6   
       JMP    LF93E   
LF9A6: RTS            

LF9A7: .byte $09,$12,$1B
LF9AA: .byte $63,$6C,$75
LF9AD: .byte $12,$1A,$1B
LF9B0: .byte $11,$0F,$10
LF9B3: LDA    $B5     
       SEC            
       SBC    #$08    
       STA    $B5     
       LDA    #$00    
       STA    $D6     
       LDA    #$DA    
       STA    $D2     
       LDA    #$F9    
       STA    $D3     
       JSR    LF728   
       LDA    $9B     
       BEQ    LF9D2   
       LDY    #$01    
       JSR    LF5FF   
LF9D2: LDA    $B5     
       CLC            
       ADC    #$08    
       STA    $B5     
       RTS            

LF9DA: .byte $BF,$B3,$C2,$B3,$C5,$B3,$B6,$B3,$BC,$B3,$B9,$B3,$00
LF9E7: LDA    $8A     
       JSR    LF271   
       LDY    #$02    
       LDA    ($93),Y 
       CMP    #$08    
       BEQ    LF9FB   
       LDA    #$00    
       STA    $DB     
       JMP    LFA22   
LF9FB: LDA    $8A     
       STA    $D9     
       LDA    $8B     
       SEC            
       SBC    #$0E    
       STA    $DA     
       LDA    $8C     
       CLC            
       ADC    #$0E    
       STA    $DB     
       LDA    $DA     
       CMP    #$F0    
       BCC    LFA1A   
       LDA    #$01    
       STA    $DA     
       JMP    LFA22   
LFA1A: CMP    #$82    
       BCC    LFA22   
       LDA    #$81    
       STA    $DA     
LFA22: RTS            

LFA23: LDA    $DF     
       BNE    LFA2C   
       STA    AUDV0   
       STA    AUDV1   
       RTS            

LFA2C: DEC    $DF     
       LDA    $E0     
       BEQ    LFA47   
       CMP    #$01    
       BEQ    LFA55   
       CMP    #$02    
       BEQ    LFA6C   
       CMP    #$03    
       BEQ    LFA7F   
       CMP    #$04    
       BEQ    LFA8C   
       CMP    #$05    
       BEQ    LFA9B   
       RTS            

LFA47: LDA    $DF     
       STA    COLUPF  
       STA    AUDC0   
       LSR            
       STA    AUDV0   
       LSR            
       LSR            
       STA    AUDF0   
       RTS            

LFA55: LDA    $DF     
       LSR            
       LDA    #$03    
       BCS    LFA5E   
       LDA    #$08    
LFA5E: STA    AUDC0   
       LDA    $DF     
       STA    AUDV0   
       LSR            
       LSR            
       CLC            
       ADC    #$1C    
       STA    AUDF0   
       RTS            

LFA6C: LDA    #$06    
       STA    AUDC0   
       LDA    $DF     
       EOR    #$0F    
       STA    AUDF0   
       LDA    $DF     
       LSR            
       CLC            
       ADC    #$08    
       STA    AUDV0   
       RTS            

LFA7F: LDA    #$04    
       STA    AUDC0   
       LDA    $DF     
       STA    AUDV0   
       EOR    #$1F    
       STA    AUDF0   
       RTS            

LFA8C: LDA    $DF     
       EOR    #$03    
LFA90: STA    AUDF0   
       LDA    #$05    
       STA    AUDV0   
       LDA    #$06    
       STA    AUDC0   
       RTS            

LFA9B: LDA    $DF     
       JMP    LFA90   
LFAA0: .byte $F0,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$F0,$FF,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$F0,$FF,$FF,$F0,$FF,$0F,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$FF,$0F,$F0,$FF,$FF,$30
       .byte $00,$00,$30,$00,$00,$30,$00,$00,$30,$00,$00,$30,$00,$00,$F0,$FF
       .byte $0F,$04,$24,$FB,$08,$22,$FB,$0C,$20,$FB,$10,$1E,$FB,$14,$1C,$FB
       .byte $18,$1A,$FB,$1C,$18,$FB,$20,$1A,$FB,$24,$1C,$FB,$28,$1E,$FB,$2C
       .byte $20,$FB,$30,$22,$FB,$FF,$24,$FB,$FE,$AA,$FE,$AA,$FE,$AA,$FE,$AA
       .byte $FE,$AA,$FE,$AA,$FE,$AA,$FE,$AA,$00,$F0,$FF,$0F,$30,$00,$00,$30
       .byte $00,$00,$30,$00,$00,$30,$00,$00,$30,$00,$00,$F0,$FF,$0F,$F0,$FF
       .byte $0F,$00,$0C,$0C,$F0,$0C,$3C,$F0,$0C,$00,$F0,$FF,$3F,$00,$30,$30
       .byte $F0,$33,$3F,$F0,$FF,$FF,$00,$00,$00,$F0,$FC,$FF,$F0,$00,$C0,$F0
       .byte $3F,$CF,$00,$30,$CC,$F0,$F3,$CC,$F0,$F3,$0C,$00,$30,$0C,$F0,$3F
       .byte $0F,$F0,$00,$00,$F0,$F0,$00,$00,$30,$00,$F0,$FF,$FF,$F0,$33,$3F
       .byte $00,$30,$3C,$F0,$FF,$3C,$00,$03,$3C,$F0,$33,$3C,$00,$33,$0C,$F0
       .byte $F3,$0C,$F0,$F3,$CC,$00,$33,$0C,$F0,$33,$FC,$00,$33,$00,$F0,$F3
       .byte $FF,$00,$00,$00,$F0,$FF,$0F,$F0,$FF,$CC,$00,$00,$CC,$F0,$03,$CF
       .byte $00,$03,$00,$F0,$F3,$FC,$00,$33,$0C,$F0,$33,$CC,$00,$30,$CC,$00
       .byte $3F,$CF,$00,$00,$C0,$00,$3F,$C3,$00,$30,$C0,$F0,$FF,$FF,$F0,$FF
       .byte $0F,$00,$30,$00,$F0,$30,$FF,$00,$30,$C0,$F0,$F3,$C0,$00,$03,$C0
       .byte $F0,$FF,$CC,$F0,$FE,$15,$30,$03,$1F,$30,$03,$FF,$30,$00,$FF,$30
       .byte $00,$3F,$30,$00,$00,$F0,$FF,$0F,$11,$4D,$31,$0F,$4D,$31,$10,$4D
       .byte $31,$00,$FF,$05,$FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$00,$F0,$FF,$FF,$00,$00,$00,$F0,$FF,$0F,$00
       .byte $00,$0C,$F0,$FF,$0C,$F0,$03,$CC,$F0,$33,$CF,$F0,$30,$00,$F0,$33
       .byte $FF,$00,$33,$00,$F0,$FF,$00,$00,$00,$00,$F0,$FF,$0F,$F0,$FF,$FF
       .byte $00,$00,$C0,$F0,$FF,$CF,$00,$00,$CC,$F0,$33,$FF,$F0,$33,$00,$F0
       .byte $3F,$0C,$F0,$00,$0C,$F0,$FF,$0F,$00,$30,$00,$F0,$30,$00,$00,$30
       .byte $00,$F0,$FF,$0F,$F0,$FF,$0F,$30,$00,$00,$30,$00,$00,$30,$00,$00
       .byte $30,$00,$00,$30,$00,$00,$F0,$FF,$FF,$F0,$F0,$FF,$00,$00,$03,$F0
       .byte $FF,$03,$00,$00,$00,$30,$3F,$FF,$00,$30,$00,$F0,$F0,$FF,$30,$00
       .byte $00,$30,$3F,$FF,$00,$30,$00,$F0,$F0,$FF,$30,$00,$03,$F0,$F0,$FF
       .byte $F0,$FF,$FF,$00,$00,$C0,$F0,$FF,$CF,$00,$00,$0C,$F0,$0F,$FF,$00
       .byte $0F,$C0,$30,$CF,$CC,$00,$C0,$CC,$F0,$FF,$0F,$00,$00,$00,$F0,$FF
       .byte $0F,$00,$00,$00,$F0,$FF,$0F,$00,$FF,$DB,$FC,$C3,$C3,$C3,$C3,$42
       .byte $42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$42,$C3
       .byte $C3,$C3,$C3,$00,$04,$0C,$04,$04,$04,$04,$0E,$00,$00,$FF,$00,$FD
       .byte $07,$FD,$A7,$00,$0E,$11,$01,$02,$04,$08,$1F,$00,$0E,$11,$01,$06
       .byte $01,$11,$0E,$00,$03,$1A,$FD,$FF,$22,$FD,$81,$81,$C3,$C3,$FF,$5A
       .byte $66,$00,$01,$80,$01,$80,$3C,$5A,$66,$C3,$81,$81,$81,$00,$00,$3A
       .byte $FD,$01,$66,$FD,$02,$3A,$FD,$FF,$4F,$FD,$06,$0F,$F3,$FE,$0E,$04
       .byte $04,$1E,$3F,$7F,$E3,$C3,$C3,$C7,$FF,$3C,$08,$8F,$E1,$3F,$00,$80
       .byte $40,$26,$1F,$0B,$0E,$1E,$24,$44,$8E,$1E,$3F,$7F,$7F,$7F,$7F,$3E
       .byte $1C,$08,$F8,$80,$E0,$00,$0C,$0C,$0C,$0E,$1B,$7F,$CE,$80,$FC,$FE
       .byte $FE,$7E,$78,$20,$6E,$42,$7E,$00,$00,$FF,$7C,$FD,$20,$40,$FF,$40
       .byte $20,$00,$00,$FF,$86,$FD,$80,$00,$F0,$80,$80,$80,$F4,$04,$87,$E5
       .byte $87,$80,$05,$E5,$A7,$E1,$87,$E0,$01,$E0,$A0,$F0,$01,$40,$E0,$40
       .byte $40,$40,$01,$E0,$A0,$E0,$80,$E0,$01,$20,$20,$E0,$A0,$E0,$01,$01
       .byte $01,$88,$A8,$A8,$A8,$F8,$01,$E0,$A0,$F0,$01,$80,$E0,$8F,$89,$0F
       .byte $8A,$E9,$80,$8E,$0A,$EE,$A0,$E8,$88,$EE,$0A,$8E,$E0,$A4,$A4,$04
       .byte $80,$08,$0E,$0A,$0A,$80,$0E,$0A,$0E,$08,$0E,$80,$04,$0E,$04,$04
       .byte $04,$80,$04,$0E,$04,$04,$04,$00,$1E,$50,$69,$00,$FF,$88,$FD,$00
       .byte $FF,$F3,$FD,$81,$81,$C3,$7E,$7E,$3C,$18,$18,$7E,$00,$00,$FF,$01
       .byte $FE,$00,$00,$50,$40,$01,$F4,$FC,$03,$04,$FD,$FF,$0C,$FD,$00,$FF
       .byte $12,$FE,$3C,$7E,$E7,$C3,$C3,$C3,$C3,$C3,$00,$DC,$FA,$66,$0A,$21
       .byte $00,$00,$00,$00,$B2,$FA,$D8,$0A,$A1,$08,$02,$80,$03,$B2,$FA,$C8
       .byte $0A,$21,$11,$03,$83,$01,$A0,$FA,$E8,$0A,$61,$06,$01,$86,$02,$3E
       .byte $FB,$86,$0A,$21,$10,$05,$07,$06,$53,$FB,$86,$0A,$21,$1D,$06,$08
       .byte $04,$68,$FB,$86,$0A,$21,$07,$04,$03,$05,$7D,$FB,$86,$0A,$21,$04
       .byte $08,$06,$08,$92,$FB,$86,$0A,$21,$05,$07,$01,$07,$A7,$FB,$08,$08
       .byte $25,$0A,$0A,$0B,$0A,$CE,$FB,$08,$08,$25,$03,$09,$09,$09,$B9,$FB
       .byte $08,$08,$25,$09,$0C,$1C,$0D,$C7,$FA,$98,$0A,$61,$1C,$0D,$1D,$0B
       .byte $C7,$FA,$B8,$0A,$A1,$0F,$0B,$0E,$0C,$74,$FC,$A8,$0A,$21,$0D,$10
       .byte $0F,$10,$E3,$FB,$0C,$0C,$21,$0E,$0F,$0D,$0F,$E3,$FB,$00,$02,$21
       .byte $01,$1C,$04,$1C,$E3,$FB,$1A,$0A,$21,$06,$03,$02,$01,$DC,$FA,$1A
       .byte $0A,$21,$12,$12,$12,$12,$89,$FC,$08,$08,$25,$15,$14,$15,$16,$B0
       .byte $FC,$08,$08,$24,$16,$15,$16,$13,$9B,$FC,$08,$08,$24,$13,$16,$13
       .byte $14,$C2,$FC,$08,$08,$25,$14,$13,$1B,$15,$26,$FC,$36,$0A,$21,$19
       .byte $18,$19,$18,$4D,$FC,$36,$0A,$21,$1A,$17,$1A,$17,$38,$FC,$36,$0A
       .byte $21,$17,$1A,$17,$1A,$5F,$FC,$36,$0A,$21,$18,$19,$18,$19,$29,$FB
       .byte $36,$0A,$21,$89,$89,$89,$89,$DC,$FA,$66,$0A,$21,$1D,$07,$8C,$08
       .byte $74,$FC,$36,$0A,$21,$8F,$01,$10,$03,$B2,$FA,$66,$0A,$21,$06,$01
       .byte $06,$03
LFF32: .byte $10,$0F,$0F,$05,$11,$11,$1D,$0A,$0A,$1C,$16,$16,$1B,$0C,$0C,$03
       .byte $0C,$0C
LFF44: .byte $D9
LFF45: .byte $00
LFF46: .byte $01
LFF47: .byte $FC
LFF48: .byte $02
LFF49: .byte $FC
LFF4A: .byte $28
LFF4B: .byte $0C
LFF4C: .byte $07,$F8,$FB,$C8,$00,$F1,$FA,$00,$00,$00,$FB,$FB,$C9,$00,$F1,$FA
       .byte $00,$00,$00,$FE,$FB,$CA,$00,$F1,$FA,$00,$00,$00,$E8,$FD,$EB,$FD
       .byte $EC,$FD,$CB,$00,$00,$02,$FE,$DD,$00,$05,$FE,$C8,$00,$00,$A4,$00
       .byte $A8,$00,$2E,$FD,$36,$0E,$00,$A9,$00,$AD,$00,$2E,$FD,$1A,$06,$00
       .byte $AE,$00,$B2,$00,$2E,$FD,$C8,$00,$00,$B6,$00,$78,$FD,$79,$FD,$1A
       .byte $06,$00,$BC,$00,$D7,$FC,$D8,$FC,$66,$02,$07,$BF,$00,$FC,$FC,$FD
       .byte $FC,$1A,$06,$00,$C2,$00,$FC,$FC,$FD,$FC,$0E,$0E,$00,$C5,$00,$FC
       .byte $FC,$FD,$FC,$00,$00,$00,$CB,$00,$CF,$00,$14,$FD,$00,$00,$00,$A1
       .byte $00,$82,$FD,$83,$FD,$08,$08,$00,$B9,$00,$EF,$FD,$F0,$FD,$CB,$06
       .byte $00,$B3,$00,$0E,$FE,$0F,$FE,$00,$06,$00,$BC,$00,$FD,$FD,$FE,$FD
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$F0
       .byte $00,$F0,$00,$F0
