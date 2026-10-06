; Disassembly of roms/Sea Monster (PAL).bin
; Disassembled Tue Oct  6 15:22:42 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf roms/Sea Monster (PAL).bin
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
REFP1   =  $0C
PF0     =  $0D
PF1     =  $0E
PF2     =  $0F
RESP0   =  $10
RESP1   =  $11
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
ENAM1   =  $1E
ENABL   =  $1F
HMP0    =  $20
HMP1    =  $21
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
       LDA    #$00    
LF005: STA    VSYNC,X 
       TXS            
       INX            
       BNE    LF005   
       LDA    #$10    
       STA    $96     
LF00F: LDA    #$50    
       STA    $83     
       LDA    #$98    
       STA    $84     
       STA    $85     
       STA    $86     
       LDA    #$00    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       LDX    #$05    
LF025: STA    AUDC0,X 
       DEX            
       BPL    LF025   
       LDX    #$02    
LF02C: STA    $B8,X   
       STA    $E5,X   
       STA    $E8,X   
       DEX            
       BPL    LF02C   
       LDA    #$FF    
       STA    $BE     
       LDA    #$2B    
       STA    $BF     
       LDA    #$A8    
       STA    $C0     
       LDA    #$3A    
       STA    $C1     
       LDA    #$90    
       STA    $8F     
       LDA    #$80    
       STA    $90     
       LDA    #$70    
       STA    $8E     
       LDA    #$B0    
       STA    $C4     
       STA    $C5     
       LDA    #$02    
       STA    $D9     
       STA    $DA     
       LDY    $E0     
       INY            
       INY            
       STY    $DB     
       LDA    #$03    
       STA    $DC     
       LDA    #$05    
       STA    $DD     
       LDA    #$07    
       STA    $DE     
       LDA    #$00    
       STA    $E4     
       STA    $EC     
       LDX    #$05    
       LDA    #$00    
LF079: STA    AUDC0,X 
       DEX            
       BPL    LF079   
       LDA    #$F0    
       STA    $9C     
LF082: LDA    #$03    
       STA    NUSIZ0  
       STA    NUSIZ1  
       LDA    #$0E    
       AND    $BE     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$00    
       STA    HMP0    
       LDA    #$18    
       STA    HMP1    
       LDY    #$05    
       LDA    #$10    
       STA    WSYNC   
LF09E: DEY            
       BPL    LF09E   
       STA    RESP0   
       STA    RESP1   
LF0A5: LDA    INTIM   
       BNE    LF0A5   
       STA    WSYNC   
       STA    VBLANK  
       STA    CXCLR   
       STA    HMCLR   
       STA    GRP0    
       STA    GRP1    
       LDX    #$02    
LF0B8: STA    WSYNC   
       DEX            
       BPL    LF0B8   
       LDA    #$07    
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$07    
       STA    $80     
LF0C7: LDY    $80     
       LDA    ($AE),Y 
       STA    $81     
       LDA    ($AC),Y 
       TAX            
       STA    WSYNC   
       NOP            
       LDA    ($A4),Y 
       STA    GRP0    
       LDA    ($A6),Y 
       STA    GRP1    
       LDA    ($A8),Y 
       STA    GRP0    
       LDA    ($AA),Y 
       LDY    $81     
       STA    GRP1    
       STX    GRP0    
       STY    GRP1    
       STA    GRP0    
       DEC    $80     
       BPL    LF0C7   
       LDA    #$00    
       STA    WSYNC   
       STA    GRP1    
       STA    GRP0    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    VDELP0  
       STA    VDELP1  
       LDA    #$14    
       STA    T1024T  
       LDA    #$00    
       STA    NUSIZ1  
       LDY    #$01    
       LDA    $98     
       BNE    LF112   
       LDY    #$05    
LF112: STY    NUSIZ0  
       LDA    #$5C    
       AND    $BE     
       STA    COLUP0  
       STA    COLUP1  
       LDA    #$70    
       LDX    #$00    
       JSR    LF831   
       LDA    #$20    
       LDX    #$01    
       JSR    LF831   
       STA    WSYNC   
       STA    HMOVE   
       STA    WSYNC   
       STA    HMCLR   
       LDY    #$07    
LF134: STA    WSYNC   
       LDA    ($B6),Y 
       STA    GRP1    
       LDA    ($96),Y 
       STA    GRP0    
       LDA    ($96),Y 
       LDA    ($96),Y 
       LDA    ($96),Y 
       LDA    ($96),Y 
       LDA    ($96),Y 
       LDA    ($96),Y 
       LDA    $C6     
       NOP            
       NOP            
       NOP            
       NOP            
       LDA    ($98),Y 
       STA    GRP0    
       DEY            
       BPL    LF134   
       LDX    #$05    
LF159: NOP            
       DEX            
       BPL    LF159   
       INY            
       STY    GRP0    
       STY    GRP1    
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$05    
       STA    NUSIZ0  
       LDA    #$00    
       STA    NUSIZ1  
       LDA    #$10    
       STA    CTRLPF  
       LDA    $83     
       LDX    #$00    
       JSR    LF831   
       LDA    $88     
       CLC            
       ADC    #$02    
       LDX    #$02    
       JSR    LF831   
       LDA    $88     
       LDX    #$01    
       JSR    LF831   
       LDA    $89     
       LDX    #$03    
       JSR    LF831   
       LDA    $8A     
       LDX    #$04    
       JSR    LF831   
       STA    WSYNC   
       STA    HMOVE   
       LDX    #$03    
LF19E: LDA    LFB58,X 
       AND.w  $00BE   
       STA    COLUP0,X
       DEX            
       BPL    LF19E   
       LDY    LFB58   
       LDA    $9A     
       CMP    #$E2    
       BCC    LF1B5   
       LDY    LFB5A   
