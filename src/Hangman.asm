; Disassembly of roms/Hangman.bin
; Disassembled Tue Oct  6 15:21:49 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Hangman.bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
COLUP0  =  $06
CTRLPF  =  $0A
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
HMCLR   =  $2B
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
TIM64T  =  $0296

       ORG $F000
LF000: LDA    INTIM   
       BNE    LF000   
       STA    WSYNC   
       STA    VBLANK  
       LDA    #$02    
       STA    CTRLPF  
       LDX    #$04    
LF00F: STA    WSYNC   
       STA    HMCLR   
       DEX            
       BNE    LF00F   
       LDX    #$05    
       LDA    #$00    
       STA    $E7     
       STA    $E8     
LF01E: STA    WSYNC   
       LDA    $E7     
       STA    PF1     
       LDA    $EB     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF7DD,Y 
       CLC            
       ADC    LF7E8,X 
       TAY            
       LDA    LF792,Y 
       AND    #$F0    
       STA    $E7     
       LDA    $E8     
       STA    PF1     
       LDA    $EB     
       AND    #$0F    
       TAY            
       LDA    LF7DD,Y 
       CLC            
       ADC    LF7E8,X 
       STA    WSYNC   
       TAY            
       LDA    LF792,Y 
       AND    #$0F    
       ORA    $E7     
       STA    $E7     
       STA    PF1     
       LDA    $EC     
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       LDA    LF7DD,Y 
       LDY    $E8     
       STY    PF1     
       CLC            
       ADC    LF7E8,X 
       TAY            
       LDA    LF792,Y 
       AND    #$F0    
       STA    $E8     
       LDA    $EC     
       AND    #$0F    
       STA    WSYNC   
       TAY            
       LDA    LF7DD,Y 
       LDY    $E7     
       STY    PF1     
       CLC            
       ADC    LF7E8,X 
       TAY            
       LDA    LF792,Y 
       AND    #$0F    
       NOP            
       NOP            
       NOP            
       ORA    $E8     
       STA    $E8     
       STA    PF1     
       DEX            
       BMI    LF09D   
       JMP    LF01E   
LF09D: LDA    #$00    
       NOP            
       NOP            
       NOP            
       NOP            
       STA    PF0     
       STA    PF2     
       STA    PF1     
       STA    CTRLPF  
       LDX    #$04    
LF0AD: STA    WSYNC   
       DEX            
       BNE    LF0AD   
       LDY    #$29    
       LDA    #$32    
       STA    $E5     
       LDX    #$00    
LF0BA: STA    WSYNC   
LF0BC: LDA    $80,X   
       ASL            
       ASL            
       ASL            
       ASL            
       STA    PF0     
       LDA    $94,X   
       STA    PF1     
       LDA    $A8,X   
       STA    PF2     
       LDA    $80,X   
       STA    PF0     
       LDA    $BC,X   
       STA    PF1     
       INY            
       LDA    $D0,X   
       STA    PF2     
       CPY    $E5     
       BCC    LF0BA   
       INX            
       TYA            
       CLC            
       ADC    #$09    
       STA    $E5     
LF0E4: INY            
       BEQ    LF0F7   
       CPY    #$DA    
       BCC    LF0BC   
       LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       STA    WSYNC   
       BEQ    LF0E4   
LF0F7: LDA    #$2A    
       STA    HMCLR   
       STA    WSYNC   
       STA    VBLANK  
       STA    VSYNC   
       STA    TIM8T   
       INC    $E4     
LF106: LDA    INTIM   
       BNE    LF106   
       STA    WSYNC   
       STA    VSYNC   
       LDA    #$28    
       STA    TIM64T  
       JMP    LF208   

START:
       SEI            
       CLD            
       LDA    #$10    
       STA    $ED     
LF11D: LDX    #$FF    
       TXS            
       STX    $EF     
       STX    $F0     
       LDA    #$00    
       LDX    #$64    
LF128: STA    $7F,X   
       DEX            
       BNE    LF128   
       LDX    #$2A    
LF12F: STA    $43,X   
       DEX            
       BNE    LF12F   
       LDX    #$0E    
LF136: STA    $F0,X   
       DEX            
       BNE    LF136   
       STA    AUDV0   
       STA    AUDV1   
       LDA    $EE     
       AND    #$03    
       ASL            
       ASL            
       TAY            
       LDA    SWCHB   
       AND    #$08    
       BNE    LF14F   
       LDY    #$10    
LF14F: LDA    LF7C9,Y 
       STA    COLUP0,X
       INY            
       INX            
       CPX    #$04    
       BCC    LF14F   
       LDA    #$1F    
       STA    AUDF0   
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC0   
       STA    AUDC1   
       LDA    #$FC    
       STA    $93     
       LDA    #$EF    
       STA    $A7     
       LDA    #$7D    
       STA    $BB     
       LDA    #$BE    
       STA    $CF     
       LDA    #$1F    
       STA    $E3     
       LDA    $E9     
       BPL    LF180   
       ORA    #$40    
LF180: STA    $E9     
LF182: INC    $E4     
       LDA    $E4     
       ASL            
       ASL            
       STA    $E5     
       LDA    $FF     
       AND    #$07    
       ORA    #$F8    
       STA    $E6     
       LDX    $EE     
       CPX    #$00    
       BEQ    LF1B6   
       CPX    #$04    
       BEQ    LF1B6   
       CPX    #$01    
       BEQ    LF1BC   
       CPX    #$05    
       BEQ    LF1BC   
       CPX    #$02    
       BEQ    LF1C2   
       CPX    #$06    
       BEQ    LF1C2   
       CPX    #$03    
       BEQ    LF1C8   
       CPX    #$07    
       BEQ    LF1C8   
       BNE    LF205   
