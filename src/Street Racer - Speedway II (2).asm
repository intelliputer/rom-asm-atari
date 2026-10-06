; Disassembly of roms/Street Racer - Speedway II (2).bin
; Disassembled Tue Oct  6 15:24:47 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Street Racer - Speedway II (2).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
AUDC0   =  $15
AUDF0   =  $17
AUDV0   =  $19
GRP0    =  $1B
GRP1    =  $1C
HMP0    =  $20
HMP1    =  $21
RESMP0  =  $28
HMOVE   =  $2A
CXCLR   =  $2C
CXP0FB  =  $32
CXM0FB  =  $34
INPT0   =  $38
SWCHA   =  $0280
SWCHB   =  $0282
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
       LDA    #$0E    
       STA    TIM64T  
       JMP    LF24E   
LF012: LDA    #$82    
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
       LDA    #$28    
       STA    TIM64T  
       JMP    LF3B8   
LF032: INC    $80     
LF034: LDA    INTIM   
       BNE    LF034   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       LDA    #$02    
       STA    CTRLPF  
       LDA    $80     
       AND    #$03    
       STA    $89     
       LDX    $83     
LF04B: STA    WSYNC   
       DEX            
       BNE    LF04B   
       LDA    $83     
       CMP    #$07    
       BCS    LF0A6   
       STX    $86     
       STX    $87     
       LDX    #$06    
LF05C: STA    WSYNC   
       LDA    $86     
       STA    PF1     
       LDY    $8E     
       LDA    LF6E7,Y 
       AND    #$F0    
       STA    $86     
       LDY    $8C     
       LDA    LF6E7,Y 
       AND    #$0F    
       ORA    $86     
       STA    $86     
       LDA    $87     
       STA    PF1     
       LDY    $8F     
       LDA    LF6E7,Y 
       AND    #$F0    
       STA    $87     
       LDY    $8D     
       LDA    LF6E7,Y 
       AND    $99     
       STA    WSYNC   
       ORA    $87     
       STA    $87     
       LDA    $86     
       STA    PF1     
       DEX            
       BEQ    LF0A6   
       INC    $8C     
       INC    $8E     
       INC    $8D     
       INC    $8F     
       LDA    $87     
       STA    PF1     
       JMP    LF05C   
LF0A6: STX    PF1     
       STX    $84     
       STX    $86     
       STX    CTRLPF  
       LDA    #$70    
       STA    PF0     
       LDY    #$D0    
       STY    $A4     
LF0B6: STA    WSYNC   
       LDX    $AF     
       LDA    $86     
LF0BC: STA    PF1     
       LDA    $84     
       STA    PF2     
       SEC            
       TYA            
       SBC    $BA,X   
       STA    $88     
       AND    #$F8    
       BEQ    LF0E2   
       BPL    LF0D3   
       NOP            
       NOP            
       NOP            
       BNE    LF0D9   
LF0D3: LDA    $AF     
       EOR    #$02    
       STA    $AF     
LF0D9: LDA    #$00    
       STA    $87     
       STA    PF1     
       NOP            
       BEQ    LF0F0   
LF0E2: LDA    LF71D,X 
       ORA    $88     
       TAX            
       LDA    $CE,X   
       STA    $87     
       STA    PF1     
       LDA    $BE,X   
LF0F0: STA    $85     
       STA    PF2     
       LDX    $AE     
       SEC            
       TYA            
       SBC    $BA,X   
       STA    $88     
       AND    #$F8    
       BEQ    LF116   
       BPL    LF107   
       NOP            
       NOP            
       NOP            
       BNE    LF10D   
LF107: LDA    $AE     
       EOR    #$02    
       STA    $AE     
LF10D: LDA    #$00    
       STA    $86     
       STA    PF1     
       NOP            
       BEQ    LF124   
LF116: LDA    LF71D,X 
       ORA    $88     
       TAX            
       LDA    $CE,X   
       STA    $86     
       STA    PF1     
       LDA    $BE,X   
LF124: STA    $84     
       STA    PF2     
       SEC            
       TYA            
       LDX    $87     
       STX    PF1     
       SBC    $A2     
       LDX    $85     
       STX    PF2     
       TAX            
       AND    #$F8    
       BEQ    LF140   
       PLA            
       LDA    $88     
       LDA    #$00    
       BEQ    LF147   
LF140: TXA            
       ORA    $AC     
       TAX            
       LDA    LF79A,X 
LF147: STA    GRP0    
       LDA    $86     
       STA    PF1     
       LDA    $84     
       STA    PF2     
       SEC            
       TYA            
       SBC    $A3     
       TAX            
       AND    #$F8    
       BEQ    LF161   
       PLA            
       LDA    $88     
       LDA    #$00    
       BEQ    LF168   
LF161: TXA            
       ORA    $AD     
       TAX            
       LDA    LF79A,X 
LF168: STA    GRP1    
       LDX    #$1D    
       TXS            
       LDA    $87     
       STA    PF1     
       LDA    $85     
       STA    PF2     
       LDX    $89     
       LDA    INPT0,X 
       BMI    LF17D   
       STY    $A4     
LF17D: SEC            
       TYA            
       SBC    $90     
       AND    #$FE    
       PHP            
       LDA    $86     
       STA    PF1     
       LDA    $84     
       STA    PF2     
       LDX    #$1E    
       TXS            
       SEC            
       TYA            
       SBC    $91     
       AND    #$FE    
       PHP            
       PLA            
       PLA            
       PLA            
       LDA    $87     
       STA    PF1     
       LDA    $85     
       STA    PF2     
       INY            
       BEQ    LF1E2   
       CPY    #$F2    
       BNE    LF1AC   
       BIT    $97     
       BMI    LF1AF   