LF1B5: TYA            
       AND    $BE     
       STA    COLUP1  
       LDY    #$03    
LF1BC: STA    HMCLR   
       STA    WSYNC   
       STA    HMOVE   
       LDA    ($B2),Y 
       STA    GRP0    
       LDA    ($9A),Y 
       STA    GRP1    
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       DEY            
       BPL    LF1BC   
       LDA    #$00    
       STA    GRP1    
       STA    HMCLR   
       LDY    #$07    
       STY    $82     
       CLC            
       LDA    #$87    
       ADC    $E0     
       ADC    $D9     
       STA    $81     
       LDX    #$02    
LF1E8: LDY    #$00    
       LDA    $8B,X   
       CMP    $81     
       BCS    LF1F6   
       CMP    #$81    
       BCC    LF1F6   
       LDY    #$02    
LF1F6: STY    ENAM0,X 
       DEX            
       BPL    LF1E8   
LF1FB: LDY    $82     
       LDA    LFB5C,Y 
       AND    $BE     
       STA    WSYNC   
       STA    WSYNC   
       STA    COLUBK  
       LDA    ($B4),Y 
       STA    GRP0    
       LDA    ($9E),Y 
       STA    PF0     
       STA    PF1     
       STA    PF2     
       DEC    $82     
       BPL    LF1FB   
       LDA    #$00    
       STA    GRP0    
       STA    ENAM0   
       STA    ENAM1   
       STA    ENABL   
       STA    PF0     
       STA    PF1     
       STA    PF2     
       LDA.w  $00EF   
       LDX    #$00    
       STX    NUSIZ0  
       JSR    LF831   
       LDA    #$AC    
       AND    $BE     
       STA    COLUPF  
       LDA    #$3E    
       AND    $BE     
       STA    COLUP1  
       LDA    #$80    
       STA    $BD     
       LDA    #$00    
       STA    $BC     
LF246: LDA    $BC     
       TAX            
       LDA    $8E,X   
       STA    $B0     
       LDA    $84,X   
       STA    $87     
       TXA            
       ASL            
       ASL            
       ASL            
       ADC    #$17    
       TAY            
       STY    $82     
       LDA    #$00    
       STA    GRP1    
       LDA.wx $00BF,X 
       AND    $BE     
       STA    COLUP1  
       LDA    #$00    
       STA    NUSIZ0  
       LDX    #$02    
       STA    WSYNC   
       STA    HMOVE   
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       NOP            
       STA    HMCLR   
LF27B: LDA    $BD     
       AND    #$FC    
       LDY    #$02    
       CMP    $8B,X   
       BEQ    LF287   
       LDY    #$00    
LF287: STY    ENAM0,X 
       STA    WSYNC   
       DEC    $BD     
       LDA    $BD     
       AND    #$F8    
       CMP    $F0     
       BNE    LF29E   
       LDA    $BD     
       AND    #$07    
       TAY            
       LDA    ($9C),Y 
       BNE    LF2A0   
LF29E: LDA    #$00    
LF2A0: STA    GRP0    
       DEX            
       BPL    LF2A7   
       LDX    #$02    
LF2A7: DEC    $82     
       BPL    LF27B   
       LDX    $BC     
       LDA.wx $00C8,X 
       STA    NUSIZ1  
       LDA    $87     
       LDX    #$01    
       JSR    LF831   
       STA    WSYNC   
       STA    HMOVE   
       LDY    #$07    
       STY    $82     
       LDX    #$02    
LF2C3: STA    WSYNC   
       LDA    $BD     
       AND    #$FC    
       LDY    #$02    
       CMP.wx $008B,X 
       BEQ    LF2D2   
       LDY    #$00    
LF2D2: STY    ENAM0,X 
       LDY    $82     
       LDA    ($B0),Y 
       STA    GRP1    
       DEC    $BD     
       DEX            
       BPL    LF2E1   
       LDX    #$02    
LF2E1: STA    HMCLR   
       DEC    $82     
       BPL    LF2C3   
       LDA    $BC     
       CMP    #$02    
       BEQ    LF2F2   
       INC    $BC     
       JMP    LF246   
LF2F2: LDA    #$00    
       LDX    #$04    
LF2F6: STA    GRP0,X  
       DEX            
       BPL    LF2F6   
       LDX    #$03    
LF2FD: STA    WSYNC   
       DEX            
       BPL    LF2FD   
       LDA    #$65    
       AND    $BE     
       STA    COLUPF  
       LDY    #$07    
LF30A: STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDX    #$02    
LF312: LDA    $91,X   
       STA    $94     
       LDA    ($94),Y 
       STA    PF0,X   
       DEX            
       BPL    LF312   
       DEY            
       BPL    LF30A   
       STA.w  $0002   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    HMP0    
       STA    COLUBK  
       STA    COLUPF  
       LDX    #$04    
LF337: STA    WSYNC   
       DEX            
       BPL    LF337   
       STA    WSYNC   
       STA    HMOVE   
       STA    RESBL   
       LDX    #$00    
       STX    PF0     
       STX    PF1     
       STX    PF2     
       STX    COLUPF  
       INX            
       STX    NUSIZ0  
       STA    RESP0   
       STA    RESP1   
       STX    NUSIZ1  
       LDA    #$30    
       STA    HMCLR   
       STA    HMBL    
       LSR            
       STA    HMP1    
       LDA    #$3D    
       STA    COLUP1  
       STA    COLUP0  
       LDX    #$08    
