; Disassembly of roms/Spitfire Attack.bin
; Disassembled Tue Oct  6 15:22:44 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Spitfire Attack.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
NUSIZ1  =  $05
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
PF0     =  $0D
RESP0   =  $10
RESP1   =  $11
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
HMP1    =  $21
HMM0    =  $22
HMM1    =  $23
VDELP0  =  $25
VDELP1  =  $26
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
$0285   =  $0285

       ORG $F000

START:
       SEI            
       CLD            
       LDA    #$00    
       LDX    #$FF    
       TXS            
LF007: STA    VSYNC,X 
       DEX            
       BNE    LF007   
       JSR    LF6E6   
       LDA    #$07    
       STA    $89     
       LDA    #$06    
       STA    $DC     
       LDA    #$67    
       STA    $BA     
LF01B: STA    WSYNC   
       LDA    #$02    
       STA    VBLANK  
       STA    VSYNC   
       LDA    #$2A    
       STA    $029D   
       LDA    #$00    
       STA    AUDV0   
       LDA    $DD     
       CMP    #$05    
       BCC    LF044   
       LDA    $81     
       AND    #$03    
       BNE    LF044   
       LDA    #$FF    
       STA    AUDV0   
       LDA    #$10    
       STA    AUDF0   
       LDA    #$01    
       STA    AUDC0   
LF044: NOP            
       LDA    $D9     
       BNE    LF05A   
       LDA    $D1     
       BNE    LF056   
       LDA    $D6     
       CMP    #$10    
       BCS    LF056   
       JMP    LF06B   
LF056: LDA    #$0F    
       STA    $D9     
LF05A: LDA    $81     
       AND    #$05    
       BNE    LF062   
       DEC    $D9     
LF062: LDA    $D9     
       LDX    #$FF    
       LDY    #$08    
       JMP    LF097   
LF06B: LDA    $9E     
       CMP    #$02    
       BCS    LF085   
       LDA    $81     
       AND    #$05    
       BEQ    LF07C   
       LDA    #$00    
       JMP    LF07E   
LF07C: LDA    #$FF    
LF07E: LDX    #$0D    
       LDY    #$07    
       JMP    LF097   
LF085: LDA    $83     
       LSR            
       LSR            
       LSR            
       EOR    #$1F    
       TAX            
       LDA    #$03    
       LDY    #$03    
       JMP    LF097   
LF094: .byte $4C,$9D,$F0
LF097: STA    AUDV1   
       STX    AUDF1   
       STY    AUDC1   
       NOP            
       INC    $81     
       INC    $8B     
       LDA    $89     
       CMP    $8B     
       BNE    LF0AC   
       LDA    #$00    
       STA    $8B     
LF0AC: LDA    $0285   
       BPL    LF0AC   
       LDA    #$00    
       STA    WSYNC   
       STA    VSYNC   
       STA    VBLANK  
       STA    WSYNC   
       LDA    #$20    
       STA    $029E   
       LDA    SWCHB   
       AND    #$01    
       BNE    LF0CE   
       JSR    LF6E6   
       LDA    #$00    
       STA    $DB     
LF0CE: LDA    SWCHB   
       AND    #$02    
       BEQ    LF0DC   
       LDA    #$FF    
       STA    $DE     
       JMP    LF103   
LF0DC: LDA    $DE     
       BEQ    LF103   
       LDA    #$00    
       STA    $DE     
       DEC    $DC     
       LDA    $DC     
       CMP    #$00    
       BNE    LF0F4   
       LDA    #$06    
       STA    $DC     
       LDA    #$00    
       STA    $8B     
LF0F4: NOP            
       LDX    $DC     
       LDA    LF8F9,X 
       STA    $BA     
       JSR    LF750   
       LDA    #$FF    
       STA    $DB     
LF103: NOP            
       LDA    $DB     
       BNE    LF12E   
       LDA    $81     
       BNE    LF12E   
       LDA    $AE     
       CMP    #$05    
       BCC    LF12E   
       LDA    $AF     
       CMP    #$03    
       BNE    LF12C   
       LDA    #$30    
       STA    $D6     
       LDA    #$FF    
       STA    $AF     
       LDA    #$00    
       STA    $AE     
       DEC    $C8     
       BNE    LF12C   
       LDA    #$FF    
       STA    $DB     
LF12C: INC    $AF     
LF12E: NOP            
       LDA    $DB     
       BNE    LF169   
       LDA    $81     
       AND    #$07    
       BNE    LF169   
       LDA    $83     
       CMP    #$5A    
       BCC    LF14A   
       LDA    $CE     
       CMP    #$30    
       BCS    LF169   
       INC    $CE     
       JMP    LF169   
LF14A: LDA    $CE     
       BEQ    LF153   
       DEC    $CE     
       JMP    LF169   
LF153: LDA    #$30    
       STA    $D6     
       LDA    #$00    
       STA    $AE     
       STA    $AF     
       LDA    #$30    
       STA    $CE     
       DEC    $C8     
       BNE    LF169   
       LDA    #$FF    
       STA    $DB     