LF1B6: AND    #$F9    
       STA    $E6     
       BNE    LF1D2   
LF1BC: AND    #$FB    
       STA    $E6     
       BNE    LF1D2   
LF1C2: AND    #$FD    
       STA    $E6     
       BNE    LF1D2   
LF1C8: LDA    $E5     
       CMP    #$F8    
       BEQ    LF182   
       CMP    #$FC    
       BEQ    LF182   
LF1D2: LDY    #$00    
       LDX    #$00    
LF1D6: LDA    ($E5),Y 
       LSR            
       LSR            
       AND    #$1F    
       STA    $F3,X   
       INY            
       LDA    ($E5),Y 
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $F4,X   
       DEY            
       LDA    ($E5),Y 
       ASL            
       ASL            
       ASL            
       ORA    $F4,X   
       AND    #$1F    
       STA    $F4,X   
       INY            
       LDA    ($E5),Y 
       AND    #$1F    
       STA    $F5,X   
       TXA            
       BNE    LF205   
       INX            
       INX            
       INX            
       INY            
       JMP    LF1D6   
LF205: JMP    LF000   
LF208: LDA    $ED     
       CMP    #$10    
       BNE    LF218   
       LDA    #$FF    
       STA    $EE     
       LDA    #$3F    
       STA    $FD     
       BNE    LF262   
LF218: LDA    SWCHB   
       ROR            
       BCS    LF231   
       LDA    #$00    
       BIT    $ED     
       BVS    LF228   
       STA    $EB     
       STA    $EC     
LF228: STA    $EA     
       LDA    #$FF    
       STA    $ED     
       JMP    LF11D   
LF231: LDA    $E4     
       AND    #$3F    
       BNE    LF249   
       STA    $EA     
       INC    $FF     
       INC    $FE     
       INC    $F1     
       BNE    LF249   
       LDA    #$0B    
       STA    $F2     
       LDA    #$00    
       STA    $ED     
LF249: LDA    SWCHB   
       AND    #$02    
       BEQ    LF254   
       STA    $EA     
       BNE    LF296   
LF254: BIT    $EA     
       BMI    LF296   
       LDA    #$FF    
       STA    $EA     
       LDA    #$3F    
       STA    $FD     
       INC    $EE     
LF262: LDX    #$00    
       STX    $EB     
       LDX    $EE     
       LDA    #$AA    
       STA    $EC     
LF26C: SED            
       LDA    $EB     
       CLC            
       ADC    #$01    
       STA    $EB     
       CLD            
       DEX            
       BNE    LF26C   
       STX    $ED     
       STX    $E4     
       LDA    $EE     
       CMP    #$09    
       BCC    LF286   
       STX    $EB     
       STX    $EE     
LF286: SED            
       CLC            
       LDA    $EB     
       ADC    #$01    
       STA    $EB     
       CLD            
       LDX    $EE     
       LDA    LF7EE,X 
       STA    $E9     
LF296: LDA    $EE     
       AND    #$03    
       ASL            
       ASL            
       TAY            
       LDX    #$00    
       LDA    $ED     
       EOR    #$FF    
       AND    $FF     
       STA    $E8     
       LDA    #$FF    
       STA    $E7     
       LDA    SWCHB   
       AND    #$08    
       BNE    LF2B8   
       LDA    #$0F    
       STA    $E7     
       LDY    #$10    
LF2B8: LDA    LF7C9,Y 
       EOR    $E8     
       AND    $E7     
       BIT    $ED     
       BVS    LF2CB   
       STA    COLUP0,X
       LDA    #$00    
       STA    AUDV0   
       STA    AUDV1   
LF2CB: INY            
       INX            
       CPX    #$04    
       BCC    LF2B8   
       BIT    $E9     
       BVS    LF314   
       BIT    $ED     
       BVC    LF314   
       LDA    $FD     
       CMP    #$3F    
       BEQ    LF314   
       BIT    SWCHB   
       BVC    LF2EA   
       LDA    $E9     
       AND    #$01    
       BEQ    LF2F5   
LF2EA: BIT    SWCHB   
       BPL    LF314   
       LDA    $E9     
       AND    #$01    
       BEQ    LF314   
LF2F5: LDA    $FE     
       CMP    #$09    
       BCC    LF314   
       CMP    #$13    
       BCC    LF302   
       JMP    LF4B7   
LF302: LDA    $E4     
       AND    #$01    
       BNE    LF314   
       STA    AUDV1   
       LDA    $E4     
       AND    #$3F    
       BNE    LF314   
       LDA    #$08    
       STA    AUDV1   
LF314: INC    $F0     
       LDA    $F0     
       CMP    #$08    
       BNE    LF320   
       LDA    #$00    
       STA    AUDV0   
LF320: LDA    $FD     
       CMP    #$3F    
       BNE    LF329   
       JMP    LF3DB   
LF329: LDA    $F2     
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF35A   
       LDA    $F0     
       CMP    #$D0    
       BCC    LF33A   
       JMP    LF3DB   
LF33A: LDA    $E9     
       AND    #$01    
       BNE    LF34E   
       LDA    SWCHA   
       ASL            
       ASL            
       ASL            
       BCC    LF382   
       ASL            
       BCC    LF35A   
       JMP    LF3DB   