LF366: STA    WSYNC   
       STA    HMOVE   
       LDA    LFB64,X 
       STA    GRP0    
       LDA    LFB6D,X 
       STA    GRP1    
       NOP            
       LDA    LFB7F,X 
       TAY            
       LDA    LFB76,X 
       STA    GRP0    
       STY    GRP1    
       STA    HMCLR   
       DEX            
       BPL    LF366   
       LDA    SWCHB   
       LSR            
       BCS    LF3A3   
       LDA    #$06    
       STA    $E1     
       STA    $E2     
       STA    $E3     
       JSR    LF96B   
       LDA    #$A0    
       STA    $98     
LF39A: LDA    SWCHB   
       LSR            
       BCC    LF39A   
       JMP    LF00F   
LF3A3: LSR            
       BCS    LF3D8   
       INC    $EB     
       LDA    $EB     
       CMP    #$06    
       BCC    LF3B2   
       LDA    #$00    
       STA    $EB     
LF3B2: LDA    $EB     
       LSR            
       STA    $E0     
       LDA    $EB     
       ASL            
       ASL            
       ASL            
       ADC    #$10    
       STA    $96     
       LDA    #$00    
       STA    $98     
       STA    $E1     
       STA    $E2     
       STA    $E3     
       STA    $B4     
       STA    $B2     
LF3CE: LDA    SWCHB   
       LSR            
       LSR            
       BCC    LF3CE   
       JMP    LF00F   
LF3D8: LDY    #$FF    
       LSR            
       LSR            
       BCS    LF3E0   
       LDY    #$0F    
LF3E0: STY    $BE     
       INC    $C6     
       LDA    $B4     
       BNE    LF403   
       LDA    $EC     
       CMP    #$04    
       BNE    LF3F1   
       JSR    LF919   
LF3F1: LDA    $EC     
       BEQ    LF400   
       DEC    $EC     
       LDA    $EB     
       LSR            
       BCC    LF400   
       LDA    $EC     
       BNE    LF403   
LF400: JSR    LF885   
LF403: LDX    #$20    
       LDA    #$FA    
LF407: STA    $95,X   
       DEX            
       DEX            
       BPL    LF407   
       LDA    $E4     
       LDY    $98     
       BNE    LF417   
       LDA    $EB     
       AND    #$01    
LF417: ASL            
       ASL            
       ASL            
       ADC    #$10    
       STA    $B6     
       LDA    #$FB    
       STA    $97     
       STA    $B7     
       LDA    $C6     
       AND    #$07    
       BNE    LF442   
       LDA    $8F     
       EOR    #$08    
       STA    $8F     
       LDA    $8E     
       EOR    #$08    
       STA    $8E     
       LDA    $90     
       EOR    #$08    
       STA    $90     
       LDA    $B2     
       EOR    #$04    
       STA    $B2     
LF442: LDA    $C6     
       AND    #$0F    
       BNE    LF44E   
       LDA    $B4     
       EOR    #$08    
       STA    $B4     
LF44E: LDA    $CB     
       BNE    LF46A   
       LDA    #$09    
       STA    $CB     
       CLC            
       LDA    $CC     
       ADC    #$08    
       CMP    #$20    
       BCS    LF464   
       STA    $CC     
       JMP    LF46C   
LF464: LDA    #$00    
       STA    $CC     
       BEQ    LF46C   
LF46A: DEC    $CB     
LF46C: LDA    $CC     
       AND    #$F8    
       CLC            
       ADC    #$C0    
       STA    $9E     
       STA    $A0     
       STA    $A2     
       LDA    #$B8    
       STA    $91     
       STA    $92     
       STA    $93     
       LDX    #$02    
       LDY    #$08    
LF485: LDA    $B8,X   
       AND    #$F0    
       LSR            
       ADC    #$08    
       STA.wy $00A4,Y 
       LDA    $B8,X   
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA.wy $00A6,Y 
       LDA    #$FB    
       STA.wy $00A5,Y 
       STA.wy $00A7,Y 
       DEY            
       DEY            
       DEY            
       DEY            
       DEX            
       BPL    LF485   
       LDX    #$00    
LF4AC: LDA.wx $00A4,X 
       EOR    #$08    
       BNE    LF4BC   
       STA.wx $00A4,X 
       INX            
       INX            
       CPX    #$0A    
       BCC    LF4AC   
LF4BC: LDA    #$05    
       STA    $C8     
       STA    $CA     
       LDA    $CE     
       BEQ    LF4E4   
       DEC    $CF     
       BNE    LF503   
       LDA    #$0C    
       STA    $CF     
       SEC            
       LDA    $CE     
       SBC    #$08    
       STA    $CE     
       SEC            
       CMP    #$08    
       BCS    LF503   
       LDA    #$20    
       STA    $EC     
       LDA    #$00    
       STA    $CE     
       BNE    LF50D   
LF4E4: LDA    $C4     
       CMP    #$80    
       BCC    LF4EF   
       LDA    VBLANK  
       ASL            
       BCS    LF4FB   
LF4EF: LDA    $C5     
       CMP    #$80    
       BCC    LF50D   
       LDA    WSYNC   
       ASL            
       ASL            
       BCC    LF50D   
LF4FB: LDA    #$0C    
       STA    $CF     
       LDA    #$38    
       STA    $CE     
LF503: LDA.w  $00CE   
       LSR            
       STA    $B2     
       LDA    $CE     
       STA    $B4     
LF50D: LDA    $D3     
       BEQ    LF52A   
       DEC    $D0     
       BNE    LF546   
       LDA    #$08    
       STA    $D0     
       SEC            
       LDA    $D3     
       SBC    #$08    
       STA    $D3     
       CMP    #$40    
       BCS    LF546   
       LDA    #$00    
       STA    $D3     
       BEQ    LF546   
LF52A: LDA    $C3     
       CMP    #$48    
       BCC    LF54A   
       LDA    VSYNC   
       ASL            
       BCC    LF54A   
       LDA    #$00    
       STA    $C3     
       LDA    #$08    
       STA    $D0     
       LDA    #$58    
       STA    $D3     
       LDA    #$10    
       JSR    LF8A5   