LF1AC: JMP    LF0B6   
LF1AF: STA    WSYNC   
       LDA    #$FF    
       STA    PF1     
       STA    PF2     
       LDA    $A7     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF1BE: DEX            
       BPL    LF1BE   
       STA    RESP1   
       STA    WSYNC   
       LDA    #$F4    
       STA    $A2     
       STA    $A3     
       LDA    $A6     
       STA    HMP0    
       AND    #$0F    
       TAX            
LF1D2: DEX            
       BPL    LF1D2   
       STA    RESP0   
       LDX    $AF     
       LDA    $86     
       STA    WSYNC   
       STA    HMOVE   
       JMP    LF0BC   
LF1E2: STY    PF0     
       STY    PF1     
       STY    PF2     
       LDA    #$11    
       BIT    $97     
       BMI    LF1F0   
       LDA    #$13    
LF1F0: STA    TIM64T  
       LDA    SWCHB   
       ROR            
       BCS    LF217   
       LDA    #$FF    
       STA    $94     
       LDA    #$00    
       STA    $8A     
       STA    $8B     
       LDA    $92     
       STA    $93     
       LDA    #$80    
       STA    $81     
       LDA    $80     
       AND    #$03    
       STA    $80     
       LDA    #$0F    
       STA    $99     
       BNE    LF27C   
LF217: LDY    #$01    
       LDA    $81     
       AND    $94     
       CMP    #$F0    
       BCC    LF229   
       LDA    $80     
       AND    #$30    
       BNE    LF229   
       LDY    #$0D    
LF229: STY    $83     
       LDA    $80     
       AND    #$3F    
       BNE    LF239   
       STA    $82     
       INC    $81     
       BNE    LF239   
       STA    $94     
LF239: LDA    SWCHB   
       AND    #$02    
       BEQ    LF244   
       STA    $82     
       BNE    LF291   
LF244: BIT    $82     
       BMI    LF291   
       LDA    #$FF    
       STA    $82     
       INC    $95     
LF24E: LDA    $96     
       STA    $8A     
       LDX    #$00    
       STX    $8B     
       STX    $99     
       STX    $94     
       STX    $80     
       LDA    $95     
       CMP    #$1B    
       BCC    LF266   
       STX    $8A     
       STX    $95     
LF266: SED            
       CLC            
       LDA    $8A     
       ADC    #$01    
       STA    $8A     
       CLD            
       STA    $96     
       LDX    $95     
       LDA    LF76D,X 
       STA    $97     
       AND    #$07    
       STA    $98     
LF27C: LDX    #$03    
LF27E: LDA    #$01    
       STA    $B6,X   
       LDA    #$20    
       STA    $BA,X   
       LDA    #$00    
       STA    $9E,X   
       LDA    #$F4    
       STA    $A2,X   
       DEX            
       BPL    LF27E   
LF291: LDX    #$FF    
       TXS            
       LDX    $89     
       BNE    LF2B7   
       BIT    $97     
       BVS    LF2B7   
       BMI    LF2B7   
       LDA    $A5     
       BIT    CXP0FB  
       BPL    LF2B3   
       CLC            
       ADC    #$04    
       BMI    LF2B3   
       LDA    #$D0    
       LDY    $98     
       CPY    #$03    
       BNE    LF2B3   
       LDA    #$E0    
LF2B3: STA    $A5     
       STA    $A4     
LF2B7: CLC            
       LDA    $A4     
       EOR    #$FF    
       ADC    LF719,X 
       LDY    #$00    
LF2C1: CMP    #$08    
       BCC    LF2CB   
       INY            
       SEC            
       SBC    #$0F    
       BPL    LF2C1   
LF2CB: EOR    #$FF    
       CLC            
       ADC    #$01    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $84     
       TYA            
       ORA    $84     
       STA    $A6,X   
       LDX    #$00    
       JSR    LF6AF   
       LDA    $89     
       AND    #$01    
       TAX            
       STA    $89     
       BIT    $97     
       BPL    LF2EF   
       LDA    #$02    
       STA    RESMP0,X
LF2EF: LDA    $94     
       BMI    LF2F6   
       JMP    LF3AE   
LF2F6: LDA    $AA,X   
       BMI    LF322   
       LDA    #$3F    
       LDY    $98     
       CPY    #$03    
       BEQ    LF31A   
       LDA    $97     
       AND    #$C0    
       ORA    $89     
       BEQ    LF318   
       LDA    SWCHA   
       EOR    #$FF    
       AND    LF7FA,X 
       BNE    LF318   
       DEC    $9E,X   
       BPL    LF322   
LF318: LDA    #$7F    
LF31A: INC    $9E,X   
       CMP    $9E,X   
       BCS    LF322   
       STA    $9E,X   
LF322: LDA    $98     
       CMP    #$03    
       BCC    LF374   
       BNE    LF330   
       LDA    $AA,X   
       ORA    CXP0FB,X
       BMI    LF374   
LF330: LDA    CXM0FB,X
       BPL    LF374   
       TXA            
       TAY            
       LDA    $BA,X   
       CMP    #$D0    
       BCC    LF348   
       SBC    #$02    
       CMP    $90,X   
       BCS    LF348   
       ADC    #$0A    
       CMP    $90,X   
       BCS    LF34A   
LF348: INY            
       INY            
LF34A: LDA    $98     
       CMP    #$05    
       BNE    LF365   
       LDA.wy $00B6,Y 
       BNE    LF359   
       STA    $A0,X   
       BEQ    LF374   
