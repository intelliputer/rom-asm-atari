; Disassembly of roms/dukes_v2.bin
; Disassembled Tue Oct  6 15:24:50 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/dukes_v2.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
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
GRP0    =  $1B
GRP1    =  $1C
ENABL   =  $1F
HMP0    =  $20
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
INPT0   =  $38
INPT1   =  $39
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM64T  =  $0296

       ORG $F000

START:
       SEI            
       CLD            
       LDX    #$FF    
       TXS            
       INX            
       TXA            
LF007: STA    VSYNC,X 
       INX            
       BNE    LF007   
       JSR    LF62B   
       LDA    #$0A    
       STA    $B9     
       STA    $B7     
       JSR    LF622   
LF018: LDA    #$FF    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$2B    
       STA    TIM64T  
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDX    #$7F    
       STX    VBLANK  
       STA    $97     
       STA    $A4     
       STA    $B3     
       STA    $C3     
       STA    $98     
       STA    $96     
       LDA    $B9     
       CMP    #$0A    
       BEQ    LF061   
       CMP    #$28    
       BEQ    LF061   
       CMP    #$46    
       BEQ    LF061   
       STA    $98     
       LDA    $B9     
       CMP    #$1E    
       BEQ    LF061   
       CMP    #$3C    
       BEQ    LF061   
       CMP    #$5A    
       BEQ    LF061   
       LDA    $95     
       STA    $96     
LF061: LDA    #$14    
       STA    CTRLPF  
       LDA    #$0A    
       STA    $91     
       STA    $C2     
       LDA    #$AA    
       STA    $99     
       LDA    $B9     
       CMP    #$28    
       BCC    LF07D   
       CMP    #$46    
       BCS    LF07D   
       LDA    #$82    
       STA    $99     
LF07D: LDA    $B6     
       BEQ    LF095   
       LDA    $93     
       BNE    LF095   
       LDA    $95     
       BNE    LF090   
       BIT    SWCHA   
       BPL    LF0B3   
       BMI    LF095   
LF090: BIT    SWCHA   
       BVC    LF0B3   
LF095: LDA    $C1     
       CMP    #$32    
       BNE    LF0B8   
       LDA    #$41    
       STA    $BC     
       STA    $BD     
       LDA    $C8     
       CMP    #$0A    
       BNE    LF0B8   
       LDA    #$00    
       STA    $C7     
       STA    $93     
       STA    $9B     
       STX    $A4     
       BEQ    LF0B8   
LF0B3: JSR    LF622   
       STX    $93     
LF0B8: LDA    $C8     
       CLC            
       ADC    $C7     
       STA    $C8     
       ADC    #$08    
       STA    $C9     
       LDA    $C8     
       CMP    #$9B    
       BCC    LF0CD   
       LDA    #$01    
       STA    $C9     
LF0CD: LDA    $C1     
       CMP    $99     
       BEQ    LF0F3   
       LDA    $C0     
       LDX    #$01    
       BEQ    LF0DA   
LF0D9: INX            
LF0DA: SEC            
       SBC    #$28    
       BPL    LF0D9   
       STX    $C7     
       DEC    $C7     
       LDA    $C7     
       CMP    #$01    
       BEQ    LF0F3   
       LDA    $C1     
       CMP    #$32    
       BNE    LF0F3   
       LDA    #$02    
       STA    $C7     
LF0F3: LDA    $BB     
       BEQ    LF0FB   
       STA    $C7     
       BNE    LF110   
LF0FB: LDA    $C1     
       CMP    $99     
       BCS    LF110   
       LDA    $C4     
       AND    #$34    
       BNE    LF110   
       LDY    $C7     
       LDA    $BC     
       ADC    LF7F4,Y 
       STA    $BC     
LF110: LDA    $C1     
       CMP    #$32    
       BEQ    LF128   
       LDA    $A3     
       STA    $C1     
       LDA    $89     
       BEQ    LF128   
       DEC    $89     
       LDA    #$19    
       STA    $C1     
       LDA    $A2     
       STA    $C8     
LF128: LDA    $A4     
       BNE    LF13B   
       LDA    #$09    
       STA    $8F     
       LDA    $8E     
       SEC            
       SBC    $9B     
       SBC    $C7     
       STA    $90     
       BNE    LF163   
LF13B: LDA    #$00    
       STA    $8F     
       STA    $90     
       LDA    #$32    
       STA    $86     
       LDA    #$1D    
       STA    $8C     
       LDA    #$01    
       STA    $9E     
       LDA    SWCHB   
       AND    #$40    
       BNE    LF156   
       STA    $9E     
LF156: LDA    #$01    
       STA    $9F     
       LDA    SWCHB   
       AND    #$80    
       BNE    LF163   
       STA    $9F     
LF163: LDA    #$28    
       LDX    $96     
       STA    $A0     
       LDA    #$3F    
       STA    $9A     
       LDA    $9E,X   
       BNE    LF179   
       LDA    #$50    
       STA    $A0     
       LDA    #$0F    
       STA    $9A     
LF179: LDA    $A1     
       STA    $CC     
       LDY    $C5,X   
       TYA            
       ASL            
       ADC    #$4A    
       STA    $CE     
       TYA            
       ADC    #$75    
       STA    $A1     
       LDA    $9E,X   
       BNE    LF194   
       LDA    $A1     
       ADC    #$0A    
       STA    $A1     