LF546: LDA    $D3     
       STA    $8E     
LF54A: LDA    $D5     
       BEQ    LF567   
       DEC    $D2     
       BNE    LF585   
       LDA    #$08    
       STA    $D2     
       SEC            
       LDA    $D5     
       SBC    #$08    
       STA    $D5     
       CMP    #$50    
       BCS    LF585   
       LDA    #$00    
       STA    $D5     
       BEQ    LF585   
LF567: LDA    $C3     
       BEQ    LF589   
       CMP    #$28    
       BCS    LF589   
       LDA    VSYNC   
       ASL            
       BCC    LF589   
       LDA    #$00    
       STA    $C3     
       LDA    #$08    
       STA    $D2     
       LDA    #$68    
       STA    $D5     
       LDA    #$30    
       JSR    LF8A5   
LF585: LDA    $D5     
       STA    $90     
LF589: LDA    $D1     
       BEQ    LF58F   
       DEC    $D1     
LF58F: LDA    $C3     
       CMP    #$28    
       BCC    LF5F2   
       LDA    VSYNC   
       ASL            
       BCC    LF5F2   
       LDA    #$00    
       STA    $C3     
       LDA    #$10    
       STA    $D1     
       LDA    #$50    
       JSR    LF8A5   
       LDA    $85     
       ADC    #$08    
       STA    $80     
       LDA.w  $0088   
       CMP    $80     
       BCC    LF5E7   
       LDA    $85     
       ADC    #$18    
       STA    $80     
       LDA    $C9     
       CMP    #$03    
       BEQ    LF5C8   
       CMP    #$06    
       BEQ    LF5D4   
       LDA    #$00    
       BEQ    LF5F0   
LF5C8: LDA    #$02    
       LDY    $88     
       CPY    $80     
       BCC    LF5F0   
       LDA    #$01    
       BNE    LF5F0   
LF5D4: LDA.w  $0085   
       ADC    #$28    
       STA    $80     
       LDA    #$04    
       LDY    $88     
       CPY    $80     
       BCC    LF5F0   
       LDA    #$02    
       BNE    LF5F0   
LF5E7: LDY    $85     
       LDA    $C9     
       JSR    LF85B   
       STY    $85     
LF5F0: STA    $C9     
LF5F2: LDA    $C3     
       CMP    #$04    
       BCC    LF62A   
       LDY    #$E0    
       CMP    #$91    
       BCS    LF612   
       LDY    #$00    
       CMP    #$8C    
       BCS    LF612   
       LDY    #$E4    
       CMP    #$88    
       BCS    LF612   
       LDY    #$E8    
       CMP    #$84    
       BCS    LF612   
       LDY    #$00    
LF612: STY    $9A     
       LDA.w  $00C6   
       AND    #$01    
       BNE    LF622   
       LDA    $C3     
       SEC            
       SBC    $DB     
       STA    $C3     
LF622: LDA    $C3     
       CMP    #$80    
       BCS    LF653   
       BCC    LF633   
LF62A: LDA    #$00    
       STA    $9A     
       LDA.w  $00CE   
       BNE    LF653   
LF633: LDA    $B4     
       AND    #$F7    
       BEQ    LF653   
       LDA    REFP1   
       LDY    $E4     
       BEQ    LF641   
       LDA    PF0     
LF641: ASL            
       BCS    LF653   
       LDA    #$92    
       STA    $C3     
       LDA    #$E0    
       STA    $C2     
       SEC            
       LDA    $83     
       SBC    #$04    
       STA    $88     
LF653: LDA    $C6     
       AND    #$03    
       BNE    LF679   
       LDA    $C4     
       CMP    #$A8    
       BCC    LF670   
       LDA    $8E     
       AND    #$F7    
       BEQ    LF679   
       CLC            
       LDA    $84     
       ADC    #$02    
       STA    $89     
       LDA    #$5F    
       STA    $C4     
LF670: CLC            
       LDA    $C4     
       ADC    $D9     
       ADC    $E0     
       STA    $C4     
LF679: LDA    $C6     
       AND    #$01    
       BNE    LF69F   
       LDA    $C5     
       CMP    #$A8    
       BCC    LF696   
       LDA    $90     
       AND    #$F7    
       BEQ    LF69F   
       CLC            
       LDA    $86     
       ADC    #$04    
       STA    $8A     
       LDA    #$07    
       STA    $C5     
LF696: CLC            
       LDA    $C5     
       ADC    $DA     
       ADC    $E0     
       STA    $C5     
LF69F: LDX    #$02    
LF6A1: LDA    $C3,X   
       AND    #$FC    
       STA    $8B,X   
       DEX            
       BPL    LF6A1   
       LDA    $98     
       BNE    LF6B1   
       JMP    LF75F   
LF6B1: LDA    #$08    
       STA    AUDC0   
       LDA    #$07    
       LDY    $C3     
       BEQ    LF6C3   
       CPY    #$88    
       BCS    LF6C7   
       CPY    #$50    
       BCS    LF6CD   
LF6C3: LDA    #$00    
       BEQ    LF6CD   
LF6C7: LDY    #$0C    
       STY    AUDC0   
       LDA    #$0B    
LF6CD: STA    AUDV0   
       LDA    $C3     
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDF0   
       LDA    #$00    
       STA    AUDV1   
       LDY    $C4     
       BEQ    LF6F1   
       CPY    #$70    
       BCS    LF6F1   
       LDA    #$05    
       STA    AUDV1   
       LDA    $C4     
       EOR    #$0F    
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
LF6F1: LDY    $C5     
       BEQ    LF705   
       CPY    #$20    
       BCS    LF705   
       LDA    #$05    
       STA    AUDV1   
       LDA    $C5     
       STA    AUDF1   
       LDA    #$0C    
       STA    AUDC1   