LF169: NOP            
       LDA    $DB     
       BEQ    LF17F   
       LDA    #$00    
       STA    $DD     
       STA    $AE     
       LDA    #$62    
       STA    $83     
       LDA    #$1F    
       STA    $84     
       JMP    LF203   
LF17F: LDA    $D6     
       CMP    #$05    
       BCS    LF203   
       LDX    #$01    
       LDY    #$A0    
       LDA    SWCHA   
       AND    #$80    
       BNE    LF1AB   
       DEC    $AD     
       LDA    $AD     
       BNE    LF198   
       STY    $AD     
LF198: DEC    $91     
       LDA    $91     
       BNE    LF1A0   
       STY    $91     
LF1A0: DEC    $94     
       LDA    $94     
       BNE    LF1A8   
       STY    $94     
LF1A8: JSR    LF862   
LF1AB: LDA    SWCHA   
       AND    #$40    
       BNE    LF1D3   
       INC    $AD     
       LDA    $AD     
       CMP    #$A1    
       BNE    LF1BC   
       STX    $AD     
LF1BC: INC    $91     
       LDA    $91     
       CMP    #$A1    
       BNE    LF1C6   
       STX    $91     
LF1C6: INC    $94     
       LDA    $94     
       CMP    #$A1    
       BNE    LF1D0   
       STX    $94     
LF1D0: JSR    LF86F   
LF1D3: LDA    SWCHA   
       AND    #$20    
       BNE    LF1EB   
       LDA    $83     
       CMP    #$9C    
       BCS    LF1EB   
       DEC    $84     
       INC    $83     
       INC    $83     
       INC    $AC     
       INC    $AC     
       NOP            
LF1EB: LDA    SWCHA   
       AND    #$10    
       BNE    LF202   
       LDA    #$0A    
       CMP    $83     
       BCS    LF203   
       INC    $84     
       DEC    $83     
       DEC    $83     
       DEC    $AC     
       DEC    $AC     
LF202: NOP            
LF203: NOP            
       LDA    $DB     
       BNE    LF228   
       LDA    $DD     
       CMP    #$05    
       BCS    LF226   
       BIT    INPT4   
       BPL    LF219   
       LDA    #$01    
       STA    $DD     
       JMP    LF228   
LF219: LDA    $DD     
       CMP    #$01    
       BNE    LF228   
       LDA    #$10    
       STA    $DD     
       JMP    LF228   
LF226: DEC    $DD     
LF228: NOP            
       LDA    $81     
       LDY    $DD     
       CPY    #$05    
       BCS    LF233   
       AND    #$01    
LF233: AND    #$03    
       TAX            
       LDA    LF8F5,X 
       STA    $96     
       LDA    LF8F1,X 
       STA    $85     
       LDA    LF8ED,X 
       STA    $A0     
       LDA    $8B     
       BNE    LF27E   
       LDA    $88     
       SEC            
       SBC    #$01    
       TAY            
       LDA    LFC00,Y 
       AND    #$F0    
       BEQ    LF27E   
       TAX            
       BPL    LF26C   
       CPX    #$E0    
       BNE    LF263   
       JSR    LF862   
       JSR    LF862   
LF263: JSR    LF862   
       JSR    LF862   
       JMP    LF27E   
LF26C: LDA    $95     
       CPX    #$20    
       BNE    LF278   
       JSR    LF86F   
       JSR    LF86F   
LF278: JSR    LF86F   
       JSR    LF86F   
LF27E: NOP            
       LDA    $8B     
       BNE    LF289   
       DEC    $88     
       INC    $98     
       INC    $99     
LF289: NOP            
       LDA    $D1     
       BNE    LF2B1   
       LDA    $8B     
       BNE    LF2B1   
       INC    $82     
       LDA    $82     
       CMP    #$0F    
       BNE    LF2B1   
       LDA    #$00    
       STA    $82     
       LDA    $9E     
       BEQ    LF2A4   
       DEC    $9E     
LF2A4: LDA    $9E     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    $AA     
       CLC            
       ADC    #$50    
       STA    $AB     
LF2B1: NOP            
       LDA    $9E     
       BNE    LF2B9   
       JMP    LF34C   
LF2B9: LDA    $D1     
       BEQ    LF2C0   
       JMP    LF34C   
LF2C0: LDA    $81     
       BIT    SWCHB   
       BVC    LF2C9   
       AND    #$1F    
LF2C9: AND    #$3F    
       BNE    LF2DC   
       LDA    $AD     
       CMP    #$50    
       BCS    LF2D8   
       LDA    #$01    
       JMP    LF2DA   
LF2D8: LDA    #$02    
LF2DA: STA    $D7     
LF2DC: LDA    $81     
       BIT    SWCHB   
       BVC    LF2E5   
       LDA    #$00    
LF2E5: AND    #$01    
       BNE    LF325   
       LDA    $D7     
       CMP    #$01    
       BNE    LF30C   
       LDA    $AD     
       CMP    #$A0    
       BCC    LF2F7   
       ADC    #$5F    
LF2F7: CLC            
       ADC    #$01    
       STA    $AD     
       LDA    $91     
       CMP    #$A0    
       BCC    LF304   
       ADC    #$5F    
LF304: CLC            
       ADC    #$01    
       STA    $91     
       JMP    LF325   