LF194: LDA    $C4     
       AND    #$04    
       BNE    LF1A6   
       LDA    $A4     
       BNE    LF1A6   
       LDA    #$12    
       STA    $B3     
       LDA    #$1C    
       STA    $C2     
LF1A6: LDA    $C4     
       AND    #$1F    
       BNE    LF1B4   
       LDA    $9B     
       CMP    #$05    
       BEQ    LF1B4   
       INC    $9B     
LF1B4: LDA    $C1     
       CMP    #$82    
       BEQ    LF200   
       LDA    $C1     
       CMP    #$19    
       BEQ    LF200   
       LDA    $A5     
       BNE    LF1F7   
       LDA    $C4     
       AND    $9A     
       BNE    LF1CE   
       LDA    $C7     
       STA    $9C     
LF1CE: LDX    $9C     
       CPX    $C7     
       BCC    LF1D7   
       JMP    LF29B   
LF1D7: LDX    $9C     
       LDA    #$00    
       STA    $9B     
       LDA    $B9     
       CMP    #$28    
       BCS    LF1E6   
       JMP    LF29B   
LF1E6: LDA    $C8     
       CMP    #$8C    
       BCC    LF1EF   
       JMP    LF29B   
LF1EF: INX            
       CPX    $C7     
       BCC    LF1F7   
       JMP    LF29B   
LF1F7: STA    $A5     
       LDA    #$2E    
       STA    $C2     
       JMP    LF28A   
LF200: LDA    $C8     
       LDX    $B2     
       STX    $CF     
       CMP    #$20    
       BCC    LF221   
       LDA    $BA     
       CMP    #$01    
       BEQ    LF221   
       LDA    CXP0FB  
       BPL    LF221   
       INC    $BA     
       INC    $BA     
       STA    CXCLR   
       STA    $A5     
       JSR    LF58C   
       BNE    LF254   
LF221: LDA    $C8     
       STA    CXCLR   
       CMP    #$10    
       BCS    LF22C   
       JMP    LF29B   
LF22C: CMP    $BC     
       BCS    LF23E   
       INC    $BA     
       LDA    $BA     
       CMP    #$0A    
       BCC    LF254   
       LDA    #$0A    
       STA    $BA     
       BNE    LF254   
LF23E: DEC    $BA     
       LDA    $BA     
       CMP    #$01    
       BCS    LF254   
       LDA    $BB     
       BNE    LF24E   
       LDA    $C8     
       STA    $BD     
LF24E: LDA    #$01    
       STA    $BA     
       STA    $BB     
LF254: LDA    $BA     
       STA    $C3     
       LDA    $BA     
       CMP    #$01    
       BNE    LF29B   
       LDA    #$00    
       ADC    $B3     
       STA    $C3     
       LDA    $C8     
       CMP    #$28    
       BCC    LF28A   
       CMP    $CE     
       BCS    LF282   
       STA    $A5     
       LDA    $81     
       STA    $CF     
       LDA    #$37    
       STA    $C3     
       LDA    $B3     
       BNE    LF292   
       LDA    $80     
       STA    $CF     
       BNE    LF292   
LF282: LDA    $BD     
       CMP    $A1     
       BCC    LF28A   
       STA    $A5     
LF28A: LDA    $A5     
       BEQ    LF29B   
       LDA    #$25    
       STA    $C3     
LF292: JSR    LF58C   
       DEC    $86     
       LDA    #$00    
       STA    $C7     
LF29B: LDA    SWCHB   
       AND    #$01    
       BNE    LF2AC   
       JSR    LF62B   
       STA    $B6     
       JSR    LF622   
       STA    $C4     
LF2AC: LDA    SWCHB   
       AND    #$02    
       BEQ    LF2B9   
       LDA    #$00    
       STA    $B8     
       BEQ    LF2DD   
LF2B9: JSR    LF62B   
       STA    $B7     
       LDA    $B8     
       BEQ    LF2CA   
       LDA    $C4     
       AND    #$1F    
       STA    $B8     
       BNE    LF2DD   
LF2CA: LDA    $B9     
       CLC            
       ADC    #$0A    
       STA    $B8     
       STA    $B9     
       STY    $C4     
       CMP    #$64    
       BNE    LF2DD   
       LDA    #$0A    
       STA    $B9     
LF2DD: LDA    $C8     
       LDX    $96     
       CMP    #$A0    
       BCS    LF2EC   
       LDA    $86     
       BEQ    LF312   
       JMP    LF36A   
LF2EC: LDA    $BB     
       BEQ    LF2FB   
       LDA    $8C     
       BEQ    LF2FB   
       LDA    #$00    
       STA    $C7     
       JMP    LF36A   
LF2FB: LDA    #$00    
       STA    $C8     
       STA    $A2     
       LDA    #$3C    
       STA    $89     
       LDA    $C1     
       CLC            
       ADC    #$28    
       STA    $C1     
       STA    $A3     
       CMP    #$AA    
       BNE    LF36A   
