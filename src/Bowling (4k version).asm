; Disassembly of roms/Bowling (4k version).bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Bowling (4k version).bin
;

      processor 6502
VSYNC   =  $00
VBLANK  =  $01
WSYNC   =  $02
NUSIZ0  =  $04
COLUP0  =  $06
COLUP1  =  $07
COLUBK  =  $09
CTRLPF  =  $0A
REFP0   =  $0B
PF1     =  $0E
PF2     =  $0F
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
ENABL   =  $1F
HMP1    =  $21
HMOVE   =  $2A
HMCLR   =  $2B
CXCLR   =  $2C
CXM0P   =  $30
CXP0FB  =  $32
INPT4   =  $3C
SWCHA   =  $0280
SWCHB   =  $0282
INTIM   =  $0284
TIM8T   =  $0295
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
       LDX    #$FF    
       TXS            
       STX    TIM8T   
       JMP    LF2A7   
LF013: LDA    #$42    
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
       LDA    #$2D    
       STA    TIM64T  
       INC    $80     
       JSR    LF44E   
LF035: LDA    INTIM   
       BNE    LF035   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    REFP0   
       LDA    #$FF    
       STA    $D9     
LF046: LDA    #$00    
       STA    $D5     
       STA    $D6     
       STA    $D7     
       STA    $D8     
       STA    PF1     
       STA    PF2     
       STA    CTRLPF  
       INC    $D9     
       LDA    $D9     
       BNE    LF0AF   
       LDX    #$00    
LF05E: STA    WSYNC   
       LDA    $D5     
       STA    PF1     
       LDY    #$04    
       NOP            
LF067: DEY            
       BPL    LF067   
       LDA    $D6     
       STA    PF1     
       STX    $D7     
       LDA    $A4     
       CMP    #$10    
       BCC    LF07D   
       LDA    LF734,X 
       ORA    #$20    
       BNE    LF089   
LF07D: ASL            
       ASL            
       ADC    $A4     
       ADC    $D7     
       TAY            
       LDA    LF734,Y 
       AND    #$0F    
LF089: STA    WSYNC   
       LDY    $D5     
       STY    PF1     
       STA    $D5     
       LDA    $8F     
       ASL            
       ASL            
       ADC    $8F     
       ADC    #$05    
       ADC    $D7     
       TAY            
       LDA    LF734,Y 
       AND    #$0F    
       LDY    $D6     
       STA    $D6     
       STY    PF1     
       INX            
       CPX    #$06    
       BCC    LF05E   
LF0AC: JMP    LF046   
LF0AF: LDY    #$02    
       STY    CTRLPF  
       LDX    #$06    
       CMP    #$01    
       BEQ    LF0BC   
       JMP    LF142   
LF0BC: STA    WSYNC   
       LDA    $D7     
       STA    PF1     
       LDA    $D5     
       STA    PF2     
       LDY    $8A     
       LDA    LF734,Y 
       AND    #$F0    
       STA    $D7     
       LDY    $88     
       LDA    LF734,Y 
       AND    #$0F    
       ORA    $D7     
       STA    $D7     
       LDA    $D8     
       STA    PF1     
       LDA    $D6     
       STA    PF2     
       LDY    $8B     
       LDA    LF734,Y 
       AND    #$F0    
       STA    $D8     
       LDY    $89     
       LDA    LF734,Y 
       AND    #$0F    
       ORA    $D8     
       STA    $D8     
       DEX            
       BEQ    LF0AC   
       LDA    $D7     
       STA    PF1     
       LDY    $86     
       LDA    LF734,Y 
       AND    #$0F    
       LSR            
       TAY            
       LDA    LF79E,Y 
       STA    $D5     
       STA    PF2     
       LDY    $87     
       LDA    $D8     
       STA    PF1     
       LDA    LF734,Y 
       AND    #$0F    
       LSR            
       TAY            
       LDA    LF79E,Y 
       STA    PF2     
       STA    $D6     
       INC    $86     
       INC    $8A     
       INC    $87     
       INC    $8B     
       LDA    $D7     
       STA    PF1     
       LDA    $D5     
       STA    PF2     
       PHA            
       PLA            
       INC    $88     
       INC    $89     
       LDA    $D8     
       STA    PF1     
       LDA    $D6     
       STA    PF2     
       JMP    LF0BC   
LF142: CMP    #$06    
       BCC    LF149   
       JMP    LF1D1   
LF149: SBC    #$01    
       ASL            
       TAY            
       INY            
       LDX    #$01    
LF150: LDA.wy $0093,Y 
       AND    #$03    
       ASL            
       ASL            
       STA    $86,X   
       LDA.wy $0093,Y 
       AND    #$0C    
       STA    $88,X   
       LDA.wy $0093,Y 
       AND    #$30    
       LSR            
       LSR            
       CMP    #$08    
       BNE    LF16C   
       ASL            
LF16C: STA    $8A,X   
       DEY            
       DEX            
       BPL    LF150   
LF172: STA    WSYNC   
       LDY    $86     
       LDA    LF77A,Y 
       STA    $D5     
       LDY    $88     
       LDA    LF766,Y 
       ORA    $D5     
       STA    PF1     
       STA    $D5     
       LDY    $8A     
       LDA    LF766,Y 
       STA    PF2     
       STA    $D6     
       LDA    $D7     
       STA    PF1     
       LDY    $8B     
       LDA    LF766,Y 
       STA    PF2     
       STA    $D8     
       LDY    $87     
       LDA    LF77A,Y 
       STA    $D7     
       LDY    $89     
       LDA    LF766,Y 
       ORA    $D7     
       STA    $D7     
       LDA    $D5     
       STA    PF1     
       LDA    $D6     
       STA    PF2     
       INC    $86     
       INC    $87     
       INC    $88     
       INC    $89     
       INC    $8B     
       INC    $8A     
       LDA    $D7     
       STA    PF1     
       LDA    $D8     
       STA    PF2     
       LDA    $86     
       AND    #$03    
       BNE    LF172   
       JMP    LF046   