LF34E: LDA    SWCHA   
       ROR            
       BCC    LF35A   
       ROR            
       BCC    LF382   
       JMP    LF3DB   
LF35A: LDA    $F0     
       CMP    #$0C    
       BCS    LF362   
       BCC    LF3DB   
LF362: LDA    #$00    
       STA    $F0     
       STA    $F1     
LF368: INC    $EF     
       LDA    #$1B    
       CMP    $EF     
       BNE    LF374   
       LDA    #$00    
       STA    $EF     
LF374: LDY    $EF     
       LDA    LF748,Y 
       LDX    LF762,Y 
       AND    $F9,X   
       BNE    LF368   
       BEQ    LF3AD   
LF382: LDA    $F0     
       CMP    #$0C    
       BCC    LF3DB   
       LDA    #$00    
       STA    $F0     
       STA    $F1     
LF38E: DEC    $EF     
       LDA    $EF     
       CMP    #$FF    
       BEQ    LF39D   
       CMP    #$FE    
       BEQ    LF39D   
       JMP    LF3A1   
LF39D: LDA    #$1A    
       STA    $EF     
LF3A1: LDY    $EF     
       LDA    LF748,Y 
       LDX    LF762,Y 
       AND    $F9,X   
       BNE    LF38E   
LF3AD: LDA    $EF     
       ASL            
       ASL            
       CLC            
       ADC    $EF     
       ADC    #$04    
       TAY            
       LDX    #$05    
LF3B9: LDA    LF6A6,Y 
       STA    $C0,X   
       DEY            
       DEX            
       BNE    LF3B9   
       LDA    #$7F    
       AND    $F2     
       STA    $F2     
       BIT    $E9     
       BVS    LF3D3   
       LDY    $EF     
       LDA    LF72D,Y 
       STA    AUDF0   
LF3D3: LDA    #$08    
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
LF3DB: LDA    $EF     
       CMP    #$FF    
       BNE    LF3E7   
       LDA    #$00    
       STA    $EF     
       BEQ    LF3AD   
LF3E7: LDA    #$00    
       STA    $E5     
       LDA    $FD     
       CMP    #$3F    
       BNE    LF41F   
       LDA    #$00    
       STA    $F2     
       BIT    $E9     
       BVC    LF41C   
       LDA    #$BF    
       AND    $E9     
       EOR    #$01    
       STA    $E9     
       LDA    #$FF    
       STA    $EF     
       LDA    #$00    
       STA    $FD     
       LDX    #$05    
LF40B: STA    $8C,X   
       STA    $A0,X   
       STA    $B4,X   
       STA    $C8,X   
       STA    $DC,X   
       DEX            
       BNE    LF40B   
       STA    $FE     
       STA    $F0     
LF41C: JMP    LF627   
LF41F: LDA    $F2     
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF43A   
       LDA    $F2     
       BPL    LF42E   
       JMP    LF627   
LF42E: LDA    $E9     
       AND    #$01    
       TAX            
       LDA    INPT4,X 
       BPL    LF43A   
       JMP    LF627   
LF43A: LDA    #$80    
       ORA    $F2     
       STA    $F2     
       BIT    $E9     
       BVC    LF45B   
       LDA    #$40    
       STA    $E5     
       LDA    $FD     
       ROL            
       ROL            
       LDX    #$FF    
LF44E: LSR    $E5     
       INX            
       ROL            
       BCS    LF44E   
       LDA    $EF     
       STA    $F3,X   
       JMP    LF515   
LF45B: LDY    $EF     
       LDA    LF748,Y 
       LDX    LF762,Y 
       ORA    $F9,X   
       STA    $F9,X   
       LDA    $F8     
       CMP    $EF     
       BNE    LF471   
       LDA    #$01    
       STA    $E5     
LF471: LDA    $F7     
       CMP    $EF     
       BNE    LF47D   
       LDA    #$02    
       ORA    $E5     
       STA    $E5     
LF47D: LDA    $F6     
       CMP    $EF     
       BNE    LF489   
       LDA    #$04    
       ORA    $E5     
       STA    $E5     
LF489: LDA    $F5     
       CMP    $EF     
       BNE    LF495   
       LDA    #$08    
       ORA    $E5     
       STA    $E5     
LF495: LDA    $F4     
       CMP    $EF     
       BNE    LF4A1   
       LDA    #$10    
       ORA    $E5     
       STA    $E5     
LF4A1: LDA    $F3     
       CMP    $EF     
       BNE    LF4AD   
       LDA    #$20    
       ORA    $E5     
       STA    $E5     
LF4AD: LDA    $E5     
       BNE    LF515   
       LDA    $EF     
       CMP    #$1A    
       BEQ    LF512   
LF4B7: BIT    $ED     
       BVC    LF4E4   
       LDA    #$08    
       STA    AUDF0   
       STA    AUDV0   
       LDA    #$0F    
       STA    AUDC0   
       LDA    #$E0    
       STA    $F0     
       LDA    $F2     
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF4E4   
       CMP    #$0A    
       BNE    LF4E4   
       LDA    $E9     
       AND    #$C2    
       BNE    LF4E4   
       LDA    $EC     
       CLC            
       SED            
       ADC    #$01    
       STA    $EC     
       CLD            
