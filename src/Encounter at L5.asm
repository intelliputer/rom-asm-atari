; Disassembly of roms/Encounter at L5.bin
; Disassembled Tue Oct  6 15:21:10 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Encounter at L5.bin
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
RESP0   =  $10
RESP1   =  $11
RESM0   =  $12
RESM1   =  $13
RESBL   =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
GRP0    =  $1B
GRP1    =  $1C
ENAM0   =  $1D
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
HMBL    =  $24
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
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
       DEX            
       BNE    LF005   
       JMP    LFAB0   
LF00D: LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDX    #$FF    
       TXS            
       JMP    LF518   
LF02A: LDA    INTIM   
       BNE    LF02A   
       STA    VBLANK  
       STA    WSYNC   
       LDX    #$01    
       STX    NUSIZ0  
       STX    NUSIZ1  
       LDA    #$14    
       STA    HMP1    
       AND    #$0F    
       TAY            
LF040: DEY            
       BPL    LF040   
       STA    RESP0   
       STA    RESP1   
       LDY    #$08    
LF049: STA    WSYNC   
       STA    HMOVE   
       LDA    ($F2),Y 
       STA    GRP0    
       LDA    ($F4),Y 
       STA    GRP1    
       LDA    $AA     
       LDA    $AA     
       LDA    $AA     
       LDA    $AA     
       LDA    #$00    
       LDA    ($F8),Y 
       TAX            
       LDA    ($F6),Y 
       STA    GRP0    
       STX    GRP1    
       STA    HMCLR   
       DEY            
       BPL    LF049   
       INY            
       STA    WSYNC   
       STY    GRP0    
       STY    GRP1    
       LDX    #$01    
LF076: LDA    $E2,X   
       EOR    #$FF    
       STA    $F8,X   
       CLC            
       ADC    COLUP1  
       STA    $FA,X   
       DEX            
       BPL    LF076   
       BMI    LF08E   
LF086: JSR    LF9F9   
       TXA            
       BEQ    LF0A2   
       BNE    LF0B6   
LF08E: STA    WSYNC   
       LDX    #$00    
       LDA    $EA     
       BEQ    LF086   
       LDA    $E7     
       STA    HMM0    
       AND    #$0F    
       TAY            
LF09D: DEY            
       BPL    LF09D   
       STA    RESM0   
LF0A2: STA    WSYNC   
       LDX    #$01    
       LDA    $EB     
       BEQ    LF086   
       LDA    $E7     
       STA    HMM1    
       AND    #$0F    
       TAY            
LF0B1: DEY            
       BPL    LF0B1   
       STA    RESM1   
LF0B6: STA    WSYNC   
       LDA    #$21    
       STA    CTRLPF  
       NOP            
       LDA    $E9     
       STA    HMBL    
       AND    #$0F    
       TAY            
LF0C4: DEY            
       BPL    LF0C4   
       STA    RESBL   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $81     
       BNE    LF0D3   
       BEQ    LF0D5   
LF0D3: LDA    #$EE    
LF0D5: STA    COLUPF  
       STY    $CC     
       STY    $CD     
       STY    ENABL   
       STA    WSYNC   
       STA    HMCLR   
       LDX    #$04    
LF0E3: DEX            
       STA    WSYNC   
       BNE    LF0E3   
       STX    ENABL   
       LDA    $81     
       BNE    LF0F0   
       BEQ    LF0F2   
LF0F0: LDA    #$28    
LF0F2: STA    COLUPF  
       LDX    $8E     
       STX    $FC     
       LDA    $9F,X   
       BPL    LF107   
       LDA    $AF,X   
       BEQ    LF112   
       LDA    LFCC0   
       LDY    #$5C    
       BNE    LF112   
LF107: LDA    LFCB8   
       LDY    $81     
       BNE    LF110   
       BEQ    LF112   
LF110: LDY    #$8C    
LF112: STY    COLUP0  
       STA    $F4     
       STA    WSYNC   
       LDA    #$01    
       STA    $EE     
       NOP            
       LDA    $C0     
       STA    HMBL    
       AND    #$0F    
       TAY            
LF124: DEY            
       BPL    LF124   
       STA    RESBL   
       STA    WSYNC   
       STA    WSYNC   
       NOP            
       LDY    #$FB    
       STY    $F5     
       LDA    $C3     
       STA    HMP1    
       AND    #$0F    
       TAY            
LF139: DEY            
       BPL    LF139   
       STA    RESP1   
       STA    WSYNC   
       LDA    $8F,X   
       STA    $F2     
       LDA    $F2     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF14B: DEY            
       BPL    LF14B   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    #$10    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    $81     
       BNE    LF160   
       BEQ    LF162   
LF160: LDA    #$3A    
LF162: LDY    $C5     
       BEQ    LF168   
       LDA    #$EE    
LF168: STA    COLUP1  
       LDA    #$11    
       STA    CTRLPF  
       LDA    #$96    
       STA    $F6     
       LDA    $9F,X   
       AND    #$0F    
       STA    $F3     
       CLC            
       DEX            
       BPL    LF17E   
       LDX    #$08    
LF17E: STX    $FC     
       LDA    $8F,X   
       STA    $F2     
       LDX    #$00    
       STX    COLUBK  
       STA    HMCLR   
       STX    $F7     
       STA    CXCLR   
       STA    WSYNC   
       LDA    $E2     
       CMP    $E3     
       BCS    LF198   
       LDX    #$01    
LF198: DEC    $F6     
       LDY    $BB     
       LDA.wy $0008,Y 
       BMI    LF1A3   
       INC    $F7     