LF359: CMP    #$01    
       BEQ    LF361   
       CMP    $A0,X   
       BNE    LF374   
LF361: EOR    #$02    
       STA    $A0,X   
LF365: LDA.wy $00B6,Y 
       JSR    LF693   
       LDA    #$00    
       STA    $90,X   
       STA.wy $00BA,Y 
       BEQ    LF3AE   
LF374: LDA    $AA,X   
       BPL    LF37D   
       CLC            
       ADC    #$01    
       BNE    LF3AE   
LF37D: LDA    CXP0FB,X
       BPL    LF3AE   
       LDA    $98     
       CMP    #$02    
       BNE    LF38D   
       LDA    $9E,X   
       CMP    #$0A    
       BCC    LF3AE   
LF38D: LDA    #$00    
       STA    $9E,X   
       STA    $A0,X   
       LDA    #$1F    
       STA    $9C,X   
       LDA    SWCHB   
       AND    LF7FE,X 
       BEQ    LF3AC   
       SED            
       SEC            
       LDA    $8A,X   
       SBC    #$01    
       CLD            
       BCS    LF3AA   
       LDA    #$00    
LF3AA: STA    $8A,X   
LF3AC: LDA    #$C0    
LF3AE: STA    $AA,X   
LF3B0: LDA    INTIM   
       BNE    LF3B0   
       JMP    LF012   
LF3B8: BIT    $97     
       BPL    LF3D9   
       LDA    $80     
       AND    #$02    
       BNE    LF3C6   
       LDX    $89     
       STA    RESMP0,X
LF3C6: LDX    #$02    
       JSR    LF6AF   
       LDA    #$00    
       BIT    $97     
       BVC    LF3D3   
       LDA    #$E8    
LF3D3: STA    $A2     
       LDA    #$E8    
       STA    $A3     
LF3D9: LDX    $89     
       LDA    $98     
       CMP    #$03    
       BEQ    LF40A   
       CMP    #$02    
       BCC    LF432   
       BNE    LF3FC   
       LDA    #$F4    
       SBC    $9E,X   
       CMP    #$C9    
       BCS    LF3FA   
       LDA    #$01    
       JSR    LF693   
       LDA    #$00    
       STA    $9E,X   
       LDA    #$F4    
LF3FA: STA    $A2,X   
LF3FC: BIT    $97     
       BPL    LF432   
       LDA    $80     
       AND    #$02    
       BNE    LF432   
       LDA    #$F4    
       BNE    LF438   
LF40A: LDA    $94     
       BPL    LF438   
       LDA    $90,X   
       BEQ    LF420   
       LDA    $80     
       AND    #$02    
       BNE    LF43A   
       DEC    $90,X   
       LDA    $90,X   
       CMP    #$D0    
       BCS    LF43A   
LF420: LDA    $97     
       AND    #$C0    
       ORA    $89     
       BEQ    LF432   
       LDA    SWCHA   
       EOR    #$FF    
       AND    LF7FA,X 
       BEQ    LF43A   
LF432: LDA    #$02    
       STA    RESMP0,X
       LDA    $A2,X   
LF438: STA    $90,X   
LF43A: LDA    $98     
       ASL            
       ASL            
       ASL            
       STA    $AC,X   
       TAY            
       CMP    #$28    
       BNE    LF44E   
       LDA    $A0,X   
       CMP    #$03    
       BEQ    LF452   
       BNE    LF458   
LF44E: LDA    $AA,X   
       BPL    LF458   
LF452: CLC            
       TYA            
       ADC    #$30    
       STA    $AC,X   
LF458: CPY    #$18    
       BEQ    LF45E   
       LDY    #$25    
LF45E: STY    NUSIZ0,X
       LDA    $AA,X   
       BPL    LF46B   
       CMP    #$E0    
       BCS    LF46B   
       JMP    LF5E6   
LF46B: LDA    #$03    
       AND    $80     
       TAX            
       STX    $86     
       LDY    $89     
       LDA    $BA,X   
       BPL    LF4E3   
       LDA.wy $009E,Y 
       LSR            
       LSR            
       LSR            
       LSR            
       BNE    LF483   
       LDA    #$01    
LF483: STA    $88     
       CLC            
       ADC    $BA,X   
       BCS    LF4CD   
       STA    $BA,X   
       LDA    $98     
       CMP    #$01    
       BEQ    LF4CA   
       CMP    #$02    
       BEQ    LF49E   
       LDA    $88     
       AND    $80     
       AND    #$04    
       BEQ    LF4CA   
LF49E: INC    $B2,X   
       LDY    $86     
       LDX    LF71D,Y 
       LDA.wy $00B2,Y 
       BMI    LF4B3   
       CMP    #$0A    
       BCC    LF4C0   
       LDA    #$F6    
       STA.wy $00B2,Y 
LF4B3: CLC            
LF4B4: ROR    $BE,X   
       ROL    $CE,X   
       INX            
       TXA            
       AND    #$07    
       BNE    LF4B4   
       BEQ    LF4CA   
LF4C0: ROR    $CE,X   
       ROL    $BE,X   
       INX            
       TXA            
       AND    #$07    
       BNE    LF4C0   
LF4CA: JMP    LF5E6   
LF4CD: STA    $BA,X   
       BIT    $94     
       BPL    LF4E0   
       LDA    $98     
       CMP    #$02    
       BCS    LF4E0   
       LDX    $89     
       LDA    #$01    
       JSR    LF693   