LF4E4: INC    $F2     
       LDA    #$00    
       STA    $FE     
       STA    AUDV1   
       LDA    $F2     
       AND    #$0F    
       TAY            
       CPY    #$0C    
       BNE    LF4FA   
       DEY            
       DEC    $F2     
       BNE    LF506   
LF4FA: LDA    LF77B,Y 
       STA.wy $0094,Y 
       LDA    LF786,Y 
       STA.wy $00A8,Y 
LF506: LDA    $E9     
       AND    #$02    
       BEQ    LF512   
       LDA    $E9     
       EOR    #$01    
       STA    $E9     
LF512: JMP    LF627   
LF515: LDA    $EF     
       CMP    #$1A    
       BEQ    LF52D   
       LDA    #$08    
       STA    AUDF0   
       STA    AUDV0   
       LDA    #$0C    
       STA    AUDC0   
       LDA    #$E0    
       STA    $F0     
       LDA    #$00    
       STA    $FE     
LF52D: LDA    #$00    
       STA    AUDV1   
       LDA    $EF     
       ASL            
       ASL            
       CLC            
       ADC    $EF     
       ADC    #$04    
       TAY            
       LDX    #$05    
       LDA    $EF     
       CMP    #$1A    
       BNE    LF546   
       JMP    LF5ED   
LF546: LDA    LF6A6,Y 
       STA    $E6     
       STA    $E7     
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       ROR    $E6     
       ROL            
       STA    $E6     
       LDA    $E5     
       ORA    $FD     
       STA    $FD     
       LDA    $E5     
       AND    #$01    
       BEQ    LF57A   
       LDA    $E6     
       LSR            
       LSR            
       LSR            
       STA    $DC,X   
LF57A: LDA    $E5     
       AND    #$02    
       BEQ    LF587   
       LDA    $E7     
       ASL            
       ORA    $C8,X   
       STA    $C8,X   
LF587: LDA    $E5     
       AND    #$04    
       BEQ    LF5A2   
       LDA    $E6     
       ROL            
       BCC    LF59C   
       STA    $E8     
       LDA    #$80    
       ORA    $C8,X   
       STA    $C8,X   
       LDA    $E8     
LF59C: AND    #$F0    
       ORA    $8C,X   
       STA    $8C,X   
LF5A2: LDA    $E5     
       AND    #$08    
       BEQ    LF5AF   
       LDA    $E6     
       LSR            
       ORA    $B4,X   
       STA    $B4,X   
LF5AF: LDA    $E5     
       AND    #$10    
       BEQ    LF5CA   
       LDA    $E7     
       ROR            
       BCC    LF5C4   
       STA    $E8     
       LDA    #$01    
       ORA    $B4,X   
       STA    $B4,X   
       LDA    $E8     
LF5C4: AND    #$0F    
       ORA    $A0,X   
       STA    $A0,X   
LF5CA: LDA    $E5     
       AND    #$20    
       BEQ    LF5E6   
       LDA    $E6     
       LSR            
       AND    #$0C    
       ORA    $8C,X   
       STA    $8C,X   
       LDA    $E7     
       ASL            
       ASL            
       ASL            
       ASL            
       ASL            
       AND    #$E0    
       ORA    $A0,X   
       STA    $A0,X   
LF5E6: DEY            
       DEX            
       BEQ    LF5ED   
       JMP    LF546   
LF5ED: LDA    $F2     
       AND    #$0F    
       CMP    #$0B    
       BEQ    LF627   
       BIT    $E9     
       BVS    LF627   
       LDA    $EF     
       CMP    #$1A    
       BEQ    LF627   
       LDA    $FD     
       CMP    #$3F    
       BNE    LF627   
       LDA    $E9     
       AND    #$01    
       TAX            
       SED            
       LDA    $EB,X   
       CLC            
       ADC    #$01    
       CLD            
       STA    $EB,X   
       LDA    $E9     
       AND    #$C2    
       BEQ    LF627   
       LDA    $EB,X   
       CMP    #$05    
       BCC    LF627   
       LDA    #$00    
       STA    $ED     
       LDA    #$0B    
       STA    $F2     
LF627: LDA    $F3     
       CMP    #$1A    
       BNE    LF63B   
       LDA    #$F0    
       STA    $93     
       LDA    #$0F    
       STA    $A7     
       LDA    #$20    
       ORA    $FD     
       STA    $FD     
LF63B: LDA    $F4     
       CMP    #$1A    
       BNE    LF651   
       LDA    #$F0    
       AND    $A7     
       STA    $A7     
       LDA    #$7C    
       STA    $BB     
       LDA    #$10    
       ORA    $FD     
       STA    $FD     
LF651: LDA    $F5     
       CMP    #$1A    
       BNE    LF663   
       LDA    #$01    
       AND    $BB     
       STA    $BB     
       LDA    #$08    
       ORA    $FD     
       STA    $FD     
LF663: LDA    $F6     
       CMP    #$1A    
       BNE    LF679   
       LDA    #$0F    
       AND    $93     
       STA    $93     
       LDA    #$3E    
       STA    $CF     
       LDA    #$04    
       ORA    $FD     
       STA    $FD     
LF679: LDA    $F7     
       CMP    #$1A    
       BNE    LF68B   
       LDA    #$80    
       AND    $CF     
       STA    $CF     
       LDA    #$02    
       ORA    $FD     
       STA    $FD     
LF68B: LDA    $F8     
       CMP    #$1A    
       BNE    LF69B   
       LDA    #$00    
       STA    $E3     
       LDA    #$01    
       ORA    $FD     
       STA    $FD     