LF312: LDA    #$32    
       STA    $97     
       STA    $C1     
       STA    $A3     
       LDA    #$0A    
       STA    $C8     
       LDA    #$00    
       STA    $C9     
       STA    $BB     
       STA    $BA     
       LDA    $A5     
       BNE    LF342   
       LDA    $C5,X   
       CMP    #$20    
       BEQ    LF356   
       ADC    #$04    
       STA    $C5,X   
       LDA    $BE,X   
       ADC    #$0A    
       STA    $BE,X   
       CMP    #$64    
       BNE    LF342   
       LDA    #$00    
       STA    $BE,X   
LF342: LDA    $A5     
       BEQ    LF36A   
       LDA    #$00    
       STA    $A5     
       LDA    $B4,X   
       CMP    $A0     
       BCS    LF356   
       ADC    #$0A    
       STA    $B4,X   
       BNE    LF36A   
LF356: LDA    $94     
       BNE    LF362   
       LDA    $98     
       BEQ    LF362   
       INC    $94     
       BNE    LF36A   
LF362: LDA    #$00    
       STA    $B6     
       LDA    #$FF    
       STA    $87     
LF36A: LDX    $95     
       LDA    $81     
       STA    COLUBK  
       LDA    $82,X   
       STA    $B2     
       STA    COLUP0  
       STA    COLUP1  
       LDA    LF65B,X 
       STA    $B1     
       LDA    $82,X   
       STA    COLUPF  
       LDA    LF7F9,X 
       STA    $8E     
       LDX    #$04    
LF388: LDY    #$00    
       LDA    $C8,X   
       CMP    #$52    
       BCC    LF394   
       SBC    #$4B    
       LDY    #$05    
LF394: CPX    #$02    
       ADC    #$02    
LF398: INY            
       SBC    #$0F    
       BCS    LF398   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       STA    WSYNC   
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
LF3A9: DEY            
       BPL    LF3A9   
       STA    RESP0,X 
       DEX            
       BPL    LF388   
       STA    WSYNC   
       STA    HMOVE   
       STX    $C0     
       STX    $CD     
       LDA    $BB     
       BEQ    LF3E2   
       LDA    $A5     
       BNE    LF3E2   
       INC    $8D     
       LDA    $8D     
       CMP    #$04    
       BNE    LF3CF   
       LDA    #$00    
       STA    $8D     
       DEC    $8C     
LF3CF: LDX    $8C     
       LDY    #$00    
       LDA    LF7CA,X 
       BEQ    LF3DC   
       STA    $90     
       LDY    #$FF    
LF3DC: STY    $91     
       LDA    #$0C    
       STA    $8F     
LF3E2: LDY    $96     
       LDA    $90     
       STA    AUDF0   
       LDA    $8F     
       STA    AUDC0   
       LDA    $91     
       STA    AUDV0   
       LDA.wy $00BE,Y 
       STA    $A6     
       LDX    $B4,Y   
       LDA    $B7     
       BEQ    LF40D   
       LDX    $B9     
       LDA    #$FF    
       STA    $87     
       LDA    #$14    
       STA    $A6     
       LDA    $98     
       BNE    LF40D   
       LDA    #$0A    
       STA    $A6     
LF40D: LDA    INTIM   
       BNE    LF40D   
       STA    WSYNC   
       STA    VBLANK  
LF416: JSR    LF556   
       CMP    #$14    
       BNE    LF416   
LF41D: STA    WSYNC   
       INY            
       INX            
       INC    $CD     
       INC    $A6     
       LDA    #$00    
       STA    PF0     
       LDA    LF65B,X 
       STA    PF1     
       STX    $A8     
       LDX    $A6     
       LDA    LF65B,X 
       STA    PF1     
       LDX    $A8     
       CPY    #$0A    
       BNE    LF41D   
       LDA    #$32    
       STA    $A6     
       JSR    LF5B8   
       LDA    #$5A    
       STA    $A6     
       JSR    LF5B8   
LF44B: JSR    LF556   
       LDA    $CD     
       CMP    #$7B    
       BEQ    LF456   
       BNE    LF44B   
LF456: LDX    $96     
       LDA    #$05    
       STA    CTRLPF  
       LDA    $C5,X   
       STA    $A8     
       LDY    #$10    
       LDX    $C3     
       LDA    $C1     
       CMP    #$82    
       BEQ    LF46E   
       LDA    $80     
       STA    $CF     
LF46E: LDA    $CF     
       STA    COLUP0  
       STA    COLUP1  
LF474: INX            
       LDA    LF738,X 
       CMP    #$03    
       STA    WSYNC   
       BNE    LF480   
       AND    $B1     
LF480: STA    GRP0    
       LDA    LF781,X 
       STA    GRP1    
       LDA    LF730,Y 
       STA    PF0     
       LDA    LF708,Y 
       STA    PF1     
       LDA    #$00    
       STA    PF0     
       DEY            
       STA    PF1     
       BPL    LF474   
       LDX    #$03    
       LDY    $A8     
LF49E: STX    ENABL   
       JSR    LF595   
       JSR    LF595   
       INY            
       DEX            
       BPL    LF49E   
       JSR    LF556   
       LDA    #$2B    
       STA    TIM64T  
       LDA    $C4     
       BNE    LF4C0   
       INC    $88     
       DEC    $8A     
       BPL    LF4C0   
       LDA    #$FF    
       STA    $87     