LF4E0: JMP    LF5E6   
LF4E3: CLC            
       ADC    #$B0    
       STA    $BA,X   
       CPX    #$02    
       BCS    LF4F8   
       LDA    $BC,X   
       CMP    #$D4    
       BCS    LF50B   
       CMP    #$B0    
       BCS    LF504   
       BCC    LF50B   
LF4F8: LDA    $B8,X   
       CMP    #$D4    
       BCC    LF504   
       LDA    $97     
       AND    #$10    
       BEQ    LF50B   
LF504: LDA    #$00    
       STA    $BA,X   
       JMP    LF5E6   
LF50B: STX    $B0,Y   
       LDA    $98     
       ASL            
       ASL            
       ASL            
       STA    $85     
       CMP    #$20    
       BEQ    LF540   
       BCC    LF552   
       JSR    LF6D4   
       AND    #$03    
       BNE    LF53A   
       LDA    #$20    
       STA    $85     
       LDA.wy $00A0,Y 
       CMP    #$03    
       BEQ    LF535   
       LDA    #$08    
       STA    $85     
       LDA    #$01    
       STA.wy $00A0,Y 
LF535: STA    $B6,X   
       JMP    LF552   
LF53A: LDA    #$00    
       STA    $B6,X   
       BEQ    LF552   
LF540: JSR    LF6D4   
       AND    #$06    
       BNE    LF549   
       LDA    #$02    
LF549: STA    $B6,X   
       ASL            
       ASL            
       CLC            
       ADC    $B6,X   
       STA    $84     
LF552: JSR    LF6D4   
       STA    $88     
       AND    #$07    
       STA    $87     
       STA    $B2,X   
       TAY            
       LDA    $88     
       AND    #$10    
       BEQ    LF56A   
       INY            
       TYA            
       EOR    #$FF    
       STA    $B2,X   
LF56A: LDA    LF71D,X 
       TAX            
LF56E: LDY    $85     
       LDA    LF73D,Y 
       STA    $CE,X   
       LDA    #$00    
       STA    $BE,X   
       LDA    $98     
       CMP    #$01    
       BEQ    LF59D   
       CMP    #$04    
       BNE    LF5D0   
       TXA            
       AND    #$07    
       CMP    #$05    
       BCC    LF590   
       LDA    #$00    
       STA    $CE,X   
       BEQ    LF5D0   
LF590: LDY    $84     
       LDA    LF6E7,Y 
       AND    #$F0    
       STA    $CE,X   
       INC    $84     
       BNE    LF5D0   
LF59D: LDA    #$1F    
       STA    $CE,X   
       LDA    #$FF    
       STA    $BE,X   
       LDY    $89     
       LDA    SWCHB   
       AND    LF7FE,Y 
       TAY            
       BNE    LF5B4   
       LDA    #$0F    
       STA    $CE,X   
LF5B4: LDA    $87     
       CMP    #$04    
       BCC    LF5D0   
       LDA    #$F8    
       STA    $BE,X   
       LDA    #$FE    
       CPY    #$00    
       BNE    LF5C6   
       LDA    #$FC    
LF5C6: STA    $CE,X   
       LDA    $87     
       AND    #$03    
       TAY            
       SEC            
       BCS    LF5D7   
LF5D0: LDA    $CE,X   
       BEQ    LF5DE   
       LDY    $87     
       CLC            
LF5D7: ROR    $CE,X   
       ROL    $BE,X   
       DEY            
       BPL    LF5D7   
LF5DE: INC    $85     
       INX            
       TXA            
       AND    #$07    
       BNE    LF56E   
LF5E6: LDX    #$01    
LF5E8: LDA    $B0,X   
       STA    $AE,X   
       LDA    #$00    
       STA    AUDV0,X 
       LDY    $98     
       CPY    #$03    
       BCC    LF5FB   
       STA    RESMP0,X
       DEY            
       DEY            
       DEY            
LF5FB: BIT    $94     
       BPL    LF61A   
       LDA    $AA,X   
       BMI    LF61A   
       LDA    $98     
       CMP    #$01    
       BEQ    LF61A   
       LDA    #$06    
       STA    AUDV0,X 
       LDA    #$0F    
       STA    AUDC0,X 
       LDA    $9E,X   
       EOR    #$FF    
       LSR            
       LSR            
       LSR            
       STA    AUDF0,X 
LF61A: LDA    $9C,X   
       BMI    LF629   
       STA    AUDV0,X 
       LDA    LF788,Y 
       STA    AUDC0,X 
       STA    AUDF0,X 
       DEC    $9C,X   
LF629: LDA    $9A,X   
       BMI    LF644   
       ROR            
       LDA    LF78B,Y 
       STA    AUDC0,X 
       TYA            
       ROL            
       CPX    #$01    
       ROL            
       TAY            
       LDA    LF78E,Y 
       STA    AUDF0,X 
       LDA    #$08    
       STA    AUDV0,X 
       DEC    $9A,X   
LF644: LDA    $8A,X   
       AND    #$0F    
       STA    $84     
       ASL            
       ASL            
       CLC            
       ADC    $84     
       STA    $8C,X   
       LDA    $8A,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $84     
       LSR            
       LSR            
       CLC            
       ADC    $84     
       STA    $8E,X   
       DEX            
       BPL    LF5E8   
       LDA    $98     
       ASL            
       ASL            
       TAY            
       LDX    #$03    
       LDA    $94     
       EOR    #$FF    
       AND    $81     
       STA    $87     
       LDA    #$FF    
       STA    $86     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF683   
       LDA    #$0F    
       STA    $86     
       LDY    #$18    