LF1A3: LDA    $F6     
       ADC    $F8,X   
       SEC            
       SBC    #$F8    
       TAY            
       BCC    LF1B0   
       LSR            
       STA    ENAM0,X 
LF1B0: DEC    $F3     
       LDA    $F3     
       CLC            
       STA    WSYNC   
       ADC    #$07    
       BCS    LF1C6   
       BMI    LF1CE   
       TYA            
       BPL    LF1CB   
       TXA            
       EOR    #$01    
       TAX            
       BCC    LF198   
LF1C6: TAY            
       LDA    ($F4),Y 
       STA    GRP0    
LF1CB: CLC            
       BCC    LF198   
LF1CE: LDY    $F6     
       DEY            
       CPY    #$3A    
       BCS    LF1D8   
       JMP    LF259   
LF1D8: TYA            
       ADC    $F8,X   
       SEC            
       SBC    #$F8    
       BCC    LF1E3   
       LSR            
       STA    ENAM0,X 
LF1E3: LDA    $FC     
       BIT    VSYNC   
       BVC    LF1EB   
       STA    $CC     
LF1EB: BIT    VBLANK  
       BPL    LF1F1   
       STA    $CD     
LF1F1: STA    CXCLR   
       DEY            
       STA    WSYNC   
       TXS            
       DEY            
       STY    $F6     
       LDA    $F2     
       STA    HMP0    
       AND    #$0F    
       TAY            
LF201: DEY            
       BPL    LF201   
       STA    RESP0   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $F6     
       ADC    $F8,X   
       SEC            
       SBC    #$F8    
       BCC    LF216   
       LSR            
       STA    ENAM0,X 
LF216: LDX    $FC     
       LDY    $EE     
       LDA    $9F,X   
       STA    HMCLR   
       BPL    LF231   
       AND    #$0F    
       STA    $F3     
       LDA    $AF,X   
       BEQ    LF236   
       LDA    LFCC0,Y 
       STA    $F4     
       LDA    #$5C    
       BNE    LF242   
LF231: STA    $F3     
       LDA    LFCB8,Y 
LF236: STA    $F4     
       LDA    $81     
       BNE    LF240   
       LDA    #$82    
       BNE    LF242   
LF240: LDA    #$8C    
LF242: STA    COLUP0  
       INY            
       STY    $EE     
       DEX            
       STA    WSYNC   
       BPL    LF24E   
       LDX    #$08    
LF24E: STX    $FC     
       LDA    $8F,X   
       STA    $F2     
       TSX            
       CLC            
       JMP    LF198   
LF259: TXS            
       LDX    $FC     
       BIT    VSYNC   
       BVC    LF262   
       STX    $CC     
LF262: BIT    VBLANK  
       BPL    LF268   
       STX    $CD     
LF268: INX            
       CPX    #$09    
       BNE    LF26F   
       LDX    #$00    
LF26F: STY    $BA     
       LDA    $9F,X   
       BMI    LF27E   
       LDX    $8E     
       LDY    $9F,X   
       LDA    LFCC7,Y 
       STA    $BA     
LF27E: TSX            
LF27F: STA    WSYNC   
       DEC    $F6     
       BEQ    LF2E0   
       LDY    $BB     
       LDA.wy $0008,Y 
       BMI    LF28E   
       INC    $F7     
LF28E: DEC    $BA     
       LDA    $BA     
       CLC            
       ADC    #$08    
       BCC    LF29D   
       TAY            
       LDA    LFC8A,Y 
       STA    GRP0    
LF29D: LDA    $F6     
       CLC            
       ADC    $F0     
       SEC            
       SBC    $C6     
       BCC    LF2AC   
       TAY            
       LDA    ($AC),Y 
       STA    GRP1    
LF2AC: LDA    $81     
       BNE    LF2B2   
       BEQ    LF2B4   
LF2B2: LDA    #$1F    
LF2B4: STA    COLUP0  
       DEC    $F6     
       BEQ    LF2E0   
       LDY    $BB     
       LDA.wy $0008,Y 
       BMI    LF2C3   
       INC    $F7     
LF2C3: LDA    $F6     
       CLC            
       ADC    $C1     
       SEC            
       SBC    #$F8    
       BCC    LF2D0   
       LSR            
       STA    ENABL   
LF2D0: LDA    $F6     
       CLC            
       ADC    $F8,X   
       SEC            
       SBC    #$F8    
       BCC    LF2DD   
       LSR            
       STA    ENAM0,X 
LF2DD: JMP    LF27F   
LF2E0: BIT    VSYNC   
       BMI    LF2E8   
       BIT    VBLANK  
       BVC    LF2F0   
LF2E8: LDA    $C5     
       BNE    LF2F0   
       LDX    #$20    
       STX    $C5     
LF2F0: LDY    $C9     
       LDA    LFD21,Y 
       AND    $AB     
       BNE    LF2FB   
       DEC    $AA     
LF2FB: LDY    $CB     
       STY    $FC     
       STA    CXCLR   
       STA    WSYNC   
       LDA    #$04    
       STA    $F2     
       NOP            
       LDA    $8C     
       STA    HMP1    
       AND    #$0F    
       TAX            
LF30F: DEX            
       BPL    LF30F   
       STA    RESP1   
       STA    WSYNC   
       STA    HMOVE   
       LDA    $81     
       BNE    LF322   
       STA    $F2     
       STA    $FC     
       BEQ    LF324   
LF322: LDA    #$1F    
LF324: STA    COLUP1  
       LDA    LFCFE   
       AND    $EC     
       STA    GRP1    
       LDY    #$04    
       CLC            