LF69B: LDA    #$00    
       STA    PF0     
       STA    PF1     
       STA    PF2     
       JMP    LF000   
LF6A6: .byte $04,$0A,$11,$1F,$11,$1F,$09,$0F,$09,$1F,$1F,$10,$10,$10,$1F,$1F
       .byte $09,$09,$09,$1F,$1F,$10,$1E,$10,$1F,$1F,$10,$1E,$10,$10,$1F,$10
       .byte $13,$11,$1F,$11,$11,$1F,$11,$11,$04,$04,$04,$04,$04,$01,$01,$01
       .byte $11,$1F,$12,$14,$18,$14,$12,$10,$10,$10,$10,$1F,$1F,$15,$15,$15
       .byte $15,$11,$19,$15,$13,$11,$1F,$11,$11,$11,$1F,$1F,$11,$1F,$10,$10
       .byte $1E,$12,$12,$16,$1F,$1E,$12,$1E,$14,$12,$1F,$10,$1F,$01,$1F,$1F
       .byte $04,$04,$04,$04,$11,$11,$11,$11,$1F,$11,$11,$11,$0A,$04,$15,$15
       .byte $15,$15,$1F,$11,$0A,$04,$0A,$11,$11,$0A,$04,$04,$04,$1F,$02,$04
       .byte $08,$1F,$1F,$1F,$1F,$1F,$1F
LF72D: .byte $1C,$1C,$12,$12,$10,$10,$12,$14,$14,$16,$16,$19,$19,$19,$19,$1C
       .byte $12,$12,$14,$14,$16,$19,$12,$16,$16,$19,$00
LF748: .byte $80,$40,$20,$10,$08,$04,$02,$01,$80,$40,$20,$10,$08,$04,$02,$01
       .byte $80,$40,$20,$10,$08,$04,$02,$01,$80,$40
LF762: .byte $00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$01,$01,$01,$01,$01,$01
       .byte $02,$02,$02,$02,$02,$02,$02,$02,$03
LF77B: .byte $03,$FF,$C0,$C3,$C3,$C1,$DF,$D7,$D3,$DB,$C2
LF786: .byte $C6,$3F,$04,$05,$05,$04,$77,$53,$11,$1F,$01,$03
LF792: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE,$00,$00,$00,$00,$00
LF7C9: .byte $F6,$2A,$98,$42,$2A,$46,$74,$E8,$56,$2A,$16,$A2,$F6,$46,$83,$2A
       .byte $00,$0C,$04,$08