LF30C: NOP            
       DEC    $AD     
       LDA    $AD     
       CMP    #$00    
       BNE    LF319   
       LDA    #$A0    
       STA    $AD     
LF319: DEC    $91     
       LDA    $91     
       CMP    #$00    
       BNE    LF325   
       LDA    #$A0    
       STA    $91     
LF325: LDA    $81     
       AND    #$07    
       BNE    LF34B   
       LDA    $D8     
       BNE    LF33A   
       LDA    $AC     
       CMP    $83     
       BCS    LF33A   
       INC    $AC     
       JMP    LF33E   
LF33A: LDA    #$01    
       STA    $D8     
LF33E: LDA    $D8     
       BEQ    LF34B   
       BIT    SWCHB   
       BVC    LF349   
       DEC    $AC     
LF349: DEC    $AC     
LF34B: NOP            
LF34C: NOP            
       LDA    $D6     
       CMP    #$05    
       BCS    LF398   
       LDA    $9E     
       BNE    LF37B   
       LDA    #$00    
       STA    $D8     
       LDA    $D1     
       BNE    LF37B   
       LDA    $AC     
       SBC    #$02    
       STA    $AC     
       CMP    #$58    
       BCC    LF37B   
       LDA    $AD     
       CMP    #$35    
       BCC    LF37B   
       CMP    #$62    
       BCS    LF37B   
       LDA    $D6     
       BNE    LF37B   
       LDA    #$01    
       STA    $D6     
LF37B: NOP            
       LDA    $D6     
       CMP    #$01    
       BNE    LF398   
       LDA    $AC     
       CMP    #$30    
       BCS    LF398   
       LDA    #$30    
       STA    $D6     
       LDA    #$00    
       STA    $AE     
       DEC    $C8     
       BNE    LF398   
       LDA    #$FF    
       STA    $DB     
LF398: NOP            
       LDA    $CF     
       BEQ    LF3BB   
       CMP    #$01    
       BNE    LF3A8   
       LDA    #$BD    
       STA    $A6     
       JMP    LF3BB   
LF3A8: AND    #$02    
       BEQ    LF3B1   
       LDA    #$AD    
       JMP    LF3B3   
LF3B1: LDA    #$B5    
LF3B3: STA    $A6     
       DEC    $CF     
       LDA    #$00    
       STA    $AE     
LF3BB: NOP            
       LDA    $D0     
       BEQ    LF3DA   
       CMP    #$01    
       BNE    LF3CB   
       LDA    #$BD    
       STA    $A8     
       JMP    LF3DA   
LF3CB: AND    #$02    
       BEQ    LF3D4   
       LDA    #$AD    
       JMP    LF3D6   
LF3D4: LDA    #$B5    
LF3D6: STA    $A8     
       DEC    $D0     
LF3DA: NOP            
       LDA    $D1     
       BEQ    LF3FA   
       CMP    #$01    
       BEQ    LF3FA   
       LDA    $81     
       AND    #$03    
       BEQ    LF3EF   
       LDA    $AB     
       EOR    #$20    
       STA    $AB     
LF3EF: DEC    $D1     
       LDA    $81     
       ASL            
       ASL            
       ASL            
       ORA    #$04    
       STA    $D5     
LF3FA: NOP            
       LDA    $8B     
       BNE    LF42B   
       INC    $8A     
       LDA    $8A     
       CMP    #$07    
       BNE    LF42B   
       LDA    #$00    
       STA    $8A     
       LDA    $CF     
       BNE    LF41A   
       LDA    $A6     
       CMP    #$28    
       BCS    LF41A   
       CLC            
       ADC    #$08    
       STA    $A6     
LF41A: NOP            
       LDA    $D0     
       BNE    LF42A   
       LDA    $A8     
       CMP    #$58    
       BCS    LF42A   
       CLC            
       ADC    #$08    
       STA    $A8     
LF42A: NOP            
LF42B: NOP            
       LDA    $81     
       ADC    $CC     
       ROL            
       ROL            
       AND    #$7F    
       ADC    #$17    
       STA    $CC     
       ROR            
       EOR    #$55    
       STA    $CD     
       LDA    #$C0    
       STA    $CA     
       LDA    $81     
       AND    #$03    
       BNE    LF44D   
       LDA    $AE     
       CMP    #$05    
       BCS    LF46B   
LF44D: LDX    $9E     
       LDA    $AB     
       LDY    $D1     
       BNE    LF458   
       EOR    LFFF7,X 
LF458: STA    $AB     
       STA    $A2     
       LDA    $AA     
       STA    $A4     
       LDA    $AC     
       STA    $97     
       LDA    $AD     
       STA    $90     
       JMP    LF47B   
LF46B: LDA    $CA     
       STA    $A2     
       LDA    #$D0    
       STA    $A4     
       LDA    $CD     
       STA    $97     
       LDA    $CC     
       STA    $90     
LF47B: NOP            
       LDA    $84     
       CLC            
       ADC    #$08    
       CMP    $98     
       BCS    LF489   
       LDA    #$BD    
       STA    $A6     