LF705: LDA    $CE     
       BEQ    LF718   
       LDA    #$08    
       STA    AUDC0   
       LDA    $CE     
       ORA    $CF     
       LSR            
       STA    AUDV0   
       EOR    #$FF    
       STA    AUDF0   
LF718: LDA    $D3     
       BEQ    LF72C   
       LDA    #$08    
       STA    AUDC1   
       LDA    $D3     
       ORA    $D0     
       ASL            
       ASL            
       STA    AUDV1   
       EOR    #$1F    
       STA    AUDF1   
LF72C: LDA    $D5     
       BEQ    LF73F   
       LDA    #$08    
       STA    AUDC1   
       LDA    $D5     
       ORA    $D2     
       LSR            
       STA    AUDV1   
       EOR    #$0F    
       STA    AUDF1   
LF73F: LDA    $D1     
       BEQ    LF74D   
       STA    AUDV1   
       LDA    #$04    
       STA    AUDC1   
       LDA    $D1     
       STA    AUDF1   
LF74D: LDA    $ED     
       BEQ    LF75F   
       DEC    $ED     
       LDA    $ED     
       STA    AUDF1   
       LDA    #$04    
       STA    AUDC1   
       LDA    #$0C    
       STA    AUDV1   
LF75F: LDA    INTIM   
       BNE    LF75F   
       LDA    #$82    
       STA    WSYNC   
       STA    VBLANK  
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    VSYNC   
       STA    WSYNC   
       STA    WSYNC   
       STA    WSYNC   
       LDA    #$00    
       STA    VSYNC   
       LDA    #$2C    
       STA    TIM64T  
       LDA    SWCHA   
       LDY    $E4     
       BEQ    LF78C   
       ASL            
       ASL            
       ASL            
       ASL            
LF78C: LDY    $83     
       ASL            
       BCS    LF799   
       CPY    #$90    
       BCS    LF7A1   
       INY            
       JMP    LF7A1   
LF799: ASL            
       BCS    LF7A1   
       CPY    #$08    
       BCC    LF7A1   
       DEY            
LF7A1: STY    $83     
       LDA    $D6     
       BEQ    LF7AC   
       DEC    $D6     
       JMP    LF7C4   
LF7AC: LDA    $DC     
       STA    $D6     
       STA    $82     
       LDA    $84     
       SEC            
       SBC    $82     
       TAY            
       CPY    #$04    
       BCS    LF7C2   
       LDA    #$70    
       STA    $8E     
       LDY    #$A0    
LF7C2: STY    $84     
LF7C4: LDA    $D7     
       BEQ    LF7CD   
       DEC    $D7     
       JMP    LF7E6   
LF7CD: LDA    $DD     
       STA    $D7     
       STA    $82     
       LDA    $85     
       SEC            
       SBC    $82     
       TAY            
       CPY    #$04    
       BCS    LF7E4   
       LDA    $C9     
       JSR    LF85B   
       STA    $C9     
LF7E4: STY    $85     
LF7E6: LDA    $D8     
       BEQ    LF7EF   
       DEC    $D8     
       JMP    LF807   
LF7EF: LDA    $DE     
       STA    $D8     
       STA    $82     
       SEC            
       LDA    $86     
       SBC    $82     
       TAY            
       CPY    #$04    
       BCS    LF805   
       LDA    #$80    
       STA    $90     
       LDY    #$A0    
LF805: STY    $86     
LF807: LDA    $C6     
       AND    #$0F    
       BNE    LF82E   
       LDA    $C6     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$0F    
       TAY            
       LDA    LFB9D,Y 
       STA    $F0     
       LDA    $84     
       EOR.w  $0085   
       EOR.w  $0086   
       AND    #$7F    
       STA    $EF     
       LDA.w  $009C   
       EOR    #$08    
       STA    $9C     
LF82E: JMP    LF082   
LF831: CLC            
       ADC    #$2E    
       TAY            
       AND    #$0F    
       STA.w  $0082   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       TAY            
       CLC            
       ADC.w  $0082   
       CMP    #$0F    
       BCC    LF84B   
       SBC    #$0F    
       INY            
LF84B: EOR    #$07    
       ASL            
       ASL            
       ASL            
       ASL            
       STA    HMP0,X  
       STA    WSYNC   
LF855: DEY            
       BPL    LF855   
       STA    RESP0,X 
       RTS            

LF85B: LDX    #$06    
LF85D: CMP    LFB88,X 
       BEQ    LF86B   
       DEX            
       BPL    LF85D   
       LDY    #$98    
       LDA    #$00    
       BEQ    LF884   
LF86B: CLC            
       TYA            
       ADC    LFB8F,X 
       TAY            
       LDA    LFB96,X 
       CMP    #$FF    
       BNE    LF884   
       LDA    $83     
       ADC    $86     
       AND    #$07    
       CMP    #$07    
       BNE    LF884   
       LDA    #$00    
LF884: RTS            

LF885: LDA    $E1     
       BEQ    LF8A4   
       LDA    SWCHA   
       LDY    $E4     
       BNE    LF894   
       LSR            
       LSR            
       LSR            
       LSR            
LF894: LSR            
       BCS    LF8A4   
       LDA    #$A0    
       STA    $B4     
       LDA    #$B0    
       STA    $B2     
       DEC    $E1     
       JSR    LF96B   
LF8A4: RTS            

LF8A5: TAY            
       LDA    $B9     
       AND    #$F0    
       STA    $82     
       TYA            
       CLC            
       LDX    #$02    
       SED            
LF8B1: ADC.wx $00B8,X 
       STA    $B8,X   
       LDA    #$00    
       DEX            
       BPL    LF8B1   
       LDA    $B8     
       BNE    LF8C5   
       LDA    $B9     
       CMP    #$50    
       BCC    LF8C7   