LF330: STA    WSYNC   
       LDA    $FC     
       ADC    #$04    
       STA    COLUBK  
       LDA    LFCF9,Y 
       AND    $EC     
       STA    GRP1    
       STA    HMCLR   
       LDX    $FC     
       DEY            
       STA    WSYNC   
       STX    COLUBK  
       LDA    LFCF9,Y 
       AND    $EC     
       STA    GRP1    
       INX            
       INX            
       LDA    $81     
       BNE    LF357   
       LDX    #$00    
LF357: STX    $FC     
       DEY            
       CLC            
       BNE    LF330   
       STA    WSYNC   
       LDA    LFCF9   
       AND    $EC     
       STA    GRP1    
       STY    GRP0    
       STY    ENABL   
       STA    WSYNC   
       STY    GRP1    
       LDA    $C5     
       CMP    #$20    
       BNE    LF384   
       LDA    #$05    
       STA    $C7     
       LDA    #$10    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
LF384: TXA            
       CLC            
       ADC    #$04    
       STA    COLUBK  
       LDY    #$03    
LF38C: STA    WSYNC   
       STX    COLUBK  
       DEY            
       BPL    LF38C   
       INX            
       INX            
       LDA    $81     
       BNE    LF39B   
       LDX    #$00    
LF39B: STX    $FC     
       STA    WSYNC   
       TXA            
       CLC            
       ADC    #$04    
       STA    COLUBK  
       LDY    $85     
       LDA    LFCA2,Y 
       STA    NUSIZ1  
       STA    RESP1   
       LDY    #$07    
LF3B0: STA    WSYNC   
       STX    COLUBK  
       TXS            
       LDX    $85     
       BPL    LF3BA   
       INX            
LF3BA: TXA            
       BEQ    LF3C0   
       LDA    LFCF8,Y 
LF3C0: STA    GRP1    
       TSX            
       DEY            
       BPL    LF3B0   
       INX            
       INX            
       LDA    $81     
       BNE    LF3CE   
       LDX    #$00    
LF3CE: STX    $FC     
       STA    WSYNC   
       TXA            
       CLC            
       ADC    #$04    
       STA    COLUBK  
       LDA    #$00    
       STA    GRP1    
       TXS            
       LDY    #$A0    
       LDA    $CA     
       BNE    LF3F0   
       BIT    COLUP1  
       BPL    LF3F0   
       STY    $CA     
       LDX    $85     
       BMI    LF3F0   
       DEX            
       STX    $85     
LF3F0: LDA    $CA     
       BNE    LF401   
       BIT    RSYNC   
       BVC    LF401   
       STY    $CA     
       LDX    $85     
       BMI    LF401   
       DEX            
       STX    $85     
LF401: TSX            
       STA    WSYNC   
       STX    COLUBK  
       LDA    $BA     
       CMP    #$03    
       BNE    LF422   
       LDA    $B8     
       BNE    LF422   
       LDA    #$00    
       STA    $B9     
       STA    $EF     
       LDA    #$80    
       STA    $A8     
       LDA    #$2C    
       STA    $C8     
       LDA    #$FF    
       STA    $B8     
LF422: STA    WSYNC   
       STX    COLUBK  
       LDA    $AA     
       CMP    #$3D    
       BNE    LF43E   
       LDA    #$00    
       STA    $EF     
       STA    $B9     
       LDA    #$40    
       STA    $A8     
       LDA    #$40    
       STA    $C8     
       LDA    #$FF    
       STA    $B8     
LF43E: STA    WSYNC   
       STX    COLUBK  
       LDA    $CE     
       BEQ    LF458   
       LDA    #$00    
       STA    $EF     
       STA    $B9     
       LDA    #$C0    
       STA    $A8     
       LDA    #$14    
       STA    $C8     
       LDA    #$FF    
       STA    $B8     
LF458: STA    WSYNC   
       STX    COLUBK  
       LDA    $CA     
       CMP    #$9F    
       BNE    LF474   
       LDA    #$00    
       STA    $B9     
       STA    $EF     
       LDA    #$00    
       STA    $A8     
       LDA    #$30    
       STA    $C8     
       LDA    #$FF    
       STA    $B8     
LF474: STA    WSYNC   
       STX    COLUBK  
       LDA    $C7     
       BEQ    LF484   
       CMP    #$06    
       BPL    LF484   
       DEC    $C7     
       BPL    LF4BF   
LF484: LDA    $E2     
       BNE    LF494   
       LDA    $E3     
       BNE    LF494   
       LDA    #$00    
       STA    AUDV1   
       STA    $C7     
       BEQ    LF4BF   
LF494: LDA    $C7     
       BEQ    LF4A9   
       CMP    #$16    
       BEQ    LF4A9   
       INC    $C7     
       INC    $C7     
       LDA    $C7     
       SEC            
       SBC    #$04    
       STA    AUDF1   
       BNE    LF4BF   
LF4A9: STA    WSYNC   
       STX    COLUBK  
       LDA    #$06    
       STA    $C7     
       LDA    #$02    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$04    
       STA    AUDV1   
       BNE    LF4C3   
LF4BF: STA    WSYNC   
       STX    COLUBK  
LF4C3: STA    WSYNC   
       STX    COLUBK  
       LDA    $B8     
       BEQ    LF4D1   
       LDA    $B9     
       BEQ    LF4D4   
       DEC    $B9     
LF4D1: JMP    LF508   
LF4D4: LDA    $B8     
       BEQ    LF4E4   
       LDY    $EF     
       CPY    $C8     
       BNE    LF4E7   
       LDA    #$00    
       STA    $B8     
       STA    AUDV0   