LF489: LDA    $84     
       CLC            
       ADC    #$08    
       CMP    $99     
       BCS    LF496   
       LDA    #$BD    
       STA    $A8     
LF496: LDA    $A6     
       CMP    #$BD    
       BNE    LF4B8   
       LDA    $A8     
       CMP    #$BD    
       BNE    LF4B8   
       LDA    $95     
       ADC    #$40    
       CMP    #$A0    
       BCC    LF4AC   
       ADC    #$60    
LF4AC: STA    $94     
       LDA    #$00    
       STA    $CF     
       STA    $D0     
       STA    $A6     
       STA    $98     
LF4B8: LDA    $A8     
       CMP    #$BD    
       BNE    LF4CC   
       LDA    $98     
       CMP    #$18    
       BNE    LF4CC   
       LDA    #$00    
       STA    $99     
       LDA    #$30    
       STA    $A8     
LF4CC: NOP            
       LDA    $D6     
       CMP    #$05    
       BCS    LF52D   
       LDA    $AC     
       CMP    #$B0    
       BCS    LF4E1   
       LDA    $D1     
       CMP    #$01    
       BNE    LF52D   
       DEC    $AE     
LF4E1: LDA    #$00    
       STA    $D1     
       STA    $D3     
       STA    $D5     
       STA    $D8     
       STA    $D6     
       INC    $AE     
       LDA    #$90    
       STA    $AB     
       LDA    #$40    
       STA    $AA     
       LDA    $D4     
       CLC            
       ADC    #$30    
       ORA    #$03    
       STA    $D4     
       LDA    #$04    
       STA    $9E     
       LDA    $83     
       SBC    #$20    
       STA    $AC     
       LDA    $81     
       EOR    $95     
       AND    #$1F    
       ADC    $AC     
       STA    $AC     
       LDA    $81     
       AND    #$1F    
       ADC    #$80    
       CMP    #$A1    
       BCC    LF520   
       ADC    #$5F    
LF520: STA    $91     
       CLC            
       ADC    #$0D    
       CMP    #$A1    
       BCC    LF52B   
       ADC    #$5F    
LF52B: STA    $AD     
LF52D: NOP            
       LDX    #$03    
LF530: STA    WSYNC   
       NOP            
       LDA    ($80,X) 
       LDA    $90,X   
       SEC            
LF538: SBC    #$0F    
       BCS    LF538   
       STA    RESP0,X 
       STA    WSYNC   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       DEX            
       BPL    LF530   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
LF555: LDA    $0285   
       BPL    LF555   
       LDA    $97     
       STA    $9B     
       LDA    $98     
       STA    $9C     
       LDA    $99     
       STA    $9D     
       LDA    $88     
       STA    $87     
       LDA    $96     
       STA    $9A     
       STA    WSYNC   
       LDA    $D6     
       CMP    #$05    
       BCC    LF58C   
       JSR    LF773   
       LDA    #$62    
       STA    $83     
       LDA    #$1F    
       STA    $84     
       LDA    #$00    
       STA    $9E     
       LDA    #$00    
       STA    $AC     
       JMP    LF5BD   
LF58C: LDA    #$9A    
       STA    COLUBK  
       LDA    $D5     
       STA    COLUP0  
       LDA    $D4     
       STA    COLUP1  
       STA    HMCLR   
       STA    WSYNC   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    #$FF    
       STA    VDELP0  
       LDA    #$00    
       STA    VDELP1  
       LDA    $D3     
       STA    NUSIZ0  
       LDA    #$07    
       STA    NUSIZ1  
       LDX    $83     
       STA    CXCLR   
       LDA    #$00    
       STA    $D2     
       JSR    LFD00   
LF5BD: STA    WSYNC   
       LDA    $CE     
       CMP    #$10    
       BCS    LF5DE   
       LDA    $81     
       AND    #$08    
       BNE    LF5DE   
       LDA    #$45    
       STA    COLUBK  
       LDA    #$FF    
       STA    AUDV0   
       LDA    #$08    
       STA    AUDF0   
       LDA    #$05    
       STA    AUDC0   
       JMP    LF5EA   
LF5DE: LDA    #$00    
       STA    COLUBK  
       LDA    #$03    
       STA    AUDV0   
       LDA    #$03    
       STA    AUDC0   
LF5EA: JSR    LF796   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       LDA    #$22    
       STA    $029E   
       LDA    $96     
       BMI    LF601   
       JMP    LF689   
LF601: LDA    $84     
       CMP    #$25    
       BCS    LF640   
       LDA    $AC     
       CMP    #$69    
       BCS    LF615   
       CMP    #$5B    
       BCC    LF615   
       BIT    $D2     
       BVS    LF618   
LF615: JMP    LF689   
LF618: NOP            
       LDA    $D1     
       BNE    LF640   
       LDA    #$20    
       INC    $DA     
       STA    $D1     
       LDA    #$05    
       STA    $D3     
       LDA    #$32    
       STA    $C9     
       LDA    #$00    
       STA    $D6     
       LDA    $AD     
       SBC    #$05    
       STA    $AD     
       LDA    #$C0    
       STA    $AB     
       LDA    #$D0    
       STA    $AA     
       JMP    LF689   