LF1D1: STA    WSYNC   
       LDA    #$10    
       STA    CTRLPF  
       LDX    $8F     
       LDA    $CD,X   
       STA    $D8     
       SBC    #$02    
       AND    #$F7    
       STA    $D9     
       LDA    $D1     
       STA    COLUP1  
       LDA    $CF     
       STA    COLUP0  
       LDA    #$25    
       STA    NUSIZ0  
       LDX    #$2D    
LF1F1: STA    WSYNC   
       LDA    $D0     
       CPX    #$22    
       BNE    LF1FB   
       LDA    $CF     
LF1FB: STA    COLUBK  
       TXA            
       SEC            
       SBC    $A9     
       LDY    #$05    
       CMP    #$05    
       BCS    LF208   
       TAY            
LF208: STY    $D5     
       TXA            
       SEC            
       SBC    $A8     
       TAY            
       AND    #$F0    
       BEQ    LF217   
       LDA    #$00    
       BEQ    LF233   
LF217: LDA    ($AA),Y 
       CPY    #$00    
       BNE    LF222   
       LDY    $D2     
       JMP    LF231   
LF222: CPY    #$0C    
       BCS    LF233   
       CPY    #$06    
       BCC    LF22F   
       LDY    $D8     
       JMP    LF231   
LF22F: LDY    $D9     
LF231: STY    COLUP1  
LF233: STA    WSYNC   
       STA    GRP1    
       LDY    $D5     
       LDA    LF72E,Y 
       STA    ENABL   
       ASL            
       STA    ENAM0   
       CPX    #$22    
       BCS    LF249   
       LDA    $DA,X   
       STA    GRP0    
LF249: DEX            
       BPL    LF1F1   
       STA    WSYNC   
       LDA    $CF     
       STA    COLUBK  
       LDA    #$00    
       STA    GRP0    
       STA    WSYNC   
       STA    WSYNC   
       LDA    $D0     
       STA    COLUBK  
       LDA    #$39    
       STA    TIM64T  
       LDA    SWCHB   
       ROR            
       BCS    LF282   
       LDA    #$FF    
       STA    $81     
       LDA    #$00    
       LDX    #$46    
LF271: STA    $86,X   
       DEX            
       BPL    LF271   
       INC    $A4     
       BIT    $D3     
       BMI    LF2D3   
       LDA    #$AA    
       STA    $A2     
       BNE    LF2D3   
LF282: LDA    $80     
       BNE    LF28C   
       INC    $9F     
       BNE    LF28C   
       STA    $81     
LF28C: AND    #$1F    
       BNE    LF292   
       STA    $A0     
LF292: LDA    SWCHB   
       AND    #$02    
       BEQ    LF29D   
       STA    $A0     
       BNE    LF2D7   
LF29D: BIT    $A0     
       BMI    LF2D7   
       LDA    #$FF    
       STA    $A0     
       INC    $82     
LF2A7: LDA    $D4     
       STA    $A4     
       LDX    #$00    
       STX    $81     
       STX    $8C     
       STX    $80     
       LDA    $82     
       CMP    #$06    
       BCC    LF2BD   
       STX    $A4     
       STX    $82     
LF2BD: LDX    #$03    
       JSR    LF6AC   
       STA    $D4     
       LDX    $82     
       LDA    LF7B2,X 
       STA    $D3     
       AND    #$80    
       BEQ    LF2D1   
       LDA    #$01    
LF2D1: STA    $8F     
LF2D3: LDA    #$01    
       STA    $A8     
LF2D7: LDA    SWCHB   
       LDX    #$07    
       LDY    #$06    
       AND    #$08    
       BEQ    LF2E6   
       LDX    #$F7    
       LDY    #$00    
LF2E6: LDA    $81     
       EOR    #$FF    
       BMI    LF2EE   
       LDX    #$FF    
LF2EE: AND    $9F     
       STA    $D8     
       STX    $D7     
       LDX    #$05    
LF2F6: LDA    LF722,Y 
       EOR    $D8     
       AND    $D7     
       STA    COLUP0,X
       STA    $CD,X   
       INY            
       DEX            
       BPL    LF2F6   
       LDA    SWCHA   
       EOR    #$FF    
       CMP    $85     
       BEQ    LF312   
       LDX    #$00    
       STX    $9F     
LF312: STA    $85     
       AND    #$03    
       STA    $84     
       LDA    $85     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$03    
       STA    $83     
       LDA    $8C     
       BNE    LF354   
       LDA    #$FF    
       STA    $8C     
       LDA    #$00    
       STA    $8D     
       STA    $92     
       STA    $A3     
       LDX    #$09    
LF334: LDA    LF78A,X 
       STA    $AF,X   
       LDA    LF794,X 
       STA    $B9,X   
       LDA    #$FF    
       JSR    LF6BA   
       LDA    #$00    
       STA    $C3,X   
       DEX            
       BPL    LF334   
       STA    WSYNC   
       LDY    #$0B    
LF34E: DEY            
       BNE    LF34E   
       STA.wy $0010,Y 
LF354: LDY    $8D     
       CPY    #$05    
       BEQ    LF378   
       BCS    LF3D8   
       LDA    LF7E8,Y 
       STA    $AA     
       LDA    #$F7    
       STA    $AB     
       LDA    LF7ED,Y 
       STA    $9D     
       CLC            
       ADC    LF7F2,Y 
       STA    $9E     
       CLC            
       LDA    $A8     
       ADC    LF7F7,Y 
       STA    $A9     