LF4E4: JMP    LF508   
LF4E7: STA    WSYNC   
       STX    COLUBK  
       LDA    ($A8),Y 
       STA    $B9     
       INY            
       LDA    ($A8),Y 
       STA    AUDC0   
       INY            
       LDA    ($A8),Y 
       STA    AUDF0   
       INY            
       LDA    ($A8),Y 
       STA    AUDV0   
       CLC            
       LDA    $EF     
       ADC    #$04    
       STA    $EF     
       JMP    LF50C   
LF508: STA    WSYNC   
       STX    COLUBK  
LF50C: LDY    #$0E    
LF50E: STA    WSYNC   
       STX    COLUBK  
       DEY            
       BPL    LF50E   
       JMP    LF00D   
LF518: INC    $AB     
       LDY    #$C0    
       LDA    SWCHB   
       STA    $FC     
       LSR            
       BCS    LF548   
       LDX    #$01    
       BIT    $FC     
       BMI    LF52E   
       BVS    LF52D   
       INX            
LF52D: INX            
LF52E: STX    $BE     
       LDA    #$C0    
       STA    $CA     
       LDA    #$00    
       STA    $8A     
       STA    $86     
       STA    $88     
       STA    $84     
       STA    AUDV0   
       STA    AUDV1   
       STA    $C7     
       STA    $B8     
       BEQ    LF569   
LF548: LSR            
       BCS    LF587   
       LDA    $BD     
       BEQ    LF563   
       LDX    $BC     
       INX            
       CPX    #$1A    
       BNE    LF558   
       LDX    #$00    
LF558: STX    $BC     
       LDA    LFD58,X 
       STA    $84     
       LDX    #$FF    
       STX    $85     
LF563: STY    $CA     
       LDA    #$00    
       STA    $BD     
LF569: STA    $83     
       STA    $87     
       STA    $BB     
       LDY    #$FF    
       STY    $CC     
       STY    $CD     
       STY    $AE     
       LDA    #$4B    
       STA    $81     
       LDA    #$03    
       STA    $89     
       STA    $85     
       LDA    #$D2    
       STA    $CB     
       BNE    LF589   
LF587: STY    $BD     
LF589: DEC    $9A     
       BNE    LF5E8   
       LDA    $BE     
       STA    $9A     
       LDX    $8E     
       LDA    $9F,X   
       CLC            
       ADC    #$01    
       STA    $9F,X   
       AND    #$0F    
       CMP    #$0B    
       BNE    LF5E8   
       LDA    #$01    
       STA    $9F,X   
       INX            
       CPX    #$09    
       BNE    LF5AB   
       LDX    #$00    
LF5AB: STX    $8E     
       LDA    #$00    
       STA    $9F,X   
       LSR    $80     
       LDY    $8D     
       LDA    LFF00,Y 
       STA    $8F,X   
       ASL            
       ASL            
       ASL            
       ASL            
       BCC    LF5C6   
       LDA    $80     
       ORA    #$80    
       STA    $80     
LF5C6: DEC    $8D     
       BNE    LF5CE   
       LDA    #$EF    
       STA    $8D     
LF5CE: INX            
       CPX    #$09    
       BNE    LF5D5   
       LDX    #$00    
LF5D5: LDA    #$F5    
       STA    $9F,X   
       STX    $EE     
       INX            
       CPX    #$09    
       BNE    LF5E2   
       LDX    #$00    
LF5E2: LDA    $8F,X   
       LDX    $EE     
       STA    $8F,X   
LF5E8: LDA    $AB     
       AND    #$03    
       BNE    LF63C   
       LDA    $80     
       STA    $FC     
       LDX    $8E     
       LDY    #$07    
LF5F6: STY    $EE     
       LDA    $8F,X   
       TAY            
       AND    #$0F    
       STA    $F3     
       TYA            
       AND    #$F0    
       ASL    $80     
       BCC    LF612   
       CMP    #$80    
       BNE    LF60C   
       INC    $F3     
LF60C: SEC            
       SBC    #$10    
       JMP    LF61B   
LF612: CMP    #$70    
       BNE    LF618   
       DEC    $F3     
LF618: CLC            
       ADC    #$10    
LF61B: ORA    $F3     
       STA    $8F,X   
       DEX            
       BPL    LF624   
       LDX    #$08    
LF624: LDY    $EE     
       DEY            
       BPL    LF5F6   
       STX    $EE     
       INX            
       CPX    #$09    
       BNE    LF632   
       LDX    #$00    
LF632: LDA    $8F,X   
       LDX    $EE     
       STA    $8F,X   
       LDA    $FC     
       STA    $80     
LF63C: LDX    #$01    
LF63E: LDY    $CC,X   
       INY            
       BEQ    LF685   
       CPY    #$09    
       BNE    LF649   
       LDY    #$00    
LF649: LDA.wy $009F,Y 
       BMI    LF685   
       ORA    #$80    
       STA.wy $009F,Y 
       LDA    #$00    
       STA    $E4,X   
       STA    $DE,X   
       LDA    #$05    
       STA    $C7     
       LDA    #$10    
       STA    AUDF1   
       LDA    #$08    
       STA    AUDC1   
       LDA    #$0F    
       STA    AUDV1   
       LDA    #$20    
       STA.wy $00AF,Y 
       STY    $FC     
       LDA    $8E     
       SEC            
       SBC    $FC     
       BCS    LF67E   
       LDA    #$08    
       SEC            
       SBC    $FC     
       ADC    $8E     
LF67E: TAY            
       LDA    LFD00,Y 
       JSR    LFA25   
LF685: DEX            
       BPL    LF63E   
       LDA    $C5     
       CMP    #$20    
       BNE    LF693   
       LDA    #$10    
       JSR    LFA25   