LF640: NOP            
       LDA    $94     
       CMP    #$49    
       BCC    LF689   
       CMP    #$51    
       BCS    LF689   
       BIT    CXM0P   
       BVC    LF689   
       LDA    $CF     
       BNE    LF66C   
       LDA    $84     
       SEC            
       SBC    $98     
       CMP    #$1F    
       BCC    LF66C   
       CMP    #$28    
       BCS    LF66C   
       LDA    #$10    
       STA    $CF     
       LDA    #$0A    
       STA    $C9     
       LDA    #$0F    
       STA    $D9     
LF66C: LDA    $D0     
       BNE    LF689   
       LDA    $84     
       SEC            
       SBC    $99     
       CMP    #$1F    
       BCC    LF689   
       CMP    #$28    
       BCS    LF689   
       LDA    #$10    
       STA    $D0     
       LDA    #$0A    
       STA    $C9     
       LDA    #$0F    
       STA    $D9     
LF689: NOP            
       LDA    $DA     
       CMP    #$0A    
       BCC    LF69E   
       LDA    $89     
       CMP    #$03    
       BCC    LF69E   
       DEC    $89     
       LDA    #$00    
       STA    $DA     
       STA    $8B     
LF69E: NOP            
       LDY    #$FE    
       LDX    #$FF    
LF6A3: INY            
       INY            
       INX            
       CPX    $C8     
       BCS    LF6B2   
       LDA    #$DA    
       STA.wy $00BC,Y 
       JMP    LF6B7   
LF6B2: LDA    #$E1    
       STA.wy $00BC,Y 
LF6B7: CPX    #$05    
       BNE    LF6A3   
       LDX    #$08    
       LDA    $C9     
       BEQ    LF6DB   
       DEC    $C9     
LF6C3: LDA    $B0,X   
       CLC            
       ADC    #$07    
       STA    $B0,X   
       CMP    #$A6    
       BNE    LF6DB   
       LDA    #$60    
       STA    $B0,X   
       DEX            
       DEX            
       CPX    #$FE    
       BEQ    LF6DB   
       JMP    LF6C3   
LF6DB: NOP            
       STA    HMCLR   
LF6DE: LDA    $0285   
       BPL    LF6DE   
       JMP    LF01B   
LF6E6: NOP            
       LDA    #$FF    
       STA    $DB     
       LDA    #$40    
       STA    $AC     
       STA    $98     
       LDA    #$26    
       STA    $8E     
       LDA    #$36    
       STA    $8F     
       LDA    $DC     
       CLC            
       ADC    #$01    
       STA    $89     
       LDA    #$30    
       STA    PF0     
       STA    AUDF0   
       LDA    #$05    
       STA    CTRLPF  
       LDA    #$FB    
       STA    $A7     
       STA    $A9     
       STA    $B1     
       STA    $B3     
       STA    $B5     
       STA    $B7     
       STA    $B9     
       STA    $BB     
       LDA    #$F9    
       STA    $A1     
       STA    $BD     
       STA    $BF     
       STA    $C1     
       STA    $C3     
       STA    $C5     
       STA    $C7     
       LDA    #$30    
       STA    $A8     
       LDA    #$FA    
       STA    $A3     
       STA    $A5     
       LDA    #$50    
       STA    $92     
       STA    $93     
       LDA    #$62    
       STA    $83     
       LDA    #$1F    
       STA    $84     
       LDA    #$00    
       STA    $8B     
       STA    $AE     
       STA    $AF     
       LDA    #$60    
       STA    $BA     
LF750: LDA    #$60    
       STA    $B0     
       STA    $B2     
       STA    $B4     
       STA    $B6     
       STA    $B8     
       LDA    #$DA    
       STA    $BC     
       STA    $BE     
       STA    $C0     
       STA    $C2     
       STA    $C4     
       STA    $C6     
       LDA    #$06    
       STA    $C8     
       LDA    #$30    
       STA    $CE     
       RTS            

LF773: LDA    $81     
       AND    #$03    
       BEQ    LF77E   
       LDA    #$00    
       JMP    LF780   
LF77E: LDA    #$3C    
LF780: STA    COLUBK  
       LDX    #$A9    
LF784: STX    WSYNC   
       DEX            
       BNE    LF784   
       DEC    $D6     
       CMP    #$05    
       BNE    LF78F   
LF78F: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       RTS            

LF796: LDA    $8E     
       EOR    #$1A    
       STA    $8E     
       LDA    $8F     
       EOR    #$72    
       STA    $8F     
       JSR    LF83E   
       LDA    #$FF    
       STA    VDELP0  
       STA    VDELP1  
       LDY    #$06    
       STY    $8D     
       LDA    #$0F    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF7BB: LDA    ($B8),Y 
       STA    WSYNC   
       STA    $8C     
       LDA    ($BA),Y 
       TAX            
       LDA    ($B0),Y 
       STA    GRP0    
       LDA    ($B2),Y 
       STA    GRP1    
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($B6),Y 
       LDY    $8C     
       STA    GRP1    
       STY    GRP0    
       STX    GRP1    
       STA    GRP0    
       DEC    $8D     
       LDY    $8D     
       BPL    LF7BB   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       LDA    $8E     
       EOR    #$1A    
       STA    $8E     
       LDA    $8F     
       EOR    #$72    
       STA    $8F     
       JSR    LF83E   
       LDY    #$06    
       STY    $8D     
       LDA    #$5A    
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$06    
       STA    NUSIZ0  
       STA    NUSIZ1  