LF378: LDA    CXM0P   
       ORA    CXP0FB  
       ASL            
       BPL    LF3D8   
       SEC            
       LDA    $9E     
       SBC    #$70    
       LSR            
       EOR    #$07    
       CMP    #$08    
       BCC    LF38D   
       LDA    #$00    
LF38D: STA    $D5     
       LDX    #$09    
LF391: LDA    $D5     
       CMP    $B9,X   
       BEQ    LF3A0   
       SEC            
       SBC    #$01    
       BMI    LF3AC   
       CMP    $B9,X   
       BNE    LF3AC   
LF3A0: SEC            
       LDA    $AF,X   
       SBC    $A9     
       CLC            
       ADC    #$01    
       CMP    #$06    
       BCC    LF3B1   
LF3AC: DEX            
       BPL    LF391   
       BMI    LF3D8   
LF3B1: STA    $D5     
       CMP    #$03    
       BCC    LF3BB   
       DEC    $A9     
       BCS    LF3BD   
LF3BB: INC    $A9     
LF3BD: LDY    $8F     
       CLC            
       LDA    SWCHB   
       AND    LF7FE,Y 
       BEQ    LF3CB   
       LDA    $80     
       ASL            
LF3CB: ROL    $D5     
       LDY    $D5     
       LDA    LF7A6,Y 
       STA    $C3,X   
       LDA    #$08    
       STA    $A5     
LF3D8: LDA    #$03    
       STA    $D5     
       LDX    $AE     
LF3DE: LDA    $C3,X   
       BEQ    LF43B   
       BMI    LF43B   
       LDA    #$00    
       JSR    LF6BA   
       LDA    $C3,X   
       AND    #$0F    
       CMP    #$08    
       BCC    LF3F3   
       ORA    #$F0    
LF3F3: TAY            
       CLC            
       ADC    $AF,X   
       STA    $AF,X   
       CMP    #$22    
       BCC    LF401   
       LDA    #$FF    
       BMI    LF410   
LF401: LDA    $C3,X   
       AND    #$F0    
       LSR            
       LSR            
       LSR            
       LSR            
       STA    $D8     
       SEC            
       LDA    $B9,X   
       SBC    $D8     
LF410: STA    $B9,X   
       BPL    LF418   
       STA    $C3,X   
       BMI    LF43B   
LF418: LDA    #$FF    
       JSR    LF6BA   
       LDY    #$09    
LF41F: LDA.wy $00B9,Y 
       CMP    $B9,X   
       BNE    LF438   
       SEC            
       LDA.wy $00AF,Y 
       SBC    $AF,X   
       CLC            
       ADC    #$02    
       CMP    #$05    
       BCS    LF438   
       LDA    $C3,X   
       STA.wy $00C3,Y 
LF438: DEY            
       BPL    LF41F   
LF43B: DEX            
       BPL    LF440   
       LDX    #$09    
LF440: DEC    $D5     
       BPL    LF3DE   
       STX    $AE     
LF446: LDA    INTIM   
       BNE    LF446   
       JMP    LF013   
LF44E: LDA    $81     
       BPL    LF497   
       LDX    $8F     
       LDA    $8D     
       BNE    LF489   
       LDA    $80     
       AND    #$03    
       BNE    LF47F   
       LDA    $83,X   
       BEQ    LF47F   
       CMP    #$01    
       BEQ    LF472   
       DEC    $A8     
       BNE    LF46E   
       INC    $A8     
       BNE    LF47F   
LF46E: DEC    $A9     
       BNE    LF47F   
LF472: CLC            
       LDA    $A8     
       ADC    #$01    
       CMP    #$1D    
       BCS    LF47F   
       STA    $A8     
       INC    $A9     
LF47F: LDA    INPT4,X 
       BMI    LF497   
       LDA    #$00    
       STA    $90     
       BEQ    LF495   
LF489: CMP    #$05    
       BEQ    LF49A   
       BCS    LF4B9   
       LDA    $80     
       AND    #$0F    
       BNE    LF497   
LF495: INC    $8D     
LF497: JMP    LF62B   
LF49A: LDA    $80     
       AND    #$01    
       BNE    LF497   
       INC    $9E     
       LDA    $9E     
       CMP    #$8C    
       BCS    LF4B7   
       LDA    $D3     
       AND    #$20    
       BNE    LF497   
       LDA    $80     
       AND    #$07    
       BNE    LF497   
       JMP    LF60A   
LF4B7: INC    $8D     
LF4B9: DEC    $A9     
       BNE    LF497   
       INC    $A9     
       DEC    $9E     
       LDY    $9E     
       CPY    #$70    
       BEQ    LF4FF   
       BCS    LF497   
       CPY    #$06    
       BCC    LF523   
       LDA    $92     
       BEQ    LF4D5   
       CPY    #$52    
       BCC    LF497   
LF4D5: LDA    $A3     
       CMP    #$10    
       BNE    LF520   
       LDA    $80     
       STA    COLUP0,X
       STA    $CD,X   
       AND    #$0F    
       STA    $A5     
       BNE    LF520   
       LDA    LF7E8   
       CMP    $AA     
       BNE    LF4F1   
       LDA    LF7E9   
LF4F1: STA    $AA     
       LDA    $A8     
       EOR    #$04    
       STA    $A8     
       BNE    LF520   
       INC    $A8     
       BNE    LF520   
LF4FF: LDX    #$09    
LF501: LDA    $C3,X   
       BEQ    LF51D   
       BMI    LF50C   
       LDA    #$00    
       JSR    LF6BA   