LF693: LDX    #$08    
LF695: LDA    $AF,X   
       BEQ    LF69B   
       DEC    $AF,X   
LF69B: DEX            
       BPL    LF695   
       LDA    $CA     
       BNE    LF6BD   
       LDA    #$06    
       CMP    $AA     
       BNE    LF6BD   
       LDX    #$A0    
       STX    $CA     
       LDY    $C9     
       LDA    LFD2E,Y 
       STA    $AA     
       LDX    $85     
       BMI    LF6BA   
       DEX            
       STX    $85     
LF6BA: JMP    LF802   
LF6BD: LDA    #$90    
       SEC            
       SBC    $F7     
       STA    $F7     
       CMP    #$0B    
       BCS    LF6CE   
       LDA    #$0B    
       STA    $F7     
       BNE    LF6D6   
LF6CE: CMP    #$90    
       BCC    LF6D6   
       LDA    #$90    
       STA    $F7     
LF6D6: SEC            
       SBC    $8B     
       BCS    LF6E0   
       LDA    $8B     
       SEC            
       SBC    $F7     
LF6E0: SBC    #$04    
       BPL    LF6E8   
       LDA    $8B     
       STA    $F7     
LF6E8: LDA    $F7     
       STA    $8B     
       JSR    LF9E5   
       STA    $FC     
       LDA    SWCHA   
       LDY    $BB     
       BEQ    LF6F9   
       ASL            
LF6F9: STA    $FD     
       LDA    $FD     
       BMI    LF70B   
       LDA    #$4B    
       STA    $81     
       LDA    #$FF    
       STA    $EC     
       STA    $ED     
       BNE    LF73A   
LF70B: LDA    $81     
       BEQ    LF715   
       LDA    $AB     
       BNE    LF715   
       DEC    $81     
LF715: LDA    $EC     
       BEQ    LF721   
       LDA    $ED     
       BEQ    LF72A   
       LDA    #$40    
       STA    $ED     
LF721: LDX    #$FF    
       DEC    $ED     
       BEQ    LF728   
       INX            
LF728: STX    $EC     
LF72A: LDA    $F7     
       STA    $E6     
       SEC            
       SBC    #$05    
       JSR    LF9E5   
       STA    $8C     
       LDA    $FC     
       STA    $E7     
LF73A: LDA    $F7     
       STA    $E8     
       LDA    $FC     
       STA    $E9     
       LDX    #$01    
LF744: LDA    #$00    
       STA    $E0,X   
       STA    $EA,X   
       LDA    $E4,X   
       BEQ    LF751   
       JMP    LF7B9   
LF751: LDA    $CA     
       BNE    LF759   
       LDA    $FD     
       BPL    LF75C   
LF759: JMP    LF7E0   
LF75C: TXA            
       EOR    #$01    
       TAY            
       LDA.wy $00DE,Y 
       BEQ    LF768   
       JMP    LF7E0   
LF768: LDY    $CC,X   
       INY            
       BNE    LF7E0   
       LDA    #$0F    
       STA    $DE,X   
       STA    $E4,X   
       LDA    #$00    
       STA    $E2,X   
       LDA    $E8     
       LDY    #$00    
       SEC            
       SBC    $E6     
       BCS    LF787   
       LDY    #$FF    
       LDA    $E6     
       SEC            
       SBC    $E8     
LF787: STA    $D2,X   
       STY    $D4,X   
       SEC            
       SBC    #$97    
       CLC            
       ADC    $D2,X   
       STA    $D6,X   
       LDA    #$FF    
       ADC    #$00    
       STA    $D8,X   
       LDA    $D6,X   
       SEC            
       SBC    #$97    
       STA    $DA,X   
       LDA    $D8,X   
       SBC    #$00    
       STA    $98,X   
       LDA    #$97    
       STA    $DC,X   
       LDA    $D2,X   
       LDY    #$00    
       STY    $D0,X   
       ASL            
       STA    $D2,X   
       BCC    LF7B9   
       LDA    #$01    
       STA    $D0,X   
LF7B9: LDA    #$08    
       STA    $CF     
LF7BD: DEC    $CF     
       BEQ    LF7FA   
       LDY    $D8,X   
       BMI    LF7EA   
       CLC            
       LDA    $D6,X   
       ADC    $DA,X   
       STA    $D6,X   
       LDA    $D8,X   
       ADC    $98,X   
       STA    $D8,X   
       INC    $E0,X   
LF7D4: INC    $E2,X   
       DEC    $DC,X   
       BNE    LF7BD   
       LDA    #$00    
       STA    $E4,X   
       STA    $DE,X   
LF7E0: LDA    #$00    
       STA    $E2,X   
       LDA    #$FF    
       STA    $EA,X   
       BNE    LF7FC   
LF7EA: CLC            
       LDA    $D6,X   
       ADC    $D2,X   
       STA    $D6,X   
       LDA    $D8,X   
       ADC    $D0,X   
       STA    $D8,X   
       JMP    LF7D4   
LF7FA: DEC    $DE,X   
LF7FC: DEX            
       BMI    LF802   
       JMP    LF744   
LF802: LDA    $83     
       STA    $83     
       LDA    $84     
       STA    $84     
       LDA    $AE     
       BMI    LF83E   
       BNE    LF822   
       LDA    #$78    
       STA    $F2     
       LDA    #$81    
       STA    $F4     
       LDA    #$8A    
       STA    $F6     
       LDA    #$93    
       STA    $F8     
       BNE    LF832   
LF822: LDA    #$9C    
       STA    $F2     
       LDA    #$A5    
       STA    $F4     
       LDA    #$AE    
       STA    $F6     
       LDA    #$B7    
       STA    $F8     