LF8C5: LDA    #$50    
LF8C7: AND    #$F0    
       CLC            
       LDX    #$02    
LF8CC: ADC.wx $00B8,X 
       STA    $B8,X   
       LDA    #$00    
       DEX            
       BPL    LF8CC   
       CLD            
       LDA    $B9     
       AND    #$F0    
       CMP    $82     
       BEQ    LF8EE   
       LDA    #$2F    
       STA    $ED     
       LDA    $E1     
       CMP    #$09    
       BCS    LF8EE   
       INC    $E1     
       JSR    LF96B   
LF8EE: LDA    $B9     
       CMP    $DF     
       BEQ    LF918   
       STA    $DF     
       ADC    $BA     
       LSR            
       LSR            
       LSR            
       LSR            
       AND    #$07    
       TAY            
       LDA    LFBAD,Y 
       STA    $DC     
       LDA    LFBB5,Y 
       STA    $DD     
       LDA    LFBBD,Y 
       STA    $DE     
       LDA    LFBC5,Y 
       STA    $D9     
       LDA    LFBCD,Y 
       STA    $DA     
LF918: RTS            

LF919: LDA    $EB     
       AND    #$01    
       BEQ    LF96A   
       LDA    $E4     
       BEQ    LF943   
       LDX    #$02    
LF925: LDA    $B8,X   
       STA    $E5,X   
       DEX            
       BPL    LF925   
       LDA    $E1     
       STA    $E2     
       LDA    $E3     
       STA    $E1     
       LDX    #$02    
LF936: LDA    $E8,X   
       STA    $B8,X   
       DEX            
       BPL    LF936   
       LDA    #$00    
       STA    $E4     
       BEQ    LF961   
LF943: LDX    #$02    
LF945: LDA    $B8,X   
       STA    $E8,X   
       DEX            
       BPL    LF945   
       LDA    $E1     
       STA    $E3     
       LDA    $E2     
       STA    $E1     
       LDX    #$02    
LF956: LDA    $E5,X   
       STA    $B8,X   
       DEX            
       BPL    LF956   
       LDA    #$01    
       STA    $E4     
LF961: LDA    $E1     
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $96     
LF96A: RTS            

LF96B: LDA.w  $00E1   
       ASL            
       ASL            
       ASL            
       ADC    #$08    
       STA    $96     
       RTS            

LF976: .byte $38,$48,$5A,$32,$36,$1A,$05,$24,$12,$44,$64,$5A,$7C,$6A,$86,$3F
       .byte $93,$6A,$5F,$44,$1A,$24,$42,$74,$B3,$DE,$EC,$E2,$86,$70,$52,$6D
       .byte $B4,$C6,$C0,$A0,$C6,$E2,$B8,$64,$38,$22,$44,$88,$54,$78,$A4,$C1
       .byte $D8,$C8,$C1,$92,$02,$01,$03,$05,$03,$04,$04,$01,$2E,$C8,$C8,$64
       .byte $C8,$2E,$64,$BA,$03,$05,$05,$08,$05,$03,$08,$04,$07,$06,$05,$05
       .byte $04,$04,$03,$03,$02,$01,$03,$04,$05,$01,$04,$02,$CB,$A5,$CC,$29
       .byte $F8,$18,$69,$C0,$85,$9E,$85,$A0,$85,$A2,$A9,$B8,$85,$91,$85,$92
       .byte $85,$93,$A2,$02,$A0,$08,$B5,$B8,$29,$F0,$4A,$69,$08,$99,$A4,$00
       .byte $B5,$B8,$29,$0F,$0A,$0A,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$14,$08
       .byte $00,$00,$10,$44,$00,$82,$00,$44,$10,$00,$00,$00,$00,$08,$14,$08
       .byte $00,$00,$10,$44,$00,$82,$00,$44,$10,$00,$5A,$A5,$5A,$BD,$BD,$5A
       .byte $A5,$5A,$81,$5A,$24,$42,$42,$24,$5A,$81,$08,$40,$10,$00,$00,$00
       .byte $00,$00,$40,$14,$00,$40,$0A,$10,$00,$00,$00,$00,$04,$40,$40,$14
       .byte $4A,$10,$10,$54,$28,$C6,$28,$54,$10,$00,$00,$10,$28,$44,$10,$00
       .byte $00,$00,$00,$00,$00,$08,$14,$08,$00,$00,$00,$CC,$22,$3C,$56,$3C
       .byte $00,$00,$00,$33,$44,$3C,$6A,$3C,$00,$00,$30,$28,$98,$60,$60,$98
       .byte $28,$20,$04,$09,$5F,$30,$30,$5F,$09,$04,$00,$40,$34,$3E,$7B,$D2
       .byte $03,$00,$03,$0E,$7B,$38,$78,$D0,$50,$00,$00,$18,$3C,$6E,$FE,$9F
       .byte $02,$28,$00,$00,$18,$3C,$76,$FE,$9F,$02,$20,$10,$04,$00,$10,$08
       .byte $00,$02,$FF,$DE,$CF,$73,$D3,$98,$1C,$08,$00,$00,$00,$26,$FF,$FA
       .byte $70,$00,$00,$00,$70,$F8,$FB,$2F,$0E,$00,$00,$00,$60,$FE,$FF,$7B
       .byte $31,$00,$06,$1F,$FF,$FE,$7C,$78,$38,$00,$81,$82,$44,$38,$A8,$20
       .byte $50,$00,$40,$90,$00,$00,$00,$00,$00,$00,$00,$10,$28,$44,$28,$10
       .byte $00,$00,$00,$00,$24,$42,$42,$24,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$3C,$66,$66,$66,$66,$66,$66,$3C,$3C,$18,$18,$18,$18,$18
       .byte $38,$18,$7E,$60,$60,$3C,$06,$06,$46,$3C,$3C,$46,$06,$0C,$0C,$06
       .byte $46,$3C,$0C,$0C,$0C,$7E,$4C,$2C,$1C,$0C,$7C,$46,$06,$06,$7C,$60
       .byte $60,$7E,$3C,$66,$66,$66,$7C,$60,$62,$3C,$18,$18,$18,$18,$0C,$06
       .byte $42,$7E,$3C,$66,$66,$3C,$3C,$66,$66,$3C,$3C,$46,$06,$3E,$66,$66
       .byte $66,$3C