LF4C0: LDA    SWCHB   
       LDX    #$07    
       LDY    #$0B    
       AND    #$08    
       BEQ    LF4CF   
       LDX    #$F7    
       LDY    #$05    
LF4CF: LDA    $87     
       BMI    LF4D5   
       LDX    #$FF    
LF4D5: AND    $88     
       STA    $8B     
       STX    $92     
       LDX    #$05    
LF4DD: LDA    LF7E8,Y 
       EOR    $8B     
       AND    $92     
       STA    $80,X   
       DEY            
       DEX            
       BPL    LF4DD   
       LDA    SWCHB   
       CMP    $9D     
       STA    $9D     
       BNE    LF4F7   
       LDA    $C4     
       BNE    LF502   
LF4F7: LDX    #$03    
       LDY    $81     
LF4FB: STY    $A9,X   
       INY            
       INY            
       DEX            
       BPL    LF4FB   
LF502: LDA    $84     
       STA    $B0     
       LDA    $82     
       STA    $AD     
       STA    $AE     
       STA    $AF     
       INC    $C4     
       LDA    $C4     
       AND    #$05    
       BNE    LF526   
       LDX    $AC     
       LDA    $AB     
       STA    $AC     
       LDA    $AA     
       STA    $AB     
       LDA    $A9     
       STA    $AA     
       STX    $A9     
LF526: LDA    $98     
       BEQ    LF54E   
       LDA    $94     
       CMP    #$02    
       BCC    LF53C   
       LDA    $87     
       BEQ    LF54E   
       LDA    $C4     
       AND    #$3F    
       BNE    LF54E   
       STX    $97     
LF53C: LDA    $97     
       BEQ    LF54E   
       LDX    $95     
       INX            
       TXA            
       AND    #$01    
       STA    $95     
       LDA    $94     
       BEQ    LF54E   
       INC    $94     
LF54E: LDA    INTIM   
       BNE    LF54E   
       JMP    LF018   
LF556: LDY    #$00    
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       STY    PF0     
       STY    PF1     
       STY    PF2     
       INC    $CD     
       LDA    $95     
       BNE    LF57B   
       LDA    $CD     
       BIT    INPT0   
       BMI    LF574   
       STA    $C0     
       BPL    LF578   
LF574: STA    $A8     
       BMI    LF578   
LF578: LDA    $CD     
       RTS            

LF57B: LDA    $CD     
       BIT    INPT1   
       BMI    LF585   
       STA    $C0     
       BPL    LF589   
LF585: STA    $A8     
       BMI    LF589   
LF589: LDA    $CD     
       RTS            

LF58C: LDA    #$08    
       STA    $8F     
       LDA    #$0E    
       STA    $90     
       RTS            

LF595: STA    WSYNC   
       LDA    LF738,X 
       STA    GRP0    
       STA    GRP1    
       STA    PF1     
       LDA    $AD,X   
       STA    COLUBK  
       LDA    $A9,X   
       STA    COLUPF  
       LDA    LF6C0,Y 
       STA    PF2     
       LDA    LF70C,Y 
       STA    PF1     
       LDA    LF6E4,Y 
       STA    PF2     
       RTS            

LF5B8: JSR    LF556   
       CMP    $A6     
       BNE    LF5B8   
       LDX    $C2     
       LDY    #$07    
       LDA    $85     
       STA    COLUPF  
       LDA    $C1     
       CMP    $A6     
       BEQ    LF5CF   
       LDX    #$00    
LF5CF: INX            
       LDA    LF738,X 
       STA    WSYNC   
       CMP    #$03    
       BNE    LF5DB   
       AND    $B1     
LF5DB: STA    GRP0    
       LDA    LF781,X 
       STA    GRP1    
       LDA    #$7F    
       STA    PF0     
       LDA    #$00    
       STA    PF1     
       STA    PF2     
       STA    PF0     
       DEY            
       BPL    LF5CF   
       LDA    $84     
       STA    $A6     
       LDY    #$0F    
LF5F7: LDA    #$00    
       STA    WSYNC   
       STA    GRP0    
       STA    GRP1    
       LDX    $A6     
       STX    COLUBK  
       STA    PF0     
       STA    PF1     
       STA    PF2     
       TAX            
       STY    $A6     
       LDA    $82     
       AND    #$F0    
       ORA    $A6     
       STA    $A6     
       INC    $CD     
       STA    WSYNC   
       DEY            
       BPL    LF5F7   
       STA    WSYNC   
       LDA    $80     
       STA    COLUBK  
       RTS            

LF622: LDA    #$78    
       STA    $8A     
       LDA    #$00    
       STA    $87     
       RTS            

LF62B: LDA    #$00    
       STA    $97     
       STA    $95     
       STA    $BB     
       STA    $B6     
       STA    $B7     
       STA    $A5     
       STA    $C5     
       STA    $C6     
       STA    $B4     
       STA    $B5     
       STA    $94     
       STA    $C3     
       TAY            
       LDA    #$0A    
       STA    $C8     
       STA    $BE     
       STA    $BF     
       STA    $C2     
       LDA    #$12    
       STA    $C9     
       LDA    #$32    
       STA    $C1     
       STA    $A3     
       RTS            