LF832: LDA    #$FD    
       STA    $F3     
       STA    $F5     
       STA    $F7     
       STA    $F9     
       BNE    LF881   
LF83E: LDA    #$04    
       STA    $FC     
       LDX    #$01    
LF844: LDA    $83,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LFC1E,Y 
       LDY    $FC     
       STA.wy $00F2,Y 
       LDA    $83,X   
       AND    #$0F    
       TAY            
       LDA    LFC1E,Y 
       LDY    $FC     
       STA.wy $00F4,Y 
       LDA    #$FC    
       STA.wy $00F3,Y 
       STA.wy $00F5,Y 
       LDY    #$00    
       STY    $FC     
       DEX            
       BPL    LF844   
       LDX    #$00    
LF873: LDA    $F2,X   
       EOR    #$28    
       BNE    LF881   
       STA    $F2,X   
       INX            
       INX            
       CPX    #$06    
       BCC    LF873   
LF881: LDA    $81     
       BNE    LF887   
       BEQ    LF88C   
LF887: LDY    $BB     
       LDA    LFFFA,Y 
LF88C: STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       LDX    #$F8    
       STX    $C6     
       LDX    #$82    
       STX    $AC     
       LDA    $C5     
       BEQ    LF8CC   
       DEC    $C5     
       BEQ    LF8BA   
       STX    $C1     
       LDX    #$F4    
       STX    $C6     
       LSR            
       LSR            
       LSR            
       TAY            
       LDX    LFC92,Y 
       STX    $AC     
       JMP    LF927   
LF8BA: LDY    $C9     
       LDA    LFD3B,Y 
       STA    $AA     
       STA    $C4     
       JSR    LFA0E   
       LSR            
       ADC    #$0C    
       JMP    LF8FD   
LF8CC: LDY    $C9     
       LDA    LFD2E,Y 
       STA    $FC     
       LDA    $AB     
       AND    #$07    
       BNE    LF90E   
       LDA    $AA     
       STA    $C4     
       JSR    LFA0E   
       TAY            
       BMI    LF8F0   
       TYA            
       AND    $FC     
       ADC    $C2     
       CMP    #$8A    
       BCC    LF8FD   
       LDA    #$89    
       BNE    LF8FD   
LF8F0: TYA            
       AND    $FC     
       SBC    $C2     
       EOR    #$FF    
       CMP    #$0D    
       BCS    LF8FD   
       LDA    #$0E    
LF8FD: STA    $C2     
       TAX            
       JSR    LF9E5   
       STA    $C3     
       TXA            
       CLC            
       ADC    #$04    
       JSR    LF9E5   
       STA    $C0     
LF90E: LDA    $C4     
       SEC            
       SBC    #$09    
       STA    $C4     
       EOR    #$FF    
       STA    $C1     
       LDA    $AA     
       CMP    #$3A    
       BCC    LF923   
       LDY    #$FF    
       STY    $C1     
LF923: EOR    #$FF    
       STA    $F0     
LF927: LDX    #$00    
       LDY    $86     
       LDA    LFD08,Y 
       CMP    $83     
       BCS    LF948   
       LDX    #$FF    
       LDY    $86     
       CPY    #$18    
       BNE    LF93C   
       LDY    #$17    
LF93C: INY            
       STY    $86     
       LDY    $85     
       CPY    #$03    
       BCS    LF948   
       INY            
       STY    $85     
LF948: STX    $CE     
       LDY    $CA     
       BEQ    LF9AD   
       CPY    #$E0    
       BNE    LF96F   
       LDA    $AB     
       BEQ    LF959   
       JMP    LF02A   
LF959: LDA    $BB     
       EOR    #$01    
       STA    $BB     
       LDX    #$03    
LF961: LDY    $87,X   
       LDA    $83,X   
       STY    $83,X   
       STA    $87,X   
       DEX            
       BPL    LF961   
       JMP    LF02A   
LF96F: CPY    #$C0    
       BEQ    LF997   
       CPY    #$80    
       BNE    LF9D8   
       LDA    $BC     
       LSR            
       BCC    LF997   
       LDA    $89     
       BMI    LF997   
       LDA    #$C0    
       STA    $CA     
       LDA    $BB     
       EOR    #$01    
       STA    $BB     
       LDX    #$03    
LF98C: LDY    $87,X   
       LDA    $83,X   
       STY    $83,X   
       STA    $87,X   
       DEX            
       BPL    LF98C   
LF997: LDX    $85     
       BMI    LF9C6   
       LDA    SWCHA   
       LDY    $BB     
       BEQ    LF9A3   
       ASL            
LF9A3: STA    $FD     
       LDA    $FD     
       BMI    LF9AD   
       LDA    #$00    
       STA    $CA     
LF9AD: LDA    $86     
       LSR            
       STA    $FC     
       LDA    $BC     
       LSR            
       CLC            
       ADC    $FC     
       CMP    #$0D    
       BCC    LF9BE   
       LDA    #$0C    
LF9BE: STA    $C9     
       TAY            
       LDA    LFD48,Y 
       BNE    LF9E0   
LF9C6: LDA    $89     
       BMI    LF9D0   
       LDA    #$80    
       STA    $CA     
       BMI    LF9D4   
LF9D0: LDA    #$E0    
       STA    $CA     
LF9D4: LDA    #$02    
       BNE    LF9E0   
LF9D8: DEY            
       STY    $CA     
       LDA    $CB     
       CLC            
       ADC    #$30    
LF9E0: STA    $CB     
       JMP    LF02A   