LF683: LDA    LF721,Y 
       EOR    $87     
       AND    $86     
       STA    COLUP0,X
       INY            
       DEX            
       BPL    LF683   
       JMP    LF032   
LF693: SED            
       CLC            
       ADC    $8A,X   
       STA    $8A,X   
       CLD            
       BCS    LF6A0   
       CMP    #$99    
       BCC    LF6AA   
LF6A0: LDA    #$00    
       STA    $94     
       STA    $81     
       LDA    #$99    
       STA    $8A,X   
LF6AA: LDA    #$08    
       STA    $9A,X   
       RTS            

LF6AF: STA    WSYNC   
       PLA            
       PHA            
       LDA    $A6,X   
       STA    HMP0    
       AND    #$0F    
       TAY            
LF6BA: DEY            
       BPL    LF6BA   
       STA    RESP0   
       STA    WSYNC   
       PLA            
       PHA            
       LDA    $A7,X   
       STA    HMP1    
       AND    #$0F    
       TAY            
LF6CA: DEY            
       BPL    LF6CA   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF6D4: LDX    $89     
       LSR    $92,X   
       ROL            
       EOR    $92,X   
       LSR            
       LDA    $92,X   
       BCS    LF6E4   
       ORA    #$40    
       STA    $92,X   
LF6E4: LDX    $86     
       RTS            

LF6E7: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF719: .byte $02,$52,$02,$52
LF71D: .byte $00,$08,$20,$28
LF721: .byte $C4,$86,$36,$66,$0A,$88,$38,$C8,$0A,$C8,$88,$68,$78,$36,$E6,$B6
       .byte $74,$56,$A8,$E8,$32,$2A,$C8,$88,$08,$04,$00,$0E
LF73D: .byte $A8,$F8,$A8,$20,$20,$A8,$F8,$88,$00,$00,$00,$00,$40,$E0,$40,$00
       .byte $20,$70,$F8,$F8,$70,$20,$00,$00,$E0,$40,$40,$E0,$40,$00,$00,$00
       .byte $F8,$88,$F8,$70,$70,$D8,$88,$00,$90,$F0,$60,$F0,$F0,$90,$F0,$00
LF76D: .byte $10,$50,$90,$D0,$40,$C0,$11,$51,$91,$D1,$41,$C1,$12,$52,$02,$42
       .byte $13,$53,$03,$43,$04,$44,$84,$C4,$45,$85,$C5
LF788: .byte $0F,$02,$09
LF78B: .byte $04,$08,$0C
LF78E: .byte $09,$0C,$0F,$12,$04,$07,$0A,$0D,$0B,$0E,$11,$14
LF79A: .byte $99,$FF,$99,$18,$18,$DB,$FF,$C3,$28,$28,$28,$6C,$7C,$38,$28,$28
       .byte $3C,$66,$7E,$5A,$18,$5A,$7E,$42,$18,$99,$FF,$99,$18,$3C,$00,$00
       .byte $00,$00,$7E,$99,$18,$BD,$FF,$BD,$81,$81,$E7,$FF,$18,$FF,$C3,$FF
       .byte $80,$DB,$3D,$73,$78,$78,$CF,$C3,$48,$24,$16,$32,$37,$09,$04,$00
       .byte $3C,$7E,$18,$7E,$42,$00,$00,$00,$61,$67,$0D,$9C,$E8,$8C,$1E,$07
       .byte $80,$66,$19,$5C,$FE,$3C,$02,$04,$00,$24,$FF,$FF,$18,$FF,$C3,$FF