LF80B: LDA    ($C4),Y 
       STA    $8C     
       STA    WSYNC   
       LDA    ($C6),Y 
       TAX            
       LDA    ($BC),Y 
       STA    GRP0    
       LDA    ($BE),Y 
       STA    GRP1    
       LDA    ($C0),Y 
       STA    GRP0    
       LDA    ($C2),Y 
       LDY    $8C     
       STA    GRP1    
       STY    GRP0    
       STX    $011C   
       STA    GRP0    
       DEC    $8D     
       LDY    $8D     
       BPL    LF80B   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       RTS            

LF83E: LDX    #$01    
LF840: STA    WSYNC   
       NOP            
       LDA    ($80,X) 
       LDA    $8E,X   
       SEC            
LF848: SBC    #$0F    
       BCS    LF848   
       STA    RESP0,X 
       STA    WSYNC   
       EOR    #$FF    
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       DEX            
       BPL    LF840   
       STA    WSYNC   
       STA    HMOVE   
       RTS            

LF862: LDA    $95     
       CMP    #$00    
       BNE    LF86C   
       LDA    #$A0    
       STA    $95     
LF86C: DEC    $95     
       RTS            

LF86F: LDA    $95     
       CMP    #$A0    
       BNE    LF879   
       LDA    #$00    
       STA    $95     
LF879: INC    $95     
       NOP            
       RTS            

LF87D: .byte $2C,$0E,$F2,$3F,$A0,$26,$32,$A3,$87,$17,$A4,$BA,$A0,$A1,$E0,$C6
       .byte $A4,$96,$C6,$5F,$A9,$27,$BA,$AE,$E0,$A7,$BE,$36,$C0,$9D,$B0
LF89C: .byte $08,$08,$08,$08,$08,$08,$18,$18,$18,$18,$18,$18,$1C,$1C,$1C,$1C
       .byte $1C,$1C,$3C,$3C,$3C,$3C,$3C,$3C,$3E,$3E,$3E,$3E,$3E,$3E,$7E,$7E
       .byte $7E,$7E,$7E,$7E,$7F,$7F,$7F,$7F,$7F,$7F,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF
LF8ED: .byte $00,$0D,$1A,$7A
LF8F1: .byte $0D,$0D,$60,$60
LF8F5: .byte $60,$60,$B9,$B9
LF8F9: .byte $00,$8A,$83,$7C,$75,$6E,$67,$00,$12,$12,$12,$12,$12,$12,$02,$F2
       .byte $F2,$F2,$F2,$F2,$00,$F2,$F2,$F2,$F2,$F2,$F2,$02,$12,$12,$12,$12
       .byte $12,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$22,$02,$00,$00,$00,$00,$00,$00,$22
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$00,$00,$00,$00,$00,$00,$E2,$02,$00,$00,$00,$00,$00,$00,$E2
       .byte $02,$38,$10,$10,$10,$FE,$38,$10,$00,$00,$00,$00,$00,$00,$00,$7B
       .byte $E2,$91,$E0,$37,$A9,$23,$7C,$1B,$D0,$3B,$92,$CB,$B0,$F6,$AC,$85
       .byte $28,$3E,$35,$33,$91,$30,$A2,$00,$00,$00,$00,$00,$00,$18,$3C,$7E
       .byte $FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$7E
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$18,$3C,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$78,$78,$7C,$7C,$FE
       .byte $FE,$5C,$5C,$3C,$3C,$12,$12,$00,$00,$40,$40,$38,$38,$7C,$7C,$38
       .byte $38,$14,$14,$00,$00,$00,$00,$00,$00,$10,$10,$38,$38,$38,$38,$10
       .byte $10,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$38,$38,$10,$10,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$10,$10,$10,$10,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$02,$3C,$3C,$7C,$7C,$FE
       .byte $FE,$74,$74,$78,$78,$90,$90,$00,$00,$04,$04,$38,$38,$7C,$7C,$38
       .byte $38,$50,$50,$00,$00,$00,$00,$00,$00,$41,$41,$96,$96,$68,$68,$99
       .byte $99,$38,$38,$55,$55,$D2,$D2,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$24,$24,$98,$98,$72,$72,$15
       .byte $15,$28,$28,$24,$24,$40,$40,$10,$58,$44,$0C,$68,$00,$45,$0C,$48
       .byte $00,$01,$18,$08,$40,$08,$10,$00,$E0,$40,$20,$00,$00,$00,$00,$00
       .byte $F0,$40,$20,$10,$00,$00,$00,$00,$F8,$60,$20,$10,$08,$00,$00,$00
       .byte $FC,$60,$30,$18,$0C,$00,$00,$00,$FE,$70,$30,$18,$0C,$06,$00,$00
       .byte $FF,$78,$38,$1C,$0E,$07,$03,$00,$14,$1C,$08,$00,$00,$00,$00,$00
       .byte $14,$14,$1C,$08,$00,$00,$00,$00,$36,$36,$3E,$1C,$08,$00,$00,$00
       .byte $36,$36,$3E,$2A,$1C,$08,$00,$00,$66,$66,$7E,$5A,$3C,$18,$00,$00
       .byte $E7,$E7,$E7,$FF,$5A,$3C,$18,$60,$90,$90,$90,$90,$90,$60,$E0,$40
       .byte $40,$40,$40,$C0,$40,$F0,$80,$40,$20,$10,$90,$60,$60,$90,$10,$20
       .byte $10,$90,$60,$10,$10,$10,$F8,$90,$50,$30,$60,$90,$10,$E0,$80,$80
       .byte $F0,$60,$90,$90,$E0,$80,$90,$60,$40,$40,$20,$20,$10,$90,$F0,$60
       .byte $90,$90,$60,$90,$90,$60,$60,$90,$10,$70,$90,$90,$60,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$24,$98,$72,$15,$28,$24,$40,$00,$22,$08,$5C
       .byte $3B,$98,$25,$12,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$18,$15,$01
       .byte $18,$0C,$14,$10,$08,$37,$19,$04,$1C,$0C,$14,$84,$04,$00,$08,$19
       .byte $00,$5A,$10,$40,$00,$09,$0C,$09,$00,$41,$58,$28,$14,$30,$00,$48
       .byte $18,$04,$08,$4C,$14,$00,$10,$0D,$04,$08,$0C,$01,$04,$40,$5C,$00
       .byte $00,$68,$01,$A8,$08,$04,$18