LF9E5: LDY    #$FF    
LF9E7: INY            
       SBC    #$0F    
       BCS    LF9E7   
       STY    $EE     
       EOR    #$FF    
       ADC    COLUBK  
       ASL            
       ASL            
       ASL            
       ASL            
       ORA    $EE     
       RTS            

LF9F9: LDY    $D4,X   
       BEQ    LFA02   
       LDA    $E0,X   
       JMP    LFA07   
LFA02: LDA    #$00    
       SEC            
       SBC    $E0,X   
LFA07: ASL            
       ASL            
       ASL            
       ASL            
       STA    HMM0,X  
       RTS            

LFA0E: LDA    $9E     
       LDY    $9D     
       EOR    $C685,Y 
       EOR    $C076,Y 
       ASL            
       ADC    #$00    
       INY            
       STY    $9D     
       EOR    $94     
       EOR    $AB     
       STA    $9E     
       RTS            

LFA25: LDY    #$01    
       SED            
       CLC            
LFA29: ADC.wy $0083,Y 
       STA.wy $0083,Y 
       LDA    #$00    
       DEY            
       BPL    LFA29   
       BCC    LFA3A   
       LDA    #$01    
       NOP            
       NOP            
LFA3A: CLD            
       RTS            

LFA3C: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00
LFAB0: LDA    #$03    
       STA    $BE     
       STA    $89     
       STA    $85     
       LDA    #$FE    
       STA    $A9     
       LDX    #$FF    
       STX    $CC     
       STX    $CD     
       STX    $EC     
       STX    $ED     
       LDA    #$82    
       STA    $AC     
       LDA    #$FC    
       STA    $AD     
       TXS            
       LDA    #$38    
       STA    $8D     
       LDA    #$4B    
       STA    $81     
       LDA    #$0A    
       STA    $A0     
       LDA    #$C0    
       STA    $CA     
       LDA    #$01    
       STA    $8E     
       STA    $9A     
       LDX    #$08    
       LDA    #$34    
LFAE9: STA    $8F,X   
       DEX            
       BPL    LFAE9   
       JMP    LF00D   
LFAF1: .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$20,$08,$10,$00,$00,$00,$00,$14,$20,$08,$00,$00,$00,$00,$08
       .byte $2C,$18,$00,$00,$00,$00,$04,$70,$54,$00,$00,$00,$20,$39,$92,$10
       .byte $00,$00,$00,$04,$11,$6B,$41,$10,$00,$00,$25,$88,$AA,$32,$14,$08
       .byte $00,$42,$6C,$95,$00,$00,$00,$00,$00,$00,$38,$10,$00,$00,$00,$00
       .byte $10,$38,$10,$00,$00,$00,$00,$18,$3C,$18,$00,$00,$00,$00,$54,$7C
       .byte $54,$00,$00,$00,$5A,$7E,$5A,$18,$00,$00,$00,$14,$49,$7F,$49,$08
       .byte $00,$00,$38,$AA,$FE,$BA,$10,$10,$00,$A5,$FF,$BD,$BD,$18,$18,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$C8,$E7,$68,$29,$69,$54,$D3,$93
       .byte $B2,$33,$C6,$C5,$66,$47,$06,$72,$B1,$51,$D2,$F1,$00
LFC1E: .byte $28,$31,$3A,$43,$4C,$55,$5E,$67,$70,$79,$3C,$66,$66,$66,$66,$66
       .byte $66,$66,$3C,$3C,$18,$18,$18,$18,$18,$18,$38,$18,$7E,$60,$60,$60
       .byte $3C,$06,$06,$46,$3C,$3C,$46,$06,$06,$0C,$18,$0C,$46,$3C,$0C,$0C
       .byte $7E,$4C,$4C,$6C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60,$60,$60,$7E
       .byte $3C,$66,$66,$66,$7C,$60,$60,$62,$3C,$18,$18,$18,$18,$0C,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$66,$3C,$66,$66,$66,$3C,$3C,$46,$06,$06,$3E
       .byte $66,$66,$66,$3C,$00,$00,$81,$66,$3C,$3C,$66,$81
LFC8A: .byte $00,$00,$00,$24,$24,$24,$24,$24
LFC92: .byte $96,$D3,$E0,$EC,$00,$00,$D5,$5B,$AE,$FF,$7E,$7D,$AE,$77,$EA,$54
LFCA2: .byte $00,$00,$01,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00
LFCB8: .byte $B8,$BF,$C6,$CD,$D4,$DB,$E2,$E9
LFCC0: .byte $80,$87,$8E,$95,$9C,$A3,$AA
LFCC7: .byte $B1,$00,$03,$06,$09,$0C,$0F,$12,$15,$18,$1B,$1D,$00,$00,$14,$55
       .byte $2E,$76,$BE,$7D,$2A,$17,$4A,$00,$00,$00,$00,$52,$4C,$AD,$1E,$7C
       .byte $4D,$B2,$49,$00,$00,$00,$00,$22,$08,$54,$1A,$3C,$4A,$2C,$10,$00
       .byte $24
LFCF8: .byte $00
LFCF9: .byte $82,$C6,$FE,$BA,$92
LFCFE: .byte $10,$00
LFD00: .byte $09,$08,$07,$06,$05,$04,$03,$02
LFD08: .byte $03,$07,$11,$15,$19,$23,$27,$31,$35,$39,$43,$47,$51,$55,$59,$63
       .byte $67,$71,$75,$79,$83,$87,$91,$95,$99