LF50C: LDA    #$00    
       STA    $C3,X   
       LDA    #$FF    
       STA    $B9,X   
       STX    $D5     
       LDX    #$02    
       JSR    LF6AC   
       LDX    $D5     
LF51D: DEX            
       BPL    LF501   
LF520: JMP    LF62B   
LF523: LDA    $9B,X   
       STA    $D6     
       LDA    #$00    
       STA    $8D     
       LDA    #$01    
       STA    $A8     
       LDA    $92     
       BNE    LF56A   
       BIT    $D6     
       BVC    LF54D   
       BPL    LF541   
       LDA    #$80    
       STA    $9B,X   
       LDA    #$20    
       BNE    LF545   
LF541: LSR    $9B,X   
       LDA    #$10    
LF545: JSR    LF6AE   
       LDA    $A3     
       JSR    LF6AE   
LF54D: INC    $92     
       LDA    $A3     
       CMP    #$10    
       BCS    LF560   
       LDA    $AC,X   
       ASL            
       BMI    LF59A   
       BCC    LF520   
       LDA    #$01    
       BNE    LF564   
LF560: ROR    $9B,X   
       LDA    #$03    
LF564: JSR    LF6ED   
       JMP    LF596   
LF56A: LDA    $A3     
       CMP    #$10    
       BNE    LF576   
       LDA    #$02    
       LDY    #$40    
       BNE    LF583   
LF576: LDY    $A4     
       CPY    #$11    
       BCS    LF57F   
       JSR    LF6AE   
LF57F: LDA    #$01    
       LDY    #$00    
LF583: STY    $9B,X   
       JSR    LF6ED   
       BIT    $D6     
       BPL    LF596   
       LDA    #$10    
       JSR    LF6AE   
       LDA    $A3     
       JSR    LF6AE   
LF596: LDA    #$00    
       STA    $8C     
LF59A: BIT    $D3     
       BMI    LF5B7   
       LDX    #$03    
       JSR    LF6AC   
       CMP    #$11    
       BCC    LF607   
       ROL    $AC     
       BCS    LF5DA   
       BMI    LF607   
       LDA    #$C0    
       AND    $9B     
       BEQ    LF5DA   
       LDX    #$00    
       BEQ    LF5FB   
LF5B7: TXA            
       TAY            
       EOR    #$01    
       STA    $8F     
       CLC            
       TXA            
       LDX    #$03    
       JSR    LF6AE   
       ORA    $8F     
       CMP    #$11    
       BCC    LF607   
       TYA            
       TAX            
       BEQ    LF5E2   
       ROL    $AD     
       BCS    LF5DA   
       BMI    LF605   
       LDA    #$C0    
       AND    $9C     
       BNE    LF5FB   
LF5DA: LDA    #$00    
       STA    $81     
       STA    $8D     
       BEQ    LF607   
LF5E2: LDX    #$03    
       JSR    LF6AC   
       LDX    #$00    
       ROL    $AC     
       BCS    LF5F5   
       BMI    LF605   
       LDA    #$C0    
       AND    $9B     
       BNE    LF5FB   
LF5F5: LDA    #$10    
       STA    $A4     
       BNE    LF607   
LF5FB: LDA    #$40    
       STA    $AC,X   
       LDA    $9B,X   
       BMI    LF605   
       ASL    $AC,X   
LF605: STX    $8F     
LF607: JMP    LF62B   
LF60A: BIT    $D3     
       BVS    LF612   
       LDA    $90     
       BNE    LF618   
LF612: LDA    $83,X   
       STA    $90     
       BEQ    LF62B   
LF618: CMP    #$01    
       BEQ    LF620   
       DEC    $A9     
       BNE    LF62B   
LF620: CLC            
       LDA    $A9     
       ADC    #$01    
       CMP    #$1D    
       BCS    LF62B   
       STA    $A9     
LF62B: LDX    #$01    
LF62D: LDA    $A1,X   
       AND    #$0F    
       STA    $D5     
       ASL            
       ASL            
       CLC            
       ADC    $D5     
       STA    $86,X   
       LDA    $A1,X   
       AND    #$F0    
       LSR            
       LSR            
       STA    $D5     
       LSR            
       LSR            
       CLC            
       ADC    $D5     
       STA    $88,X   
       LDA    $A6,X   
       ASL            
       ASL            
       CLC            
       ADC    $A6,X   
       STA    $8A,X   
       DEX            
       BPL    LF62D   
       LDX    #$03    
LF657: TXA            
       AND    #$01    
       TAY            
       LDA.wy $009D,Y 
       CPX    #$03    
       BNE    LF665   
       CLC            
       ADC    #$01    
LF665: LDY    #$FF    
       STA    HMCLR   
LF669: INY            
       SEC            
       SBC    #$0F    
       BPL    LF669   
       STA    WSYNC   
       CLC            
       ADC    #$07    
       EOR    #$FF    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP1,X  
LF67C: DEY            
       BPL    LF67C   
       STA    RESP1,X 
       STA    WSYNC   
       STA    HMOVE   
       DEX            
       BPL    LF657   
       LDA    #$00    
       LDX    $8D     
       CPX    #$05    
       BNE    LF699   
       LDA    #$0F    
       STA    AUDC0   
       ROL            
       STA    AUDF0   
       LDA    $80     
LF699: STA    AUDV0   
       LDA    $A5     
       BEQ    LF6A9   
       DEC    $A5     
       EOR    #$0F    
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
LF6A9: STA    AUDV1   
       RTS            

LF6AC: LDA    #$01    
LF6AE: SED            
       CLC            
       ADC    $A1,X   
       STA    $A1,X   
       BCC    LF6B8   
       INC    $A6,X   
LF6B8: CLD            
       RTS            

LF6BA: STA    $D9     
       LDY    $B9,X   
       LDA    #$00    
       SEC            