LF65B: .byte $00,$07,$07,$05,$05,$05,$05,$05,$05,$07,$07,$02,$02,$06,$06,$02
       .byte $02,$02,$02,$07,$07,$07,$07,$01,$01,$07,$07,$04,$04,$07,$07,$07
       .byte $07,$01,$01,$03,$03,$01,$01,$07,$07,$05,$05,$05,$05,$05,$07,$07
       .byte $01,$01,$01,$07,$07,$04,$04,$07,$07,$01,$01,$07,$07,$07,$07,$04
       .byte $04,$07,$07,$05,$05,$07,$07,$07,$07,$01,$01,$02,$02,$04,$04,$04
       .byte $04,$07,$07,$05,$05,$07,$07,$05,$05,$07,$07,$07,$07,$05,$05,$07
       .byte $07,$01,$01,$07,$07
LF6C0: .byte $FF,$7E,$3C,$18,$FF,$FE,$FC,$78,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8
       .byte $FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8
       .byte $FF,$FE,$FC,$F8
LF6E4: .byte $00,$00,$00,$00,$C0,$80,$00,$00,$F0,$E0,$C0,$80,$FC,$F8,$F0,$E0
       .byte $FF,$FE,$FC,$F8,$FF,$FF,$FF,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF
LF708: .byte $3F,$1F,$0E,$04
LF70C: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$03,$01,$00,$00,$0F,$07,$03,$01,$3F,$1F,$0F,$07
       .byte $FF,$7F,$3F,$1F
LF730: .byte $7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F
LF738: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$7C,$7C,$7F
       .byte $17,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$7C
       .byte $7C,$7F,$2F,$10,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03
       .byte $0F,$7C,$7C,$7F,$1F,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$C6,$C6,$30,$30,$0C,$0C,$61,$61
LF781: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0,$7E,$FF
       .byte $EB,$14,$08,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$C0
       .byte $7E,$FF,$F7,$08,$14,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$12
       .byte $88,$D2,$64,$E8,$F8,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$31,$31,$C6,$C6,$63,$63,$8C,$8C
LF7CA: .byte $00,$0D,$0D,$0B,$0B,$0B,$00,$0B,$0B,$00,$0B,$0B,$0C,$0C,$0D,$0D
       .byte $0F,$0F,$11,$11,$00,$11,$11,$00,$11,$11,$0D,$0D,$0B,$0B