LFD21: .byte $07,$07,$07,$07,$07,$07,$07,$07,$03,$03,$03,$03,$03
LFD2E: .byte $07,$07,$07,$07,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
LFD3B: .byte $80,$70,$60,$50,$80,$70,$60,$50,$80,$70,$60,$50,$50
LFD48: .byte $D2,$E2,$F2,$12,$22,$32,$42,$52,$62,$72,$82,$92,$A2,$B2,$C2,$00
LFD58: .byte $01,$02,$03,$04,$05,$06,$07,$08,$09,$10,$11,$12,$13,$14,$15,$16
       .byte $17,$18,$19,$20,$21,$22,$23,$24,$25,$26,$00,$21,$34,$00,$21,$24
       .byte $E5,$55,$57,$55,$55,$52,$50,$50,$E0,$25,$25,$27,$25,$25,$72,$00
       .byte $00,$00,$09,$09,$09,$09,$0F,$09,$09,$09,$06,$17,$74,$54,$77,$44
       .byte $77,$00,$00,$00,$11,$12,$12,$12,$11,$10,$28,$44,$82,$9E,$52,$52
       .byte $52,$92,$00,$00,$00,$00,$11,$2A,$2A,$24,$24,$24,$20,$20,$20,$29
       .byte $A9,$A9,$89,$AF,$80,$80,$80,$80,$35,$30,$2C,$29,$23,$21,$34,$25
       .byte $00,$26,$29,$2C,$25,$00,$00,$00,$00,$00,$28,$0E,$00,$37,$32,$29
       .byte $34,$25,$00,$24,$2F,$33,$00,$26,$29,$2C,$25,$33,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$1F,$0F,$00,$0F,$1F,$0E
       .byte $00,$0F,$1F,$0D,$00,$0F,$1F,$0C,$00,$0F,$1F,$0B,$00,$0F,$1F,$0A
       .byte $00,$0F,$1F,$09,$00,$0F,$1F,$08,$00,$0F,$1F,$07,$00,$0F,$1F,$06
       .byte $00,$0F,$1F,$05,$00,$0F,$1F,$04,$00,$0F,$1F,$03,$00,$0F,$1F,$02
       .byte $00,$0F,$1F,$01,$FF,$0F,$1F,$00,$00,$0C,$03,$0F,$06,$0C,$03,$00
       .byte $00,$0C,$03,$0F,$06,$0C,$03,$00,$00,$0C,$03,$0F,$06,$0C,$03,$00
       .byte $00,$0C,$03,$0F,$06,$0C,$03,$00,$00,$0C,$03,$0F,$06,$0C,$03,$00
       .byte $00,$0C,$03,$0F,$06,$0C,$03,$00,$00,$0C,$03,$0F,$06,$0C,$03,$00
       .byte $00,$0C,$03,$0F,$06,$0C,$03,$00,$00,$0C,$02,$04,$00,$0C,$04,$04
       .byte $00,$0C,$06,$04,$00,$0C,$08,$04,$00,$0C,$0A,$04,$00,$0C,$0C,$04
       .byte $00,$0C,$0E,$04,$00,$0C,$10,$04,$00,$0C,$12,$04,$00,$0C,$14,$04
       .byte $00,$0C,$16,$04,$00,$0C,$18,$04,$00,$0C,$1A,$04,$00,$0C,$1C,$04
       .byte $10,$0C,$1C,$00,$00,$00,$00,$00,$0C,$0C,$12,$08,$06,$0C,$0F,$08
       .byte $06,$0C,$12,$08,$0C,$0C,$18,$08,$06,$0C,$12,$08,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00
LFF00: .byte $F1,$D2,$51,$B1,$72,$06,$47,$66,$C5,$C6,$33,$B2,$93,$D3,$54,$69
       .byte $29,$68,$E7,$C8,$B2,$73,$12,$91,$11,$D3,$94,$74,$32,$14,$09,$69
       .byte $C8,$28,$87,$74,$B4,$14,$D5,$55,$91,$32,$D2,$73,$13,$E5,$A4,$65
       .byte $26,$66,$32,$13,$F4,$93,$92,$E6,$85,$67,$07,$26,$F4,$54,$75,$F5
       .byte $F3,$08,$C7,$48,$07,$67,$85,$86,$25,$E6,$47,$B3,$D4,$55,$53,$34
       .byte $A4,$05,$66,$45,$24,$C7,$48,$27,$A8,$88,$A7,$E8,$86,$88,$46,$A6
       .byte $46,$05,$A5,$45,$31,$B1,$90,$32,$B2,$65,$04,$05,$64,$46,$53,$F3
       .byte $B2,$74,$F4,$27,$08,$A7,$86,$E6,$F2,$33,$D4,$54,$35,$E7,$68,$47
       .byte $A8,$06,$D3,$75,$B5,$15,$54,$47,$06,$A6,$45,$A5,$52,$11,$F2,$33
       .byte $B0,$28,$A6,$69,$E7,$47,$35,$94,$D5,$93,$14,$28,$C7,$C8,$47,$E6
       .byte $75,$15,$B3,$F4,$95,$07,$48,$A6,$E6,$C8,$51,$90,$92,$F1,$91,$C8
       .byte $49,$87,$27,$67,$55,$F5,$D3,$34,$76,$29,$E8,$A6,$48,$47,$F3,$54
       .byte $B4,$D5,$55,$67,$E7,$87,$66,$E6,$F4,$15,$94,$93,$95,$84,$65,$E5
       .byte $E4,$E6,$B3,$34,$92,$33,$32,$06,$86,$66,$C5,$65,$D1,$92,$71,$32
       .byte $31,$25,$C5,$65,$66,$04,$73,$13,$D2,$B1,$74,$C5,$27,$66,$45,$E6
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LFFFA: .byte $4A,$1A,$00,$F0,$00,$00