LF7FA: .byte $88,$44,$00,$F0
LF7FE: .byte $40,$80,$78,$D8,$A9,$00,$AA,$95,$00,$E8,$D0,$FB,$A9,$0E,$8D,$96
       .byte $02,$4C,$4E,$F2,$A9,$82,$85,$02,$85,$01,$85,$02,$85,$02,$85,$02
       .byte $85,$00,$85,$02,$85,$02,$A9,$00,$85,$02,$85,$00,$A9,$28,$8D,$96
       .byte $02,$4C,$B8,$F3,$E6,$80,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01,$85
       .byte $2C,$A9,$02,$85,$0A,$A5,$80,$29,$03,$85,$89,$A6,$83,$85,$02,$CA
       .byte $D0,$FB,$A5,$83,$C9,$07,$B0,$50,$86,$86,$86,$87,$A2,$06,$85,$02
       .byte $A5,$86,$85,$0E,$A4,$8E,$B9,$E7,$F6,$29,$F0,$85,$86,$A4,$8C,$B9
       .byte $E7,$F6,$29,$0F,$05,$86,$85,$86,$A5,$87,$85,$0E,$A4,$8F,$B9,$E7
       .byte $F6,$29,$F0,$85,$87,$A4,$8D,$B9,$E7,$F6,$25,$99,$85,$02,$05,$87
       .byte $85,$87,$A5,$86,$85,$0E,$CA,$F0,$0F,$E6,$8C,$E6,$8E,$E6,$8D,$E6
       .byte $8F,$A5,$87,$85,$0E,$4C,$5C,$F0,$86,$0E,$86,$84,$86,$86,$86,$0A
       .byte $A9,$70,$85,$0D,$A0,$D0,$84,$A4,$85,$02,$A6,$AF,$A5,$86,$85,$0E
       .byte $A5,$84,$85,$0F,$38,$98,$F5,$BA,$85,$88,$29,$F8,$F0,$16,$10,$05
       .byte $EA,$EA,$EA,$D0,$06,$A5,$AF,$49,$02,$85,$AF,$A9,$00,$85,$87,$85
       .byte $0E,$EA,$F0,$0E,$BD,$1D,$F7,$05,$88,$AA,$B5,$CE,$85,$87,$85,$0E
       .byte $B5,$BE,$85,$85,$85,$0F,$A6,$AE,$38,$98,$F5,$BA,$85,$88,$29,$F8
       .byte $F0,$16,$10,$05,$EA,$EA,$EA,$D0,$06,$A5,$AE,$49,$02,$85,$AE,$A9
       .byte $00,$85,$86,$85,$0E,$EA,$F0,$0E,$BD,$1D,$F7,$05,$88,$AA,$B5,$CE
       .byte $85,$86,$85,$0E,$B5,$BE,$85,$84,$85,$0F,$38,$98,$A6,$87,$86,$0E
       .byte $E5,$A2,$A6,$85,$86,$0F,$AA,$29,$F8,$F0,$07,$68,$A5,$88,$A9,$00
       .byte $F0,$07,$8A,$05,$AC,$AA,$BD,$9A,$F7,$85,$1B,$A5,$86,$85,$0E,$A5
       .byte $84,$85,$0F,$38,$98,$E5,$A3,$AA,$29,$F8,$F0,$07,$68,$A5,$88,$A9
       .byte $00,$F0,$07,$8A,$05,$AD,$AA,$BD,$9A,$F7,$85,$1C,$A2,$1D,$9A,$A5
       .byte $87,$85,$0E,$A5,$85,$85,$0F,$A6,$89,$B5,$38,$30,$02,$84,$A4,$38
       .byte $98,$E5,$90,$29,$FE,$08,$A5,$86,$85,$0E,$A5,$84,$85,$0F,$A2,$1E
       .byte $9A,$38,$98,$E5,$91,$29,$FE,$08,$68,$68,$68,$A5,$87,$85,$0E,$A5
       .byte $85,$85,$0F,$C8,$F0,$3E,$C0,$F2,$D0,$04,$24,$97,$30,$03,$4C,$B6
       .byte $F0,$85,$02,$A9,$FF,$85,$0E,$85,$0F,$A5,$A7,$85,$21,$29,$0F,$AA
       .byte $CA,$10,$FD,$85,$11,$85,$02,$A9,$F4,$85,$A2,$85,$A3,$A5,$A6,$85
       .byte $20,$29,$0F,$AA,$CA,$10,$FD,$85,$10,$A6,$AF,$A5,$86,$85,$02,$85
       .byte $2A,$4C,$BC,$F0,$84,$0D,$84,$0E,$84,$0F,$A9,$11,$24,$97,$30,$02
       .byte $A9,$13,$8D,$96,$02,$AD,$82,$02,$6A,$B0,$1E,$A9,$FF,$85,$94,$A9
       .byte $00,$85,$8A,$85,$8B,$A5,$92,$85,$93,$A9,$80,$85,$81,$A5,$80,$29
       .byte $03,$85,$80,$A9,$0F,$85,$99,$D0,$65,$A0,$01,$A5,$81,$25,$94,$C9
       .byte $F0,$90,$08,$A5,$80,$29,$30,$D0,$02,$A0,$0D,$84,$83,$A5,$80,$29
       .byte $3F,$D0,$08,$85,$82,$E6,$81,$D0,$02,$85,$94,$AD,$82,$02,$29,$02
       .byte $F0,$04,$85,$82,$D0,$4D,$24,$82,$30,$49,$A9,$FF,$85,$82,$E6,$95
       .byte $A5,$96,$85,$8A,$A2,$00,$86,$8B,$86,$99,$86,$94,$86,$80,$A5,$95
       .byte $C9,$1B,$90,$04,$86,$8A,$86,$95,$F8,$18,$A5,$8A,$69,$01,$85,$8A
       .byte $D8,$85,$96,$A6,$95,$BD,$6D,$F7,$85,$97,$29,$07,$85,$98,$A2,$03
       .byte $A9,$01,$95,$B6,$A9,$20,$95,$BA,$A9,$00,$95,$9E,$A9,$F4,$95,$A2
       .byte $CA,$10,$ED,$A2,$FF,$9A,$A6,$89,$D0,$1F,$24,$97,$70,$1B,$30,$19
       .byte $A5,$A5,$24,$32,$10,$0F,$18,$69,$04,$30,$0A,$A9,$D0,$A4,$98,$C0
       .byte $03,$D0,$02,$A9,$E0,$85,$A5,$85,$A4,$18,$A5,$A4,$49,$FF,$7D,$19
       .byte $F7,$A0,$00,$C9,$08,$90,$06,$C8,$38,$E9,$0F,$10,$F6,$49,$FF,$18
       .byte $69,$01,$0A,$0A,$0A,$0A,$85,$84,$98,$05,$84,$95,$A6,$A2,$00,$20
       .byte $AF,$F6,$A5,$89,$29,$01,$AA,$85,$89,$24,$97,$10,$04,$A9,$02,$95
       .byte $28,$A5,$94,$30,$03,$4C,$AE,$F3,$B5,$AA,$30,$28,$A9,$3F,$A4,$98
       .byte $C0,$03,$F0,$18,$A5,$97,$29,$C0,$05,$89,$F0,$0E,$AD,$80,$02,$49
       .byte $FF,$3D,$FA,$F7,$D0,$04,$D6,$9E,$10,$0A,$A9,$7F,$F6,$9E,$D5,$9E
       .byte $B0,$02,$95,$9E,$A5,$98,$C9,$03,$90,$4C,$D0,$06,$B5,$AA,$15,$32
       .byte $30,$44,$B5,$34,$10,$40,$8A,$A8,$B5,$BA,$C9,$D0,$90,$0C,$E9,$02
       .byte $D5,$90,$B0,$06,$69,$0A,$D5,$90,$B0,$02,$C8,$C8,$A5,$98,$C9,$05
       .byte $D0,$15,$B9,$B6,$00,$D0,$04,$95,$A0,$F0,$1B,$C9,$01,$F0,$04,$D5
       .byte $A0,$D0,$13,$49,$02,$95,$A0,$B9,$B6,$00,$20,$93,$F6,$A9,$00,$95
       .byte $90,$99,$BA,$00,$F0,$3A,$B5,$AA,$10,$05,$18,$69,$01,$D0,$31,$B5
       .byte $32,$10,$2D,$A5,$98,$C9,$02,$D0,$06,$B5,$9E,$C9,$0A,$90,$21,$A9
       .byte $00,$95,$9E,$95,$A0,$A9,$1F,$95,$9C,$AD,$82,$02,$3D,$FE,$F7,$F0
       .byte $0D,$F8,$38,$B5,$8A,$E9,$01,$D8,$B0,$02,$A9,$00,$95,$8A,$A9,$C0
       .byte $95,$AA,$AD,$84,$02,$D0,$FB,$4C,$12,$F0,$24,$97,$10,$1D,$A5,$80
       .byte $29,$02,$D0,$04,$A6,$89,$95,$28,$A2,$02,$20,$AF,$F6,$A9,$00,$24
       .byte $97,$50,$02,$A9,$E8,$85,$A2,$A9,$E8,$85,$A3,$A6,$89,$A5,$98,$C9
       .byte $03,$F0,$29,$C9,$02,$90,$4D,$D0,$15,$A9,$F4,$F5,$9E,$C9,$C9,$B0
       .byte $0B,$A9,$01,$20,$93,$F6,$A9,$00,$95,$9E,$A9,$F4,$95,$A2,$24,$97
       .byte $10,$32,$A5,$80,$29,$02,$D0,$2C,$A9,$F4,$D0,$2E,$A5,$94,$10,$2A
       .byte $B5,$90,$F0,$0E,$A5,$80,$29,$02,$D0,$22,$D6,$90,$B5,$90,$C9,$D0
       .byte $B0,$1A,$A5,$97,$29,$C0,$05,$89,$F0,$0A,$AD,$80,$02,$49,$FF,$3D
       .byte $FA,$F7,$F0,$08,$A9,$02,$95,$28,$B5,$A2,$95,$90,$A5,$98,$0A,$0A
       .byte $0A,$95,$AC,$A8,$C9,$28,$D0,$08,$B5,$A0,$C9,$03,$F0,$06,$D0,$0A
       .byte $B5,$AA,$10,$06,$18,$98,$69,$30,$95,$AC,$C0,$18,$F0,$02,$A0,$25
       .byte $94,$04,$B5,$AA,$10,$07,$C9,$E0,$B0,$03,$4C,$E6,$F5,$A9,$03,$25
       .byte $80,$AA,$86,$86,$A4,$89,$B5,$BA,$10,$6B,$B9,$9E,$00,$4A,$4A,$4A
       .byte $4A,$D0,$02,$A9,$01,$85,$88,$18,$75,$BA,$B0,$43,$95,$BA,$A5,$98
       .byte $C9,$01,$F0,$38,$C9,$02,$F0,$08,$A5,$88,$25,$80,$29,$04,$F0,$2C
       .byte $F6,$B2,$A4,$86,$BE,$1D,$F7,$B9,$B2,$00,$30,$09,$C9,$0A,$90,$12
       .byte $A9,$F6,$99,$B2,$00,$18,$76,$BE,$36,$CE,$E8,$8A,$29,$07,$D0,$F6
       .byte $F0,$0A,$76,$CE,$36,$BE,$E8,$8A,$29,$07,$D0,$F6,$4C,$E6,$F5,$95
       .byte $BA,$24,$94,$10,$0D,$A5,$98,$C9,$02,$B0,$07,$A6,$89,$A9,$01,$20
       .byte $93,$F6,$4C,$E6,$F5,$18,$69,$B0,$95,$BA,$E0,$02,$B0,$0C,$B5,$BC
       .byte $C9,$D4,$B0,$19,$C9,$B0,$B0,$0E,$90,$13,$B5,$B8,$C9,$D4,$90,$06
       .byte $A5,$97,$29,$10,$F0,$07,$A9,$00,$95,$BA,$4C,$E6,$F5,$96,$B0,$A5
       .byte $98,$0A,$0A,$0A,$85,$85,$C9,$20,$F0,$28,$90,$38,$20,$D4,$F6,$29
       .byte $03,$D0,$19,$A9,$20,$85,$85,$B9,$A0,$00,$C9,$03,$F0,$09,$A9,$08
       .byte $85,$85,$A9,$01,$99,$A0,$00,$95,$B6,$4C,$52,$F5,$A9,$00,$95,$B6
       .byte $F0,$12,$20,$D4,$F6,$29,$06,$D0,$02,$A9,$02,$95,$B6,$0A,$0A,$18
       .byte $75,$B6,$85,$84,$20,$D4,$F6,$85,$88,$29,$07,$85,$87,$95,$B2,$A8
       .byte $A5,$88,$29,$10,$F0,$06,$C8,$98,$49,$FF,$95,$B2,$BD,$1D,$F7,$AA
       .byte $A4,$85,$B9,$3D,$F7,$95,$CE,$A9,$00,$95,$BE,$A5,$98,$C9,$01,$F0
       .byte $1E,$C9,$04,$D0,$4D,$8A,$29,$07,$C9,$05,$90,$06,$A9,$00,$95,$CE
       .byte $F0,$40,$A4,$84,$B9,$E7,$F6,$29,$F0,$95,$CE,$E6,$84,$D0,$33,$A9
       .byte $1F,$95,$CE,$A9,$FF,$95,$BE,$A4,$89,$AD,$82,$02,$39,$FE,$F7,$A8
       .byte $D0,$04,$A9,$0F,$95,$CE,$A5,$87,$C9,$04,$90,$16,$A9,$F8,$95,$BE
       .byte $A9,$FE,$C0,$00,$D0,$02,$A9,$FC,$95,$CE,$A5,$87,$29,$03,$A8,$38
       .byte $B0,$07,$B5,$CE,$F0,$0A,$A4,$87,$18,$76,$CE,$36,$BE,$88,$10,$F9
       .byte $E6,$85,$E8,$8A,$29,$07,$D0,$88,$A2,$01,$B5,$B0,$95,$AE,$A9,$00
       .byte $95,$19,$A4,$98,$C0,$03,$90,$05,$95,$28,$88,$88,$88,$24,$94,$10
       .byte $1B,$B5,$AA,$30,$17,$A5,$98,$C9,$01,$F0,$11,$A9,$06,$95,$19,$A9
       .byte $0F,$95,$15,$B5,$9E,$49,$FF,$4A,$4A,$4A,$95,$17,$B5,$9C,$30,$0B
       .byte $95,$19,$B9,$88,$F7,$95,$15,$95,$17,$D6,$9C,$B5,$9A,$30,$17,$6A
       .byte $B9,$8B,$F7,$95,$15,$98,$2A,$E0,$01,$2A,$A8,$B9,$8E,$F7,$95,$17
       .byte $A9,$08,$95,$19,$D6,$9A,$B5,$8A,$29,$0F,$85,$84,$0A,$0A,$18,$65
       .byte $84,$95,$8C,$B5,$8A,$29,$F0,$4A,$4A,$85,$84,$4A,$4A,$18,$65,$84
       .byte $95,$8E,$CA,$10,$85,$A5,$98,$0A,$0A,$A8,$A2,$03,$A5,$94,$49,$FF
       .byte $25,$81,$85,$87,$A9,$FF,$85,$86,$AD,$82,$02,$29,$08,$D0,$06,$A9
       .byte $0F,$85,$86,$A0,$18,$B9,$21,$F7,$45,$87,$25,$86,$95,$06,$C8,$CA
       .byte $10,$F3,$4C,$32,$F0,$F8,$18,$75,$8A,$95,$8A,$D8,$B0,$04,$C9,$99
       .byte $90,$0A,$A9,$00,$85,$94,$85,$81,$A9,$99,$95,$8A,$A9,$08,$95,$9A
       .byte $60,$85,$02,$68,$48,$B5,$A6,$85,$20,$29,$0F,$A8,$88,$10,$FD,$85
       .byte $10,$85,$02,$68,$48,$B5,$A7,$85,$21,$29,$0F,$A8,$88,$10,$FD,$85
       .byte $11,$85,$02,$85,$2A,$60,$A6,$89,$56,$92,$2A,$55,$92,$4A,$B5,$92
       .byte $B0,$04,$09,$40,$95,$92,$A6,$86,$60,$0E,$0A,$0A,$0A,$0E,$22,$22
       .byte $22,$22,$22,$EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE
       .byte $22,$22,$EE,$88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22
       .byte $22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$02,$52,$02,$52,$00
       .byte $08,$20,$28,$C4,$86,$36,$66,$0A,$88,$38,$C8,$0A,$C8,$88,$68,$78
       .byte $36,$E6,$B6,$74,$56,$A8,$E8,$32,$2A,$C8,$88,$08,$04,$00,$0E,$A8
       .byte $F8,$A8,$20,$20,$A8,$F8,$88,$00,$00,$00,$00,$40,$E0,$40,$00,$20
       .byte $70,$F8,$F8,$70,$20,$00,$00,$E0,$40,$40,$E0,$40,$00,$00,$00,$F8
       .byte $88,$F8,$70,$70,$D8,$88,$00,$90,$F0,$60,$F0,$F0,$90,$F0,$00,$10
       .byte $50,$90,$D0,$40,$C0,$11,$51,$91,$D1,$41,$C1,$12,$52,$02,$42,$13
       .byte $53,$03,$43,$04,$44,$84,$C4,$45,$85,$C5,$0F,$02,$09,$04,$08,$0C
       .byte $09,$0C,$0F,$12,$04,$07,$0A,$0D,$0B,$0E,$11,$14,$99,$FF,$99,$18
       .byte $18,$DB,$FF,$C3,$28,$28,$28,$6C,$7C,$38,$28,$28,$3C,$66,$7E,$5A
       .byte $18,$5A,$7E,$42,$18,$99,$FF,$99,$18,$3C,$00,$00,$00,$00,$7E,$99
       .byte $18,$BD,$FF,$BD,$81,$81,$E7,$FF,$18,$FF,$C3,$FF,$80,$DB,$3D,$73
       .byte $78,$78,$CF,$C3,$48,$24,$16,$32,$37,$09,$04,$00,$3C,$7E,$18,$7E
       .byte $42,$00,$00,$00,$61,$67,$0D,$9C,$E8,$8C,$1E,$07,$80,$66,$19,$5C
       .byte $FE,$3C,$02,$04,$00,$24,$FF,$FF,$18,$FF,$C3,$FF,$88,$44,$00,$F0
       .byte $40,$80