LFB58: .byte $4D,$3D
LFB5A: .byte $9C,$00
LFB5C: .byte $D1,$D1,$D1,$D1,$00,$00,$00,$00
LFB64: .byte $00,$31,$49,$B5,$A5,$A5,$B5,$49,$31
LFB6D: .byte $00,$D2,$D2,$52,$D2,$92,$D2,$57,$D7
LFB76: .byte $00,$37,$37,$37,$25,$25,$25,$37,$37
LFB7F: .byte $00,$54,$54,$64,$77,$77,$55,$55,$77
LFB88: .byte $00,$01,$02,$03,$04,$05,$06
LFB8F: .byte $9E,$0F,$1F,$0F,$3F,$9E,$1F
LFB96: .byte $FF,$00,$00,$01,$00,$FF,$02
LFB9D: .byte $50,$18,$10,$20,$48,$30,$20,$40,$18,$20,$40,$28,$38,$18,$48,$18
LFBAD: .byte $05,$02,$07,$04,$08,$03,$01,$06
LFBB5: .byte $03,$08,$01,$07,$05,$06,$08,$02
LFBBD: .byte $01,$03,$05,$02,$08,$04,$06,$07
LFBC5: .byte $01,$03,$04,$02,$05,$03,$02,$04
LFBCD: .byte $05,$04,$05,$07,$06,$04,$03,$06,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$88,$CA,$4A,$AA,$88,$AE,$2C,$2C,$08,$67,$64,$2B,$2C
       .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$62,$F9,$85,$8D,$A9,$08,$85,$CA,$A9,$30,$85,$8B,$D0
       .byte $04,$A9,$00,$85,$CA,$E6,$B3,$A5,$8C,$D0,$4D,$E6,$A9,$A5,$8F,$4A
       .byte $25,$A9,$D0,$44,$A5,$8E,$4A,$B0,$20,$C6,$A6,$C6,$A6,$E6,$A4,$A5
       .byte $A4,$29,$07,$85,$AA,$D0,$0F,$F8,$38,$A5,$D9,$E9,$10,$85,$D9,$A5
       .byte $D8,$E9,$00,$85,$D8,$D8,$4C,$49,$F4,$E6,$A6,$E6,$A6,$C6,$A4,$A5
       .byte $A4,$29,$07,$85,$AA,$C9,$07,$D0,$0F,$F8,$18,$A5,$D9,$69,$10,$85
       .byte $D9,$A5,$D8,$69,$00,$85,$D8,$D8,$A9,$FD,$85,$A7,$A9,$FA,$85,$AD
       .byte $85,$AF,$A5,$AA,$85,$A3,$A5,$8F,$4A,$25,$B3,$D0,$37,$A4,$8E,$A6
       .byte $90,$AD,$80,$02,$0A,$B0,$0E,$E0,$90,$B0,$0A,$E8,$E8,$98,$29,$03
       .byte $09,$08,$A8,$D0,$1B,$0A,$B0,$0E,$E0,$08,$90,$0A,$CA,$CA,$98,$29
       .byte $03,$09,$04,$A8,$D0,$0A,$0A,$B0,$02,$A0,$00,$0A,$B0,$02,$A0,$01
       .byte $84,$8E,$86,$90,$A5,$C9,$F0,$4E,$C9,$40,$F0,$02,$C6,$C9,$A6,$A1
       .byte $A4,$C6,$A5,$C7,$4A,$4A,$4A,$90,$0A,$CA,$CA,$CA,$CA,$E0,$18,$B0
       .byte $27,$90,$2B,$4A,$90,$0A,$E8,$E8,$E8,$E8,$E0,$80,$90,$1A,$B0,$1E
       .byte $A5,$C7,$4A,$90,$0B,$C8,$C8,$C8,$C8,$C0,$D0,$90,$0B,$4C,$DF,$F4
       .byte $88,$88,$88,$88,$C0,$68,$90,$06,$86,$A1,$84,$C6,$D0,$08,$A9,$00
       .byte $85,$A1,$85,$03,$05,$05,$08,$05,$03,$08,$04,$07,$06,$05,$05,$04
       .byte $04,$03,$03,$02,$01,$03,$04,$05,$01,$04,$02,$CB,$A5,$CC,$29,$F8
       .byte $18,$69,$C0,$85,$9E,$85,$A0,$85,$A2,$A9,$B8,$85,$91,$85,$92,$85
       .byte $93,$A2,$02,$A0,$08,$B5,$B8,$29,$F0,$4A,$69,$08,$99,$A4,$00,$B5
       .byte $B8,$29,$0F,$0A,$0A,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$08,$14,$08,$00
       .byte $00,$10,$44,$00,$82,$00,$44,$10,$00,$00,$00,$00,$08,$14,$08,$00
       .byte $00,$10,$44,$00,$82,$00,$44,$10,$00,$5A,$A5,$5A,$BD,$BD,$5A,$A5
       .byte $5A,$81,$5A,$24,$42,$42,$24,$5A,$81,$08,$40,$10,$00,$00,$00,$00
       .byte $00,$40,$14,$00,$40,$0A,$10,$00,$00,$00,$00,$04,$40,$40,$14,$4A
       .byte $10,$10,$54,$28,$C6,$28,$54,$10,$00,$00,$10,$28,$44,$10,$00,$00
       .byte $00,$00,$00,$00,$08,$14,$08,$00,$00,$00,$CC,$22,$3C,$56,$3C,$00
       .byte $00,$00,$33,$44,$3C,$6A,$3C,$00,$00,$30,$28,$98,$60,$60,$98,$28
       .byte $20,$04,$09,$5F,$30,$30,$5F,$09,$04,$00,$40,$34,$3E,$7B,$D2,$03
       .byte $00,$03,$0E,$7B,$38,$78,$D0,$50,$00,$00,$18,$3C,$6E,$FE,$9F,$02
       .byte $28,$00,$00,$18,$3C,$76,$FE,$9F,$02,$20,$10,$04,$00,$10,$08,$00
       .byte $02,$FF,$DE,$90,$A5,$D1,$F0,$02,$C6,$D1,$A5,$C3,$C9,$28,$90,$5D
       .byte $A5,$00,$0A,$90,$58,$A9,$00,$85,$C3,$A9,$10,$85,$D1,$A9,$50,$20
       .byte $A1,$F8,$A5,$85,$69,$08,$85,$80,$AD,$88,$00,$C5,$80,$90,$33,$A5
       .byte $85,$69,$18,$85,$80,$A5,$C9,$C9,$03,$F0,$08,$C9,$06,$F0,$10,$A9
       .byte $00,$F0,$28,$A9,$02,$A4,$88,$C4,$80,$90,$20,$A9,$01,$D0,$1C,$AD
       .byte $85,$00,$69,$28,$85,$80,$A9,$04,$A4,$88,$C4,$80,$90,$0D,$A9,$02
       .byte $D0,$09,$A4,$85,$A5,$C9,$20,$57,$F8,$84,$85,$85,$C9,$A5,$C3,$C9
       .byte $04,$90,$32,$A0,$E0,$C9,$91,$B0,$14,$A0,$00,$C9,$8C,$B0,$0E,$A0
       .byte $E4,$C9,$88,$B0,$08,$A0,$E8,$C9,$84,$B0,$02,$A0,$00,$84,$9A,$AD
       .byte $C6,$00,$29,$01,$D0,$07,$A5,$C3,$38,$E5,$DB,$85,$C3,$A5,$C3,$C9
       .byte $80,$B0,$2B,$90,$09,$A9,$00,$85,$9A,$AD,$CE,$00,$D0,$20,$A5,$B4
       .byte $29,$F7,$F0,$1A,$A5,$0C,$A4,$E4,$F0,$02,$A5,$0D,$0A,$B0,$0F,$A9
       .byte $92,$85,$C3,$A9,$E0,$85,$C2,$38,$A5,$83,$E9,$04,$85,$88,$A5,$C6
       .byte $29,$03,$D0,$20,$A5,$C4,$C9,$A8,$90,$11,$A5,$8E,$29,$F7,$F0,$14
       .byte $18,$A5,$84,$69,$02,$85,$89,$A9,$5F,$85,$C4,$18,$A5,$C4,$65,$D9
       .byte $65,$E0,$85,$C4,$A5,$C6,$29,$01,$D0,$20,$A5,$C5,$C9,$A8,$90,$11
       .byte $A5,$90,$29,$B9,$C2,$F9,$85,$D6,$60,$18,$A5,$CC,$69,$08,$C9,$90
       .byte $90,$02,$A9,$40,$85,$CC,$A8,$8D,$CA,$00,$B1,$A6,$65,$CC,$29,$7F
       .byte $69,$10,$8D,$B5,$00,$A9,$00,$85,$8B,$A5,$D1,$65,$D2,$29,$1F,$C9
       .byte $08,$90,$02,$A9,$05,$18,$29,$07,$A8,$85,$E1,$69,$20,$85,$B4,$B9
       .byte $B2,$F9,$85,$D3,$A5,$D2,$4A,$B0,$03,$A0,$13,$60,$A0,$EF,$60,$A9
       .byte $00,$85,$15,$85,$16,$85,$17,$85,$18,$85,$19,$85,$1A,$60,$A5,$B4
       .byte $29,$0F,$C9,$00,$F0,$3D,$C9,$05,$F0,$39,$C9,$07,$F0,$35,$85,$C5
       .byte $A5,$B5,$18,$69,$0B,$C5,$A1,$90,$17,$A5,$C5,$4A,$90,$04,$A9,$10
       .byte $D0,$09,$4A,$90,$04,$A9,$20,$D0,$02,$A9,$40,$18,$65,$B5,$85,$B5
       .byte $A5,$C5,$4A,$25,$C5,$A8,$18,$69,$20,$85,$B4,$85,$C5,$B9,$B2,$F9
       .byte $85,$D3,$60,$A9,$00,$85,$C5,$60,$A5,$A8,$85,$02,$C5,$B6,$D0,$04
       .byte $A9,$07,$85,$B1,$A4,$B1,$F0,$02,$C6,$B1,$B9,$E6,$FB,$05,$8D,$25
       .byte $A5,$85,$07,$B1,$AE,$85,$1C,$20,$AE,$F7,$C6,$A8,$60,$85,$02,$A4
       .byte $A8,$B1,$A6,$85,$0D,$60,$18,$69,$2E,$A8,$29,$0F,$8D,$A0,$00,$98
       .byte $4A,$4A,$4A,$4A,$A8,$18,$6D,$A0,$00,$C9,$0F,$90,$03,$E9,$0F,$C8
       .byte $49,$07,$0A,$0A,$0A,$0A,$95,$20,$85,$02,$88,$10,$FD,$95,$10,$00
       .byte $F0,$00,$F0