LFC00: .byte $00,$00,$10,$10,$20,$20,$10,$10,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0
       .byte $F0,$F0,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20
       .byte $10,$10,$00,$00,$00,$00,$00,$00,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0
       .byte $00,$00,$00,$00,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0,$00,$00,$00,$00
       .byte $10,$10,$20,$20,$10,$10,$10,$10,$10,$10,$20,$20,$10,$10,$00,$00
       .byte $F0,$F0,$E0,$E0,$F0,$F0,$F0,$F0,$00,$00,$00,$00,$F0,$F0,$E0,$E0
       .byte $F0,$F0,$00,$00,$00,$00,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0,$E0,$E0
       .byte $F0,$F0,$00,$00,$10,$10,$20,$20,$10,$10,$00,$00,$F0,$F0,$E0,$E0
       .byte $F0,$F0,$00,$00,$00,$00,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0,$00,$00
       .byte $F0,$F0,$E0,$E0,$F0,$F0,$00,$00,$00,$00,$00,$00,$10,$10,$20,$20
       .byte $10,$10,$00,$00,$00,$00,$00,$00,$10,$10,$20,$20,$10,$10,$20,$20
       .byte $10,$10,$00,$00,$00,$00,$00,$00,$10,$10,$20,$20,$10,$10,$F0,$F0
       .byte $E0,$E0,$F0,$F0,$10,$10,$20,$20,$10,$10,$00,$00,$00,$00,$00,$00
       .byte $10,$10,$20,$20,$10,$10,$00,$00,$00,$00,$F0,$F0,$E0,$E0,$E0,$E0
       .byte $F0,$F0,$00,$00,$F0,$F0,$E0,$E0,$F0,$F0,$00,$00,$10,$10,$20,$20
       .byte $20,$20,$10,$10,$00,$00,$10,$20,$10,$00,$F0,$E0,$F0,$00,$00,$00
LFD00: STA    WSYNC   
LFD02: STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFD16   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFD24   
LFD16: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFD24: DEX            
       BEQ    LFD45   
       NOP            
       DEC    $9B     
       LDY    $9B     
       CPY    #$10    
       BCC    LFD3A   
       LDA    #$00    
       STA    GRP0    
       STA    GRP1    
       LDA    ($80,X) 
       BCS    LFD42   
LFD3A: LDA    ($A2),Y 
       STA    GRP0    
       LDA    ($A4),Y 
       STA    GRP1    
LFD42: JMP    LFD02   
LFD45: LDA    ($80,X) 
       LDA    CXM0P   
       STA    $D2     
       STA    CXCLR   
       LDA    $80     
       NOP            
       NOP            
       STA    GRP0    
       STA    GRP1    
       LDA    #$14    
       STA    COLUBK  
       STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFD6D   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFD7B   
LFD6D: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFD7B: DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFD8D   
       LDX    $80     
       LDY    #$00    
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFD99   
LFD8D: LDA    ($A0),Y 
       STA    ENAM0   
       TAX            
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       TAY            
LFD99: LDA    #$70    
       STA    HMP0    
       STA    HMOVE   
       LDA    $94     
       CMP    #$0F    
       BCC    LFDAC   
       CMP    #$70    
       BCC    LFDBB   
       JMP    LFDCB   
LFDAC: SEC            
LFDAD: SBC    #$0F    
       BCS    LFDAD   
       NOP            
       STA    RESP0   
       STX    HMM0    
       STY    HMM1    
       JMP    LFDDF   
LFDBB: SBC    #$05    
       SEC            