LF6C1: ROL            
       DEY            
       BPL    LF6C1   
       STA    $D8     
       LDY    $AF,X   
       LDA.wy $00DA,Y 
       EOR    $D9     
       AND    $D8     
       BEQ    LF6DA   
       LDA.wy $00DA,Y 
       EOR    $D8     
       STA.wy $00DA,Y 
LF6DA: INY            
       LDA.wy $00DA,Y 
       EOR    $D9     
       AND    $D8     
       BEQ    LF6EC   
       LDA.wy $00DA,Y 
       EOR    $D8     
       STA.wy $00DA,Y 
LF6EC: RTS            

LF6ED: STA    $D9     
       LDA    $A4     
       CMP    #$10    
       BCC    LF6F9   
       AND    #$0F    
       ADC    #$09    
LF6F9: SEC            
       SBC    #$01    
       LDY    #$FF    
LF6FE: INY            
       SEC            
       SBC    #$03    
       BPL    LF6FE   
       CMP    #$FE    
       BCC    LF714   
       ASL    $D9     
       ASL    $D9     
       CMP    #$FF    
       BCC    LF714   
       ASL    $D9     
       ASL    $D9     
LF714: TYA            
       ASL            
       ORA    $8F     
       TAY            
       LDA    $D9     
       ORA.wy $0093,Y 
       STA.wy $0093,Y 
       RTS            

LF722: .byte $00,$58,$26,$84,$D8,$88,$00,$06,$0A,$06,$00,$0E
LF72E: .byte $02,$03,$03,$03,$02,$00
LF734: .byte $0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22,$EE,$22,$EE,$88,$EE,$EE
       .byte $22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE,$88,$EE,$22,$EE,$EE,$88
       .byte $EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA,$EE,$AA,$EE,$EE,$AA,$EE
       .byte $22,$EE
LF766: .byte $00,$00,$00,$00,$00,$0E,$00,$00,$02,$04,$08,$00,$0A,$04,$0A,$00
       .byte $08,$04,$02,$00
LF77A: .byte $00,$00,$00,$00,$00,$E0,$00,$00,$20,$40,$80,$00,$A0,$40,$A0,$00
LF78A: .byte $10,$13,$0D,$16,$10,$0A,$19,$13,$0D,$07
LF794: .byte $07,$05,$05,$03,$03,$03,$01,$01,$01,$01
LF79E: .byte $00,$04,$02,$06,$01,$05,$03,$07
LF7A6: .byte $0F,$1E,$1F,$3F,$2F,$10,$10,$21,$31,$11,$12,$01
LF7B2: .byte $00,$80,$40,$C0,$20,$A0,$38,$30,$30,$30,$30,$30,$38,$38,$3E,$3F
       .byte $39,$38,$10,$38,$3C,$38,$1B,$12,$12,$12,$16,$14,$9C,$DC,$5C,$7C
       .byte $3C,$1C,$08,$1C,$1E,$1C,$C3,$82,$82,$C2,$66,$2C,$38,$38,$3B,$3E
       .byte $3C,$38,$10,$38,$3C,$38