LF7E8: .byte $C4,$83,$26,$FF,$00,$43,$04,$01,$06,$0F,$00,$03
LF7F4: .byte $00,$FF,$00,$01,$02
LF7F9: .byte $00,$0A,$BF,$00,$F0,$C7,$BF,$78,$D8,$A2,$FF,$9A,$E8,$8A,$95,$00
       .byte $E8,$D0,$FB,$20,$2B,$F6,$A9,$0A,$85,$B9,$85,$B7,$20,$22,$F6,$A9
       .byte $FF,$85,$02,$85,$00,$85,$01,$85,$02,$85,$02,$A9,$2B,$8D,$96,$02
       .byte $A9,$00,$85,$02,$85,$00,$A2,$7F,$86,$01,$85,$97,$85,$A4,$85,$B3
       .byte $85,$C3,$85,$98,$85,$96,$A5,$B9,$C9,$0A,$F0,$1C,$C9,$28,$F0,$18
       .byte $C9,$46,$F0,$14,$85,$98,$A5,$B9,$C9,$1E,$F0,$0C,$C9,$3C,$F0,$08
       .byte $C9,$5A,$F0,$04,$A5,$95,$85,$96,$A9,$14,$85,$0A,$A9,$0A,$85,$91
       .byte $85,$C2,$A9,$AA,$85,$99,$A5,$B9,$C9,$28,$90,$08,$C9,$46,$B0,$04
       .byte $A9,$82,$85,$99,$A5,$B6,$F0,$14,$A5,$93,$D0,$10,$A5,$95,$D0,$07
       .byte $2C,$80,$02,$10,$25,$30,$05,$2C,$80,$02,$50,$1E,$A5,$C1,$C9,$32
       .byte $D0,$1D,$A9,$41,$85,$BC,$85,$BD,$A5,$C8,$C9,$0A,$D0,$11,$A9,$00
       .byte $85,$C7,$85,$93,$85,$9B,$86,$A4,$F0,$05,$20,$22,$F6,$86,$93,$A5
       .byte $C8,$18,$65,$C7,$85,$C8,$69,$08,$85,$C9,$A5,$C8,$C9,$9B,$90,$04
       .byte $A9,$01,$85,$C9,$A5,$C1,$C5,$99,$F0,$20,$A5,$C0,$A2,$01,$F0,$01
       .byte $E8,$38,$E9,$28,$10,$FA,$86,$C7,$C6,$C7,$A5,$C7,$C9,$01,$F0,$0A
       .byte $A5,$C1,$C9,$32,$D0,$04,$A9,$02,$85,$C7,$A5,$BB,$F0,$04,$85,$C7
       .byte $D0,$15,$A5,$C1,$C5,$99,$B0,$0F,$A5,$C4,$29,$34,$D0,$09,$A4,$C7
       .byte $A5,$BC,$79,$F4,$F7,$85,$BC,$A5,$C1,$C9,$32,$F0,$12,$A5,$A3,$85
       .byte $C1,$A5,$89,$F0,$0A,$C6,$89,$A9,$19,$85,$C1,$A5,$A2,$85,$C8,$A5
       .byte $A4,$D0,$0F,$A9,$09,$85,$8F,$A5,$8E,$38,$E5,$9B,$E5,$C7,$85,$90
       .byte $D0,$28,$A9,$00,$85,$8F,$85,$90,$A9,$32,$85,$86,$A9,$1D,$85,$8C
       .byte $A9,$01,$85,$9E,$AD,$82,$02,$29,$40,$D0,$02,$85,$9E,$A9,$01,$85
       .byte $9F,$AD,$82,$02,$29,$80,$D0,$02,$85,$9F,$A9,$28,$A6,$96,$85,$A0
       .byte $A9,$3F,$85,$9A,$B5,$9E,$D0,$08,$A9,$50,$85,$A0,$A9,$0F,$85,$9A
       .byte $A5,$A1,$85,$CC,$B4,$C5,$98,$0A,$69,$4A,$85,$CE,$98,$69,$75,$85
       .byte $A1,$B5,$9E,$D0,$06,$A5,$A1,$69,$0A,$85,$A1,$A5,$C4,$29,$04,$D0
       .byte $0C,$A5,$A4,$D0,$08,$A9,$12,$85,$B3,$A9,$1C,$85,$C2,$A5,$C4,$29
       .byte $1F,$D0,$08,$A5,$9B,$C9,$05,$F0,$02,$E6,$9B,$A5,$C1,$C9,$82,$F0
       .byte $46,$A5,$C1,$C9,$19,$F0,$40,$A5,$A5,$D0,$33,$A5,$C4,$25,$9A,$D0
       .byte $04,$A5,$C7,$85,$9C,$A6,$9C,$E4,$C7,$90,$03,$4C,$9B,$F2,$A6,$9C
       .byte $A9,$00,$85,$9B,$A5,$B9,$C9,$28,$B0,$03,$4C,$9B,$F2,$A5,$C8,$C9
       .byte $8C,$90,$03,$4C,$9B,$F2,$E8,$E4,$C7,$90,$03,$4C,$9B,$F2,$85,$A5
       .byte $A9,$2E,$85,$C2,$4C,$8A,$F2,$A5,$C8,$A6,$B2,$86,$CF,$C9,$20,$90
       .byte $17,$A5,$BA,$C9,$01,$F0,$11,$A5,$32,$10,$0D,$E6,$BA,$E6,$BA,$85
       .byte $2C,$85,$A5,$20,$8C,$F5,$D0,$33,$A5,$C8,$85,$2C,$C9,$10,$B0,$03
       .byte $4C,$9B,$F2,$C5,$BC,$B0,$0E,$E6,$BA,$A5,$BA,$C9,$0A,$90,$1C,$A9
       .byte $0A,$85,$BA,$D0,$16,$C6,$BA,$A5,$BA,$C9,$01,$B0,$0E,$A5,$BB,$D0
       .byte $04,$A5,$C8,$85,$BD,$A9,$01,$85,$BA,$85,$BB,$A5,$BA,$85,$C3,$A5
       .byte $BA,$C9,$01,$D0,$3D,$A9,$00,$65,$B3,$85,$C3,$A5,$C8,$C9,$28,$90
       .byte $20,$C5,$CE,$B0,$14,$85,$A5,$A5,$81,$85,$CF,$A9,$37,$85,$C3,$A5
       .byte $B3,$D0,$16,$A5,$80,$85,$CF,$D0,$10,$A5,$BD,$C5,$A1,$90,$02,$85
       .byte $A5,$A5,$A5,$F0,$0D,$A9,$25,$85,$C3,$20,$8C,$F5,$C6,$86,$A9,$00
       .byte $85,$C7,$AD,$82,$02,$29,$01,$D0,$0A,$20,$2B,$F6,$85,$B6,$20,$22
       .byte $F6,$85,$C4,$AD,$82,$02,$29,$02,$F0,$06,$A9,$00,$85,$B8,$F0,$24
       .byte $20,$2B,$F6,$85,$B7,$A5,$B8,$F0,$08,$A5,$C4,$29,$1F,$85,$B8,$D0
       .byte $13,$A5,$B9,$18,$69,$0A,$85,$B8,$85,$B9,$84,$C4,$C9,$64,$D0,$04
       .byte $A9,$0A,$85,$B9,$A5,$C8,$A6,$96,$C9,$A0,$B0,$07,$A5,$86,$F0,$29
       .byte $4C,$6A,$F3,$A5,$BB,$F0,$0B,$A5,$8C,$F0,$07,$A9,$00,$85,$C7,$4C
       .byte $6A,$F3,$A9,$00,$85,$C8,$85,$A2,$A9,$3C,$85,$89,$A5,$C1,$18,$69
       .byte $28,$85,$C1,$85,$A3,$C9,$AA,$D0,$58,$A9,$32,$85,$97,$85,$C1,$85
       .byte $A3,$A9,$0A,$85,$C8,$A9,$00,$85,$C9,$85,$BB,$85,$BA,$A5,$A5,$D0
       .byte $18,$B5,$C5,$C9,$20,$F0,$26,$69,$04,$95,$C5,$B5,$BE,$69,$0A,$95
       .byte $BE,$C9,$64,$D0,$04,$A9,$00,$95,$BE,$A5,$A5,$F0,$24,$A9,$00,$85
       .byte $A5,$B5,$B4,$C5,$A0,$B0,$06,$69,$0A,$95,$B4,$D0,$14,$A5,$94,$D0
       .byte $08,$A5,$98,$F0,$04,$E6,$94,$D0,$08,$A9,$00,$85,$B6,$A9,$FF,$85
       .byte $87,$A6,$95,$A5,$81,$85,$09,$B5,$82,$85,$B2,$85,$06,$85,$07,$BD
       .byte $5B,$F6,$85,$B1,$B5,$82,$85,$08,$BD,$F9,$F7,$85,$8E,$A2,$04,$A0
       .byte $00,$B5,$C8,$C9,$52,$90,$04,$E9,$4B,$A0,$05,$E0,$02,$69,$02,$C8
       .byte $E9,$0F,$B0,$FB,$49,$FF,$E9,$06,$0A,$85,$02,$0A,$0A,$0A,$95,$20
       .byte $88,$10,$FD,$95,$10,$CA,$10,$D7,$85,$02,$85,$2A,$86,$C0,$86,$CD
       .byte $A5,$BB,$F0,$25,$A5,$A5,$D0,$21,$E6,$8D,$A5,$8D,$C9,$04,$D0,$06
       .byte $A9,$00,$85,$8D,$C6,$8C,$A6,$8C,$A0,$00,$BD,$CA,$F7,$F0,$04,$85
       .byte $90,$A0,$FF,$84,$91,$A9,$0C,$85,$8F,$A4,$96,$A5,$90,$85,$17,$A5
       .byte $8F,$85,$15,$A5,$91,$85,$19,$B9,$BE,$00,$85,$A6,$B6,$B4,$A5,$B7
       .byte $F0,$12,$A6,$B9,$A9,$FF,$85,$87,$A9,$14,$85,$A6,$A5,$98,$D0,$04
       .byte $A9,$0A,$85,$A6,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$20,$56,$F5
       .byte $C9,$14,$D0,$F9,$85,$02,$C8,$E8,$E6,$CD,$E6,$A6,$A9,$00,$85,$0D
       .byte $BD,$5B,$F6,$85,$0E,$86,$A8,$A6,$A6,$BD,$5B,$F6,$85,$0E,$A6,$A8
       .byte $C0,$0A,$D0,$E0,$A9,$32,$85,$A6,$20,$B8,$F5,$A9,$5A,$85,$A6,$20
       .byte $B8,$F5,$20,$56,$F5,$A5,$CD,$C9,$7B,$F0,$02,$D0,$F5,$A6,$96,$A9
       .byte $05,$85,$0A,$B5,$C5,$85,$A8,$A0,$10,$A6,$C3,$A5,$C1,$C9,$82,$F0
       .byte $04,$A5,$80,$85,$CF,$A5,$CF,$85,$06,$85,$07,$E8,$BD,$38,$F7,$C9
       .byte $03,$85,$02,$D0,$02,$25,$B1,$85,$1B,$BD,$81,$F7,$85,$1C,$B9,$30
       .byte $F7,$85,$0D,$B9,$08,$F7,$85,$0E,$A9,$00,$85,$0D,$88,$85,$0E,$10
       .byte $DA,$A2,$03,$A4,$A8,$86,$1F,$20,$95,$F5,$20,$95,$F5,$C8,$CA,$10
       .byte $F4,$20,$56,$F5,$A9,$2B,$8D,$96,$02,$A5,$C4,$D0,$0A,$E6,$88,$C6
       .byte $8A,$10,$04,$A9,$FF,$85,$87,$AD,$82,$02,$A2,$07,$A0,$0B,$29,$08
       .byte $F0,$04,$A2,$F7,$A0,$05,$A5,$87,$30,$02,$A2,$FF,$25,$88,$85,$8B
       .byte $86,$92,$A2,$05,$B9,$E8,$F7,$45,$8B,$25,$92,$95,$80,$88,$CA,$10
       .byte $F3,$AD,$82,$02,$C5,$9D,$85,$9D,$D0,$04,$A5,$C4,$D0,$0B,$A2,$03
       .byte $A4,$81,$94,$A9,$C8,$C8,$CA,$10,$F9,$A5,$84,$85,$B0,$A5,$82,$85
       .byte $AD,$85,$AE,$85,$AF,$E6,$C4,$A5,$C4,$29,$05,$D0,$10,$A6,$AC,$A5
       .byte $AB,$85,$AC,$A5,$AA,$85,$AB,$A5,$A9,$85,$AA,$86,$A9,$A5,$98,$F0
       .byte $24,$A5,$94,$C9,$02,$90,$0C,$A5,$87,$F0,$1A,$A5,$C4,$29,$3F,$D0
       .byte $14,$86,$97,$A5,$97,$F0,$0E,$A6,$95,$E8,$8A,$29,$01,$85,$95,$A5
       .byte $94,$F0,$02,$E6,$94,$AD,$84,$02,$D0,$FB,$4C,$18,$F0,$A0,$00,$85
       .byte $02,$84,$1B,$84,$1C,$84,$0D,$84,$0E,$84,$0F,$E6,$CD,$A5,$95,$D0
       .byte $11,$A5,$CD,$24,$38,$30,$04,$85,$C0,$10,$04,$85,$A8,$30,$00,$A5
       .byte $CD,$60,$A5,$CD,$24,$39,$30,$04,$85,$C0,$10,$04,$85,$A8,$30,$00
       .byte $A5,$CD,$60,$A9,$08,$85,$8F,$A9,$0E,$85,$90,$60,$85,$02,$BD,$38
       .byte $F7,$85,$1B,$85,$1C,$85,$0E,$B5,$AD,$85,$09,$B5,$A9,$85,$08,$B9
       .byte $C0,$F6,$85,$0F,$B9,$0C,$F7,$85,$0E,$B9,$E4,$F6,$85,$0F,$60,$20
       .byte $56,$F5,$C5,$A6,$D0,$F9,$A6,$C2,$A0,$07,$A5,$85,$85,$08,$A5,$C1
       .byte $C5,$A6,$F0,$02,$A2,$00,$E8,$BD,$38,$F7,$85,$02,$C9,$03,$D0,$02
       .byte $25,$B1,$85,$1B,$BD,$81,$F7,$85,$1C,$A9,$7F,$85,$0D,$A9,$00,$85
       .byte $0E,$85,$0F,$85,$0D,$88,$10,$DE,$A5,$84,$85,$A6,$A0,$0F,$A9,$00
       .byte $85,$02,$85,$1B,$85,$1C,$A6,$A6,$86,$09,$85,$0D,$85,$0E,$85,$0F
       .byte $AA,$84,$A6,$A5,$82,$29,$F0,$05,$A6,$85,$A6,$E6,$CD,$85,$02,$88
       .byte $10,$DC,$85,$02,$A5,$80,$85,$09,$60,$A9,$78,$85,$8A,$A9,$00,$85
       .byte $87,$60,$A9,$00,$85,$97,$85,$95,$85,$BB,$85,$B6,$85,$B7,$85,$A5
       .byte $85,$C5,$85,$C6,$85,$B4,$85,$B5,$85,$94,$85,$C3,$A8,$A9,$0A,$85
       .byte $C8,$85,$BE,$85,$BF,$85,$C2,$A9,$12,$85,$C9,$A9,$32,$85,$C1,$85
       .byte $A3,$60,$00,$07,$07,$05,$05,$05,$05,$05,$05,$07,$07,$02,$02,$06
       .byte $06,$02,$02,$02,$02,$07,$07,$07,$07,$01,$01,$07,$07,$04,$04,$07
       .byte $07,$07,$07,$01,$01,$03,$03,$01,$01,$07,$07,$05,$05,$05,$05,$05
       .byte $07,$07,$01,$01,$01,$07,$07,$04,$04,$07,$07,$01,$01,$07,$07,$07
       .byte $07,$04,$04,$07,$07,$05,$05,$07,$07,$07,$07,$01,$01,$02,$02,$04
       .byte $04,$04,$04,$07,$07,$05,$05,$07,$07,$05,$05,$07,$07,$07,$07,$05
       .byte $05,$07,$07,$01,$01,$07,$07,$FF,$7E,$3C,$18,$FF,$FE,$FC,$78,$FF
       .byte $FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF
       .byte $FE,$FC,$F8,$FF,$FE,$FC,$F8,$FF,$FE,$FC,$F8,$00,$00,$00,$00,$C0
       .byte $80,$00,$00,$F0,$E0,$C0,$80,$FC,$F8,$F0,$E0,$FF,$FE,$FC,$F8,$FF
       .byte $FF,$FF,$FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$3F
       .byte $1F,$0E,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$03,$01,$00,$00,$0F,$07,$03,$01,$3F
       .byte $1F,$0F,$07,$FF,$7F,$3F,$1F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$7F,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$7C,$7C,$7F,$17
       .byte $28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$7C,$7C
       .byte $7F,$2F,$10,$28,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0F
       .byte $7C,$7C,$7F,$1F,$28,$10,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $C6,$C6,$30,$30,$0C,$0C,$61,$61,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$80,$C0,$7E,$FF,$EB,$14,$08,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$80,$C0,$7E,$FF,$F7,$08,$14,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$12,$88,$D2,$64,$E8,$F8,$28,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$31,$31,$C6,$C6,$63,$63,$8C
       .byte $8C,$00,$0D,$0D,$0B,$0B,$0B,$00,$0B,$0B,$00,$0B,$0B,$0C,$0C,$0D
       .byte $0D,$0F,$0F,$11,$11,$00,$11,$11,$00,$11,$11,$0D,$0D,$0B,$0B,$C4
       .byte $83,$26,$FF,$00,$43,$04,$01,$06,$0F,$00,$03,$00,$FF,$00,$01,$02
       .byte $00,$0A,$BF,$00,$F0,$C7,$BF