LFDBE: SBC    #$0F    
       BCS    LFDBE   
       STA    RESP0   
       STX    HMM0    
       STY    HMM1    
       JMP    LFDDF   
LFDCB: LDA    ($80,X) 
       LDA    $80     
       LDA    $94     
       STX    HMM0    
       STY    HMM1    
       SBC    #$48    
       SEC            
LFDD8: SBC    #$0F    
       BCS    LFDD8   
       NOP            
       STA    RESP0   
LFDDF: STA    WSYNC   
       STA    HMOVE   
       STX    ENAM0   
       STY    ENAM1   
       TAX            
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFDFA   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFE08   
LFDFA: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFE08: TXA            
       EOR    #$FF    
       CLC            
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFE2A   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFE38   
LFE2A: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFE38: LDA    #$00    
       STA    HMP0    
       STA    NUSIZ0  
       LDA    #$05    
       STA    NUSIZ1  
       LDA    #$00    
       STA    COLUP0  
       LDA    #$16    
       STA    COLUP1  
       LDA    #$00    
       STA    VDELP0  
       LDA    #$00    
       STA    VDELP1  
       LDA    #$18    
       STA    COLUBK  
       STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFE6A   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFE78   
LFE6A: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFE78: DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFE8B   
       LDA    #$00    
       TAY            
       TAX            
       NOP            
       LDA    ($80,X) 
       LDA    $80     
       BCS    LFE97   
LFE8B: LDA    ($A0),Y 
       STA    ENAM0   
       TAX            
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       TAY            
LFE97: LDA    #$70    
       STA    HMP1    
       STA    HMOVE   
       LDA    $95     
       CMP    #$0F    
       BCC    LFEAA   
       CMP    #$70    
       BCC    LFEB9   
       JMP    LFEC9   
LFEAA: SEC            
LFEAB: SBC    #$0F    
       BCS    LFEAB   
       NOP            
       STA    RESP1   
       STX    HMM0    
       STY    HMM1    
       JMP    LFEDD   
LFEB9: SBC    #$05    
       SEC            
LFEBC: SBC    #$0F    
       BCS    LFEBC   
       STA    RESP1   
       STX    HMM0    
       STY    HMM1    
       JMP    LFEDD   
LFEC9: LDA    ($80,X) 
       LDA    $80     
       LDA    $95     
       STX    HMM0    
       STY    HMM1    
       SBC    #$48    
       SEC            
LFED6: SBC    #$0F    
       BCS    LFED6   
       NOP            
       STA    RESP1   
LFEDD: STA    WSYNC   
       STA    HMOVE   
       STX    ENAM0   
       STY    ENAM1   
       TAX            
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFEF8   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFF06   
LFEF8: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFF06: TXA            
       EOR    #$FF    
       CLC            
       SBC    #$06    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1    
       LDA    #$00    
       STA    HMP0    
       STA    WSYNC   
       STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFF2C   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFF3A   
LFF2C: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFF3A: LDA    #$00    
       STA    HMP1    
       LDX    #$00    
       LDA    ($80,X) 
       LDA    ($80,X) 
       LDA    ($80,X) 
       LDA    ($80,X) 
       NOP            
       LDA    #$C8    
       STA    COLUBK  
LFF4D: STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFF61   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFF6F   
LFF61: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFF6F: LDA    LF89C,X 
       STA    GRP1    
       LDY    $87     
       LDA    LFC00,Y 
       STA    HMP1    
       DEC    $9C     
       LDY    $9C     
       CPY    #$08    
       BCC    LFF89   
       LDA    $80     
       STA    $80     
       BCS    LFF8D   
LFF89: LDA    ($A6),Y 
       STA    GRP0    
LFF8D: STA    HMOVE   
       DEC    $9A     
       LDY    $9A     
       CPY    $85     
       BCC    LFFA1   
       LDA    $80     
       NOP            
       NOP            
       LDA    ($80,X) 
       LDA    ($80,X) 
       BCS    LFFAF   
LFFA1: LDA    ($A0),Y 
       STA    ENAM0   
       STA    HMM0    
       EOR    #$F0    
       ADC    #$10    
       STA    ENAM1   
       STA    HMM1    
LFFAF: INC    $87     
       INX            
       CPX    $84     
       BEQ    LFFCC   
       NOP            
       DEC    $9D     
       LDY    $9D     
       CPY    #$08    
       BCC    LFFC5   
       LDA    $80     
       STA    $80     
       BCS    LFFC9   
LFFC5: LDA    ($A8),Y 
       STA    GRP0    
LFFC9: JMP    LFF4D   
LFFCC: STA    WSYNC   
       LDA    #$00    
       STA    COLUBK  
       STA    GRP0    
       STA    GRP1    
       STA    GRP0    
       STA    GRP1    
       STA    ENAM0   
       STA    ENAM1   
       STA    HMCLR   
       RTS            

LFFE1: .byte $10,$08,$00,$50,$04,$00,$00,$A1,$0C,$00,$08,$17,$08,$08,$00,$58
       .byte $08,$00,$00,$18,$1C,$08
LFFF7: .byte $F0,$D0,$00,$00,$00,$00,$F0,$00,$00