LF7E8: .byte $B8
LF7E9: .byte $D8,$C8,$C8,$D8
LF7ED: .byte $08,$0C,$10,$14,$18
LF7F2: .byte $07,$08,$FE,$FE,$08
LF7F7: .byte $0B,$07,$02,$02,$00,$00,$F0
LF7FE: .byte $40,$80,$78,$D8,$A9,$00,$AA,$95,$00,$E8,$D0,$FB,$A2,$FF,$9A,$8E
       .byte $95,$02,$4C,$A7,$F2,$A9,$42,$85,$02,$85,$01,$85,$02,$85,$02,$85
       .byte $02,$85,$00,$85,$02,$85,$02,$A9,$00,$85,$02,$85,$00,$A9,$2D,$8D
       .byte $96,$02,$E6,$80,$20,$4E,$F4,$AD,$84,$02,$D0,$FB,$85,$02,$85,$01
       .byte $85,$2C,$85,$0B,$A9,$FF,$85,$D9,$A9,$00,$85,$D5,$85,$D6,$85,$D7
       .byte $85,$D8,$85,$0E,$85,$0F,$85,$0A,$E6,$D9,$A5,$D9,$D0,$53,$A2,$00
       .byte $85,$02,$A5,$D5,$85,$0E,$A0,$04,$EA,$88,$10,$FD,$A5,$D6,$85,$0E
       .byte $86,$D7,$A5,$A4,$C9,$10,$90,$07,$BD,$34,$F7,$09,$20,$D0,$0C,$0A
       .byte $0A,$65,$A4,$65,$D7,$A8,$B9,$34,$F7,$29,$0F,$85,$02,$A4,$D5,$84
       .byte $0E,$85,$D5,$A5,$8F,$0A,$0A,$65,$8F,$69,$05,$65,$D7,$A8,$B9,$34
       .byte $F7,$29,$0F,$A4,$D6,$85,$D6,$84,$0E,$E8,$E0,$06,$90,$B2,$4C,$46
       .byte $F0,$A0,$02,$84,$0A,$A2,$06,$C9,$01,$F0,$03,$4C,$42,$F1,$85,$02
       .byte $A5,$D7,$85,$0E,$A5,$D5,$85,$0F,$A4,$8A,$B9,$34,$F7,$29,$F0,$85
       .byte $D7,$A4,$88,$B9,$34,$F7,$29,$0F,$05,$D7,$85,$D7,$A5,$D8,$85,$0E
       .byte $A5,$D6,$85,$0F,$A4,$8B,$B9,$34,$F7,$29,$F0,$85,$D8,$A4,$89,$B9
       .byte $34,$F7,$29,$0F,$05,$D8,$85,$D8,$CA,$F0,$B3,$A5,$D7,$85,$0E,$A4
       .byte $86,$B9,$34,$F7,$29,$0F,$4A,$A8,$B9,$9E,$F7,$85,$D5,$85,$0F,$A4
       .byte $87,$A5,$D8,$85,$0E,$B9,$34,$F7,$29,$0F,$4A,$A8,$B9,$9E,$F7,$85
       .byte $0F,$85,$D6,$E6,$86,$E6,$8A,$E6,$87,$E6,$8B,$A5,$D7,$85,$0E,$A5
       .byte $D5,$85,$0F,$48,$68,$E6,$88,$E6,$89,$A5,$D8,$85,$0E,$A5,$D6,$85
       .byte $0F,$4C,$BC,$F0,$C9,$06,$90,$03,$4C,$D1,$F1,$E9,$01,$0A,$A8,$C8
       .byte $A2,$01,$B9,$93,$00,$29,$03,$0A,$0A,$95,$86,$B9,$93,$00,$29,$0C
       .byte $95,$88,$B9,$93,$00,$29,$30,$4A,$4A,$C9,$08,$D0,$01,$0A,$95,$8A
       .byte $88,$CA,$10,$DE,$85,$02,$A4,$86,$B9,$7A,$F7,$85,$D5,$A4,$88,$B9
       .byte $66,$F7,$05,$D5,$85,$0E,$85,$D5,$A4,$8A,$B9,$66,$F7,$85,$0F,$85
       .byte $D6,$A5,$D7,$85,$0E,$A4,$8B,$B9,$66,$F7,$85,$0F,$85,$D8,$A4,$87
       .byte $B9,$7A,$F7,$85,$D7,$A4,$89,$B9,$66,$F7,$05,$D7,$85,$D7,$A5,$D5
       .byte $85,$0E,$A5,$D6,$85,$0F,$E6,$86,$E6,$87,$E6,$88,$E6,$89,$E6,$8B
       .byte $E6,$8A,$A5,$D7,$85,$0E,$A5,$D8,$85,$0F,$A5,$86,$29,$03,$D0,$A4
       .byte $4C,$46,$F0,$85,$02,$A9,$10,$85,$0A,$A6,$8F,$B5,$CD,$85,$D8,$E9
       .byte $02,$29,$F7,$85,$D9,$A5,$D1,$85,$07,$A5,$CF,$85,$06,$A9,$25,$85
       .byte $04,$A2,$2D,$85,$02,$A5,$D0,$E0,$22,$D0,$02,$A5,$CF,$85,$09,$8A
       .byte $38,$E5,$A9,$A0,$05,$C9,$05,$B0,$01,$A8,$84,$D5,$8A,$38,$E5,$A8
       .byte $A8,$29,$F0,$F0,$04,$A9,$00,$F0,$1C,$B1,$AA,$C0,$00,$D0,$05,$A4
       .byte $D2,$4C,$31,$F2,$C0,$0C,$B0,$0D,$C0,$06,$90,$05,$A4,$D8,$4C,$31
       .byte $F2,$A4,$D9,$84,$07,$85,$02,$85,$1C,$A4,$D5,$B9,$2E,$F7,$85,$1F
       .byte $0A,$85,$1D,$E0,$22,$B0,$04,$B5,$DA,$85,$1B,$CA,$10,$A5,$85,$02
       .byte $A5,$CF,$85,$09,$A9,$00,$85,$1B,$85,$02,$85,$02,$A5,$D0,$85,$09
       .byte $A9,$39,$8D,$96,$02,$AD,$82,$02,$6A,$B0,$19,$A9,$FF,$85,$81,$A9
       .byte $00,$A2,$46,$95,$86,$CA,$10,$FB,$E6,$A4,$24,$D3,$30,$57,$A9,$AA
       .byte $85,$A2,$D0,$51,$A5,$80,$D0,$06,$E6,$9F,$D0,$02,$85,$81,$29,$1F
       .byte $D0,$02,$85,$A0,$AD,$82,$02,$29,$02,$F0,$04,$85,$A0,$D0,$3A,$24
       .byte $A0,$30,$36,$A9,$FF,$85,$A0,$E6,$82,$A5,$D4,$85,$A4,$A2,$00,$86
       .byte $81,$86,$8C,$86,$80,$A5,$82,$C9,$06,$90,$04,$86,$A4,$86,$82,$A2
       .byte $03,$20,$AC,$F6,$85,$D4,$A6,$82,$BD,$B2,$F7,$85,$D3,$29,$80,$F0
       .byte $02,$A9,$01,$85,$8F,$A9,$01,$85,$A8,$AD,$82,$02,$A2,$07,$A0,$06
       .byte $29,$08,$F0,$04,$A2,$F7,$A0,$00,$A5,$81,$49,$FF,$30,$02,$A2,$FF
       .byte $25,$9F,$85,$D8,$86,$D7,$A2,$05,$B9,$22,$F7,$45,$D8,$25,$D7,$95
       .byte $06,$95,$CD,$C8,$CA,$10,$F1,$AD,$80,$02,$49,$FF,$C5,$85,$F0,$04
       .byte $A2,$00,$86,$9F,$85,$85,$29,$03,$85,$84,$A5,$85,$4A,$4A,$4A,$4A
       .byte $29,$03,$85,$83,$A5,$8C,$D0,$2E,$A9,$FF,$85,$8C,$A9,$00,$85,$8D
       .byte $85,$92,$85,$A3,$A2,$09,$BD,$8A,$F7,$95,$AF,$BD,$94,$F7,$95,$B9
       .byte $A9,$FF,$20,$BA,$F6,$A9,$00,$95,$C3,$CA,$10,$EA,$85,$02,$A0,$0B
       .byte $88,$D0,$FD,$99,$10,$00,$A4,$8D,$C0,$05,$F0,$1E,$B0,$7C,$B9,$E8
       .byte $F7,$85,$AA,$A9,$F7,$85,$AB,$B9,$ED,$F7,$85,$9D,$18,$79,$F2,$F7
       .byte $85,$9E,$18,$A5,$A8,$79,$F7,$F7,$85,$A9,$A5,$30,$05,$32,$0A,$10
       .byte $59,$38,$A5,$9E,$E9,$70,$4A,$49,$07,$C9,$08,$90,$02,$A9,$00,$85
       .byte $D5,$A2,$09,$A5,$D5,$D5,$B9,$F0,$09,$38,$E9,$01,$30,$10,$D5,$B9
       .byte $D0,$0C,$38,$B5,$AF,$E5,$A9,$18,$69,$01,$C9,$06,$90,$05,$CA,$10
       .byte $E2,$30,$27,$85,$D5,$C9,$03,$90,$04,$C6,$A9,$B0,$02,$E6,$A9,$A4
       .byte $8F,$18,$AD,$82,$02,$39,$FE,$F7,$F0,$03,$A5,$80,$0A,$26,$D5,$A4
       .byte $D5,$B9,$A6,$F7,$95,$C3,$A9,$08,$85,$A5,$A9,$03,$85,$D5,$A6,$AE
       .byte $B5,$C3,$F0,$59,$30,$57,$A9,$00,$20,$BA,$F6,$B5,$C3,$29,$0F,$C9
       .byte $08,$90,$02,$09,$F0,$A8,$18,$75,$AF,$95,$AF,$C9,$22,$90,$04,$A9
       .byte $FF,$30,$0F,$B5,$C3,$29,$F0,$4A,$4A,$4A,$4A,$85,$D8,$38,$B5,$B9
       .byte $E5,$D8,$95,$B9,$10,$04,$95,$C3,$30,$23,$A9,$FF,$20,$BA,$F6,$A0
       .byte $09,$B9,$B9,$00,$D5,$B9,$D0,$12,$38,$B9,$AF,$00,$F5,$AF,$18,$69
       .byte $02,$C9,$05,$B0,$05,$B5,$C3,$99,$C3,$00,$88,$10,$E4,$CA,$10,$02
       .byte $A2,$09,$C6,$D5,$10,$9A,$86,$AE,$AD,$84,$02,$D0,$FB,$4C,$13,$F0
       .byte $A5,$81,$10,$45,$A6,$8F,$A5,$8D,$D0,$31,$A5,$80,$29,$03,$D0,$21
       .byte $B5,$83,$F0,$1D,$C9,$01,$F0,$0C,$C6,$A8,$D0,$04,$E6,$A8,$D0,$11
       .byte $C6,$A9,$D0,$0D,$18,$A5,$A8,$69,$01,$C9,$1D,$B0,$04,$85,$A8,$E6
       .byte $A9,$B5,$3C,$30,$14,$A9,$00,$85,$90,$F0,$0C,$C9,$05,$F0,$0D,$B0
       .byte $2A,$A5,$80,$29,$0F,$D0,$02,$E6,$8D,$4C,$2B,$F6,$A5,$80,$29,$01
       .byte $D0,$F7,$E6,$9E,$A5,$9E,$C9,$8C,$B0,$0F,$A5,$D3,$29,$20,$D0,$E9
       .byte $A5,$80,$29,$07,$D0,$E3,$4C,$0A,$F6,$E6,$8D,$C6,$A9,$D0,$DA,$E6
       .byte $A9,$C6,$9E,$A4,$9E,$C0,$70,$F0,$38,$B0,$CE,$C0,$06,$90,$56,$A5
       .byte $92,$F0,$04,$C0,$52,$90,$C2,$A5,$A3,$C9,$10,$D0,$45,$A5,$80,$95
       .byte $06,$95,$CD,$29,$0F,$85,$A5,$D0,$39,$AD,$E8,$F7,$C5,$AA,$D0,$03
       .byte $AD,$E9,$F7,$85,$AA,$A5,$A8,$49,$04,$85,$A8,$D0,$25,$E6,$A8,$D0
       .byte $21,$A2,$09,$B5,$C3,$F0,$18,$30,$05,$A9,$00,$20,$BA,$F6,$A9,$00
       .byte $95,$C3,$A9,$FF,$95,$B9,$86,$D5,$A2,$02,$20,$AC,$F6,$A6,$D5,$CA
       .byte $10,$E1,$4C,$2B,$F6,$B5,$9B,$85,$D6,$A9,$00,$85,$8D,$A9,$01,$85
       .byte $A8,$A5,$92,$D0,$37,$24,$D6,$50,$16,$10,$08,$A9,$80,$95,$9B,$A9
       .byte $20,$D0,$04,$56,$9B,$A9,$10,$20,$AE,$F6,$A5,$A3,$20,$AE,$F6,$E6
       .byte $92,$A5,$A3,$C9,$10,$B0,$0B,$B5,$AC,$0A,$30,$40,$90,$C4,$A9,$01
       .byte $D0,$04,$76,$9B,$A9,$03,$20,$ED,$F6,$4C,$96,$F5,$A5,$A3,$C9,$10
       .byte $D0,$06,$A9,$02,$A0,$40,$D0,$0D,$A4,$A4,$C0,$11,$B0,$03,$20,$AE
       .byte $F6,$A9,$01,$A0,$00,$94,$9B,$20,$ED,$F6,$24,$D6,$10,$0A,$A9,$10
       .byte $20,$AE,$F6,$A5,$A3,$20,$AE,$F6,$A9,$00,$85,$8C,$24,$D3,$30,$19
       .byte $A2,$03,$20,$AC,$F6,$C9,$11,$90,$60,$26,$AC,$B0,$2F,$30,$5A,$A9
       .byte $C0,$25,$9B,$F0,$27,$A2,$00,$F0,$44,$8A,$A8,$49,$01,$85,$8F,$18
       .byte $8A,$A2,$03,$20,$AE,$F6,$05,$8F,$C9,$11,$90,$3D,$98,$AA,$F0,$14
       .byte $26,$AD,$B0,$08,$30,$31,$A9,$C0,$25,$9C,$D0,$21,$A9,$00,$85,$81
       .byte $85,$8D,$F0,$25,$A2,$03,$20,$AC,$F6,$A2,$00,$26,$AC,$B0,$08,$30
       .byte $16,$A9,$C0,$25,$9B,$D0,$06,$A9,$10,$85,$A4,$D0,$0C,$A9,$40,$95
       .byte $AC,$B5,$9B,$30,$02,$16,$AC,$86,$8F,$4C,$2B,$F6,$24,$D3,$70,$04
       .byte $A5,$90,$D0,$06,$B5,$83,$85,$90,$F0,$13,$C9,$01,$F0,$04,$C6,$A9
       .byte $D0,$0B,$18,$A5,$A9,$69,$01,$C9,$1D,$B0,$02,$85,$A9,$A2,$01,$B5
       .byte $A1,$29,$0F,$85,$D5,$0A,$0A,$18,$65,$D5,$95,$86,$B5,$A1,$29,$F0
       .byte $4A,$4A,$85,$D5,$4A,$4A,$18,$65,$D5,$95,$88,$B5,$A6,$0A,$0A,$18
       .byte $75,$A6,$95,$8A,$CA,$10,$D8,$A2,$03,$8A,$29,$01,$A8,$B9,$9D,$00
       .byte $E0,$03,$D0,$03,$18,$69,$01,$A0,$FF,$85,$2B,$C8,$38,$E9,$0F,$10
       .byte $FA,$85,$02,$18,$69,$07,$49,$FF,$0A,$0A,$0A,$0A,$95,$21,$88,$10
       .byte $FD,$95,$11,$85,$02,$85,$2A,$CA,$10,$CF,$A9,$00,$A6,$8D,$E0,$05
       .byte $D0,$09,$A9,$0F,$85,$15,$2A,$85,$17,$A5,$80,$85,$19,$A5,$A5,$F0
       .byte $0A,$C6,$A5,$49,$0F,$85,$18,$A9,$0C,$85,$16,$85,$1A,$60,$A9,$01
       .byte $F8,$18,$75,$A1,$95,$A1,$90,$02,$F6,$A6,$D8,$60,$85,$D9,$B4,$B9
       .byte $A9,$00,$38,$2A,$88,$10,$FC,$85,$D8,$B4,$AF,$B9,$DA,$00,$45,$D9
       .byte $25,$D8,$F0,$08,$B9,$DA,$00,$45,$D8,$99,$DA,$00,$C8,$B9,$DA,$00
       .byte $45,$D9,$25,$D8,$F0,$08,$B9,$DA,$00,$45,$D8,$99,$DA,$00,$60,$85
       .byte $D9,$A5,$A4,$C9,$10,$90,$04,$29,$0F,$69,$09,$38,$E9,$01,$A0,$FF
       .byte $C8,$38,$E9,$03,$10,$FA,$C9,$FE,$90,$0C,$06,$D9,$06,$D9,$C9,$FF
       .byte $90,$04,$06,$D9,$06,$D9,$98,$0A,$05,$8F,$A8,$A5,$D9,$19,$93,$00
       .byte $99,$93,$00,$60,$00,$58,$26,$84,$D8,$88,$00,$06,$0A,$06,$00,$0E
       .byte $02,$03,$03,$03,$02,$00,$0E,$0A,$0A,$0A,$0E,$22,$22,$22,$22,$22
       .byte $EE,$22,$EE,$88,$EE,$EE,$22,$66,$22,$EE,$AA,$AA,$EE,$22,$22,$EE
       .byte $88,$EE,$22,$EE,$EE,$88,$EE,$AA,$EE,$EE,$22,$22,$22,$22,$EE,$AA
       .byte $EE,$AA,$EE,$EE,$AA,$EE,$22,$EE,$00,$00,$00,$00,$00,$0E,$00,$00
       .byte $02,$04,$08,$00,$0A,$04,$0A,$00,$08,$04,$02,$00,$00,$00,$00,$00
       .byte $00,$E0,$00,$00,$20,$40,$80,$00,$A0,$40,$A0,$00,$10,$13,$0D,$16
       .byte $10,$0A,$19,$13,$0D,$07,$07,$05,$05,$03,$03,$03,$01,$01,$01,$01
       .byte $00,$04,$02,$06,$01,$05,$03,$07,$0F,$1E,$1F,$3F,$2F,$10,$10,$21
       .byte $31,$11,$12,$01,$00,$80,$40,$C0,$20,$A0,$38,$30,$30,$30,$30,$30
       .byte $38,$38,$3E,$3F,$39,$38,$10,$38,$3C,$38,$1B,$12,$12,$12,$16,$14
       .byte $9C,$DC,$5C,$7C,$3C,$1C,$08,$1C,$1E,$1C,$C3,$82,$82,$C2,$66,$2C
       .byte $38,$38,$3B,$3E,$3C,$38,$10,$38,$3C,$38,$B8,$D8,$C8,$C8,$D8,$08
       .byte $0C,$10,$14,$18,$07,$08,$FE,$FE,$08,$0B,$07,$02,$02,$00,$00,$F0
       .byte $40,$80