LF7DD: .byte $00,$05,$0A,$0F,$14,$19,$1E,$23,$28,$2D,$32
LF7E8: .byte $04,$04,$03,$02,$01,$00
LF7EE: .byte $00,$00,$00,$00,$02,$02,$02,$02,$C0,$EA,$EA,$EA,$EA,$EA,$EA,$EA
       .byte $EA,$EA,$00,$2E,$52,$7A,$00,$B3,$12,$3A,$00,$C0,$21,$BA,$01,$76
       .byte $03,$12,$02,$31,$22,$A4,$02,$C0,$63,$5A,$04,$0B,$2F,$5A,$04,$84
       .byte $37,$5A,$04,$85,$3A,$24,$04,$92,$4F,$5A,$04,$93,$4C,$91,$05,$13
       .byte $4C,$91,$05,$60,$09,$5A,$05,$74,$13,$5A,$05,$C0,$4A,$7A,$06,$20
       .byte $34,$47,$06,$28,$34,$DA,$06,$2E,$59,$BA,$08,$0F,$6B,$5A,$08,$E8
       .byte $2D,$78,$08,$EE,$3A,$44,$09,$64,$01,$BA,$09,$64,$02,$3A,$09,$CB
       .byte $3A,$3A,$09,$D4,$2C,$7A,$0C,$80,$47,$5A,$0D,$CB,$2F,$5A,$10,$11
       .byte $2F,$1A,$12,$42,$01,$E4,$12,$A4,$47,$1A,$14,$0B,$48,$9A,$15,$74
       .byte $14,$B8,$16,$28,$11,$A3,$19,$05,$4F,$5A,$19,$60,$0F,$5A,$1A,$24
       .byte $11,$BA,$1C,$0B,$17,$5A,$1C,$15,$13,$5A,$1C,$80,$47,$5A,$1D,$0A
       .byte $13,$5A,$1D,$D4,$47,$5A,$21,$B5,$11,$B3,$26,$8C,$3F,$5A,$26,$92
       .byte $4F,$5A,$28,$84,$3F,$5A,$29,$0D,$0F,$5A,$29,$AE,$5B,$5A,$2C,$0D
       .byte $0F,$5A,$2C,$14,$18,$FA,$2C,$80,$3F,$5A,$2D,$06,$1E,$7A,$2D,$13
       .byte $4D,$64,$2D,$0A,$13,$5A,$2D,$15,$13,$5A,$2D,$CE,$2B,$5A,$2D,$D6
       .byte $12,$3A,$2E,$8C,$04,$91,$30,$06,$34,$93,$30,$0A,$13,$5A,$30,$0D
       .byte $63,$5A,$30,$12,$1F,$5A,$30,$91,$47,$1A,$30,$8B,$39,$BA,$31,$0B
       .byte $2B,$5A,$31,$D3,$1C,$91,$32,$82,$1F,$5A,$32,$92,$4F,$5A,$34,$0C
       .byte $13,$5A,$34,$95,$12,$3A,$35,$06,$1E,$7A,$35,$D3,$13,$5A,$36,$91
       .byte $48,$9A,$38,$B3,$11,$BA,$39,$A2,$13,$5A,$39,$E4,$37,$5A,$3A,$A4
       .byte $47,$5A,$3C,$02,$2B,$5A,$3D,$02,$2B,$5A,$3D,$13,$08,$FA,$3D,$60
       .byte $21,$BA,$3D,$60,$63,$5A,$3D,$64,$02,$44,$3E,$24,$4E,$78,$3E,$8B
       .byte $2F,$5A,$44,$80,$0F,$5A,$44,$8F,$03,$1A,$45,$03,$13,$5A,$45,$06
       .byte $1E,$7A,$45,$D4,$34,$7A,$48,$08,$0F,$5A,$48,$47,$39,$CB,$48,$EE
       .byte $13,$5A,$49,$0B,$11,$B3,$49,$0C,$3D,$64,$49,$64,$11,$FA,$49,$80
       .byte $2D,$7A,$49,$CC,$13,$5A,$49,$CE,$37,$5A,$4A,$6E,$3F,$5A,$4C,$0A
       .byte $13,$5A,$4C,$8B,$2F,$5A,$4C,$E0,$35,$5A,$4C,$E4,$22,$3A,$4C,$E4
       .byte $44,$9A,$4C,$E4,$63,$5A,$4C,$E8,$35,$5A,$4C,$EE,$48,$9A,$4C,$F1
       .byte $10,$9A,$4D,$0C,$13,$5A,$4D,$C3,$03,$1A,$4E,$24,$13,$5A,$4E,$28
       .byte $3F,$5A,$54,$91,$48,$9A,$54,$91,$63,$5A,$58,$0B,$2B,$5A,$58,$80
       .byte $2B,$5A,$58,$06,$39,$BA,$58,$80,$47,$5A,$58,$84,$2B,$5A,$58,$E0
       .byte $4F,$5A,$58,$E4,$44,$9A,$58,$E8,$08,$FA,$58,$E8,$4C,$9A,$59,$0D
       .byte $2B,$5A,$59,$D4,$2C,$7A,$5A,$24,$34,$47,$5A,$28,$4C,$9A,$60,$8B
       .byte $2D,$D6,$00,$32,$3A,$21,$00,$47,$13,$5A,$00,$53,$22,$A4,$00,$6C
       .byte $22,$24,$00,$75,$20,$44,$00,$74,$2E,$7A,$01,$6B,$3A,$DA,$01,$8E
       .byte $34,$DA,$01,$94,$48,$9A,$01,$AD,$50,$0B,$01,$B2,$58,$91,$04,$86
       .byte $21,$BA,$05,$64,$00,$47,$05,$C0,$44,$7A,$05,$CB,$0D,$78,$05,$CD
       .byte $52,$5A,$06,$20,$54,$9A,$06,$88,$2C,$7A,$08,$EE,$3A,$44,$09,$CB
       .byte $51,$8D,$09,$CC,$04,$13,$09,$D4,$18,$FA,$09,$D4,$36,$7A,$0A,$91
       .byte $13,$5A,$0C,$85,$11,$A3,$0C,$8B,$03,$1A,$0D,$C2,$4D,$D1,$0E,$20
       .byte $30,$1A,$0E,$2E,$5A,$58,$10,$47,$3B,$5A,$10,$A5,$3A,$33,$11,$A9
       .byte $3B,$1A,$11,$AE,$50,$C7,$12,$42,$3A,$33,$12,$E2,$11,$7A,$12,$EF
       .byte $01,$A3,$15,$D1,$18,$93,$15,$D1,$4F,$1A,$16,$2E,$59,$BA,$19,$60
       .byte $31,$D1,$19,$D2,$49,$0F,$1A,$20,$36,$7A,$1A,$20,$64,$9A,$1A,$24
       .byte $10,$78,$1A,$28,$10,$BA,$1A,$84,$4A,$5A,$1C,$01,$22,$7A,$1C,$88
       .byte $18,$F3,$1D,$C0,$46,$44,$1D,$CE,$2B,$5A,$1E,$8C,$20,$7A,$21,$A2
       .byte $39,$84,$21,$B2,$10,$53,$24,$06,$18,$83,$29,$0D,$0D,$64,$2C,$80
       .byte $0C,$91,$2C,$86,$01,$7A,$2C,$8D,$1A,$67,$2D,$00,$05,$64,$2D,$C2
       .byte $02,$64,$2D,$D8,$01,$7A,$2E,$97,$52,$38,$30,$06,$20,$5A,$30,$80
       .byte $36,$7A,$30,$83,$0D,$64,$31,$0D,$3A,$3A,$31,$0D,$52,$64,$31,$12
       .byte $1C,$0F,$31,$C3,$12,$2D,$31,$D3,$4D,$DA,$34,$12,$4F,$1A,$35,$D1
       .byte $30,$0B,$35,$D3,$20,$44,$38,$29,$10,$53,$3C,$0B,$33,$5A,$3D,$04
       .byte $08,$9A,$3E,$91,$4A,$84,$3C,$0D,$20,$5A,$3D,$11,$02,$64,$3D,$64
       .byte $0C,$C4,$3D,$D6,$12,$3A,$3E,$28,$0C,$9A,$44,$03,$02,$3A,$44,$08
       .byte $0C,$91,$44,$08,$48,$9A,$44,$80,$0F,$1A,$44,$80,$49,$CD,$44,$93
       .byte $22,$24,$44,$92,$51,$73,$46,$8B,$21,$A6,$46,$8C,$05,$64,$48,$82
       .byte $44,$93,$48,$95,$12,$24,$48,$E4,$11,$FA,$49,$06,$1E,$7A,$49,$0D
       .byte $08,$9A,$49,$6E,$18,$0D,$49,$84,$02,$3A,$49,$CB,$54,$9A,$49,$D1
       .byte $45,$D6,$4A,$71,$20,$53,$4A,$74,$3D,$03,$4A,$85,$14,$91,$4A,$86
       .byte $02,$3A,$4B,$0C,$05,$CB,$4C,$0B,$11,$B3,$4C,$0C,$3C,$91,$4C,$8C
       .byte $3E,$7A,$4C,$8C,$3C,$91,$4C,$E4,$16,$7A,$4C,$E8,$18,$FA,$4C,$F1
       .byte $10,$13,$4C,$EE,$50,$C7,$4C,$F4,$31,$FA,$4E,$34,$4C,$FA,$51,$AA
       .byte $21,$A3,$51,$B2,$00,$A4,$52,$26,$11,$B3,$54,$02,$02,$64,$54,$0D
       .byte $22,$47,$55,$02,$4D,$D1,$55,$12,$50,$0B,$55,$D8,$00,$C4,$58,$EE
       .byte $2C,$9A,$59,$12,$0D,$CC,$59,$CC,$01,$BA,$60,$80,$45,$BA,$65,$CD
       .byte $13,$5A,$00,$54,$4C,$9A,$00,$60,$3E,$7A,$01,$6B,$3B,$1A,$01,$6E
       .byte $38,$BA,$04,$80,$52,$78,$05,$02,$28,$91,$05,$68,$4A,$5A,$05,$D3
       .byte $01,$B8,$06,$28,$04,$9A,$08,$0D,$37,$1A,$09,$11,$09,$64,$09,$64
       .byte $02,$A4,$09,$68,$11,$B3,$09,$C3,$0D,$64,$09,$CC,$03,$5A,$0C,$13
       .byte $03,$5A,$0C,$16,$0D,$64,$0C,$82,$11,$13,$0C,$82,$11,$B3,$0C,$85
       .byte $10,$53,$0C,$85,$21,$A4,$0C,$8F,$3A,$44,$0C,$93,$10,$53,$0E,$28
       .byte $16,$7A,$10,$68,$05,$64,$10,$A5,$10,$53,$11,$A3,$10,$11,$11,$A6
       .byte $51,$65,$11,$B3,$20,$44,$12,$E0,$33,$5A,$12,$E2,$12,$52,$14,$0B
       .byte $4C,$91,$14,$94,$0C,$0B,$15,$02,$29,$64,$15,$04,$44,$44,$15,$06
       .byte $52,$24,$15,$0D,$22,$64,$18,$0B,$02,$F8,$18,$14,$36,$7A,$1A,$88
       .byte $0C,$9A,$1C,$15,$11,$BA,$1C,$19,$02,$23,$1D,$C0,$5F,$5A,$1E,$8C
       .byte $05,$64,$20,$CD,$22,$64,$21,$8F,$11,$7A,$21,$8F,$22,$47,$21,$8F
       .byte $52,$24,$21,$A3,$20,$53,$21,$A3,$50,$44,$21,$A9,$52,$38,$21,$B3
       .byte $11,$B3,$21,$B5,$22,$64,$25,$D5,$20,$0B,$2C,$08,$47,$5A,$2D,$0D
       .byte $18,$91,$2C,$86,$21,$CD,$2D,$C2,$2B,$5A,$2E,$91,$2B,$5A,$30,$0D
       .byte $1B,$1A,$30,$11,$21,$A4,$31,$12,$15,$13,$31,$CB,$4C,$8D,$31,$D1
       .byte $01,$64,$32,$93,$21,$B8,$31,$D4,$45,$BA,$34,$14,$48,$80,$35,$D1
       .byte $30,$0B,$35,$D5,$11,$7A,$38,$63,$22,$78,$38,$A5,$11,$A3,$39,$84
       .byte $2C,$93,$39,$88,$4F,$5A,$3A,$23,$01,$0D,$3C,$11,$00,$64,$3C,$91
       .byte $21,$7A,$3C,$E0,$48,$9A,$3D,$02,$29,$64,$3D,$60,$34,$9A,$3E,$24
       .byte $14,$91,$3E,$91,$20,$B8,$42,$80,$28,$9A,$42,$84,$4A,$7A,$42,$8E
       .byte $46,$8C,$44,$06,$13,$5A,$44,$0C,$05,$64,$44,$0D,$0D,$CC,$44,$13
       .byte $21,$CD,$44,$13,$21,$DA,$44,$80,$0A,$7A,$44,$80,$2D,$9A,$44,$82
       .byte $11,$B3,$44,$83,$10,$8C,$44,$8B,$20,$5A,$44,$8F,$11,$7A,$44,$95
       .byte $12,$33,$44,$95,$22,$44,$44,$95,$39,$73,$45,$D8,$01,$7A,$46,$92
       .byte $4D,$64,$48,$0D,$13,$5A,$48,$4E,$14,$BA,$48,$E0,$30,$9A,$48,$F1
       .byte $12,$C3,$49,$04,$18,$9A,$49,$60,$36,$7A,$49,$C1,$12,$3A,$49,$CB
       .byte $02,$3A,$4A,$8F,$3D,$64,$49,$E7,$12,$24,$4C,$11,$20,$A5,$4C,$8C
       .byte $3D,$DA,$4D,$0C,$11,$78,$4D,$0C,$20,$7A,$4D,$D7,$20,$5A,$51,$B1
       .byte $51,$78,$51,$E7,$39,$63,$54,$08,$37,$5A,$54,$11,$63,$5A,$54,$93
       .byte $3B,$5A,$55,$15,$20,$7A,$55,$CB,$51,$84,$55,$D4,$08,$FA,$58,$8B
       .byte $0F,$5A,$58,$E8,$33,$5A,$59,$13,$08,$FA,$5A,$24,$4C,$47,$64,$0D
       .byte $63,$5A,$00,$32,$52,$23,$00,$38,$4A,$5A,$00,$91,$20,$0B,$01,$12
       .byte $2C,$9A,$01,$68,$11,$BA,$01,$6F,$00,$40,$01,$80,$64,$83,$01,$94
       .byte $2C,$93,$02,$22,$4D,$02,$02,$4A,$12,$DA,$04,$0B,$2D,$D3,$04,$0D
       .byte $01,$A0,$05,$60,$64,$91,$06,$91,$10,$14,$08,$02,$4E,$92,$08,$09
       .byte $39,$64,$08,$0B,$20,$4E,$08,$0B,$2D,$D6,$08,$11,$10,$91,$08,$14
       .byte $2D,$5A,$08,$E0,$3A,$5A,$08,$E0,$49,$9A,$09,$68,$42,$84,$09,$C7
       .byte $3A,$33,$09,$D4,$49,$0D,$0C,$19,$65,$64,$0C,$81,$45,$12,$0C,$85
       .byte $21,$64,$0C,$8B,$50,$C4,$0D,$0D,$18,$F8,$0E,$2E,$5A,$58,$10,$12
       .byte $21,$78,$11,$68,$5D,$11,$12,$EE,$4D,$02,$15,$04,$47,$1A,$15,$C2
       .byte $52,$5A,$15,$D2,$49,$0B,$16,$20,$08,$12,$16,$24,$37,$38,$16,$8D
       .byte $1A,$92,$18,$14,$18,$9A,$18,$8D,$22,$92,$18,$98,$48,$91,$1A,$2E
       .byte $4E,$6E,$1A,$34,$0C,$C4,$1B,$11,$02,$64,$1C,$82,$4D,$02,$1C,$91
       .byte $12,$58,$1F,$01,$45,$03,$20,$D4,$01,$A0,$21,$A3,$20,$CE,$21,$8F
       .byte $01,$60,$21,$A5,$2E,$97,$22,$72,$11,$65,$24,$0B,$39,$F8,$24,$06
       .byte $50,$11,$24,$92,$4C,$91,$24,$96,$11,$7A,$25,$C2,$28,$98,$28,$E0
       .byte $29,$1A,$29,$03,$34,$98,$29,$0C,$39,$AE,$2C,$11,$0C,$91,$2C,$17
       .byte $22,$78,$2D,$0D,$10,$11,$2D,$19,$02,$23,$2D,$C0,$4C,$E4,$30,$0D
       .byte $20,$1A,$30,$11,$4F,$11,$31,$0B,$2C,$91,$32,$91,$32,$91,$31,$0D
       .byte $12,$3A,$32,$92,$09,$64,$32,$92,$12,$8C,$33,$12,$4D,$02,$34,$08
       .byte $54,$9A,$34,$81,$51,$60,$35,$02,$28,$8B,$35,$CC,$00,$7A,$35,$D9
       .byte $65,$64,$38,$12,$22,$5A,$38,$44,$2D,$D3,$39,$E0,$42,$84,$3A,$28
       .byte $11,$B3,$3A,$2D,$02,$64,$3C,$02,$20,$B8,$3C,$0B,$4E,$38,$3C,$11
       .byte $08,$8B,$3C,$13,$1D,$D2,$3C,$93,$22,$64,$3D,$60,$49,$80,$42,$80
       .byte $46,$79,$42,$84,$34,$47,$42,$84,$47,$1A,$44,$8B,$20,$85,$44,$0D
       .byte $09,$03,$44,$F8,$4C,$EC,$45,$D3,$02,$38,$46,$85,$15,$64,$48,$05
       .byte $12,$78,$48,$0B,$02,$38,$48,$80,$34,$44,$48,$88,$64,$9A,$48,$91
       .byte $11,$A4,$48,$F1,$12,$C3,$49,$0C,$21,$64,$49,$CB,$11,$8D,$49,$CD
       .byte $20,$5A,$4A,$91,$54,$98,$4C,$E4,$3A,$38,$4C,$E8,$10,$BA,$4C,$F6
       .byte $02,$33,$4D,$D1,$42,$84,$4F,$11,$01,$B3,$51,$A8,$42,$84,$54,$02
       .byte $52,$8C,$54,$0D,$22,$78,$55,$0E,$2C,$93,$55,$C6,$50,$9A,$58,$80
       .byte $3D,$CD,$58,$88,$44,$7A,$60,$02,$1E,$7A,$61,$04,$2C,$7A,$61,$CB
       .byte $2B,$5A,$64,$8D,$22,$67,$65,$13,$1C,$91,$EA,$EA,$17,$F1,$17,$F1
       .byte $17,$F1
