Warning: truncated output (original token count: 160722)
Total output lines: 28064

; Disassembly of roms/StratOGemsDeluxe.bin
; Disassembled Tue Oct  6 15:24:46 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf7 roms/StratOGemsDeluxe.bin
;

      processor 6502
$00     =  $00
INPTCTRL =  $01
$02     =  $02
$03     =  $03
$04     =  $04
$05     =  $05
$06     =  $06
$07     =  $07
INPT0   =  $08
INPT1   =  $09
INPT2   =  $0A
INPT4   =  $0C
INPT5   =  $0D
$0E     =  $0E
$0F     =  $0F
$10     =  $10
$11     =  $11
$12     =  $12
$14     =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
$1B     =  $1B
$1C     =  $1C
$1F     =  $1F
BACKGRND =  $20
P0C1    =  $21
P0C2    =  $22
P0C3    =  $23
WSYNC   =  $24
P1C1    =  $25
P1C2    =  $26
P1C3    =  $27
P2C1    =  $29
P2C2    =  $2A
P2C3    =  $2B
DPPH    =  $2C
DPPL    =  $30
P4C1    =  $31
P5C2    =  $36
P6C3    =  $3B
P7C1    =  $3D
P7C2    =  $3E
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
L81B4   =   $81B4
L824D   =   $824D
L8252   =   $8252
L8365   =   $8365
L836F   =   $836F
L8379   =   $8379
L8383   =   $8383
L838D   =   $838D
L8397   =   $8397
L8614   =   $8614
L8C48   =   $8C48
LA020   =   $A020
LA058   =   $A058
LA0A0   =   $A0A0
LA3C7   =   $A3C7
LA412   =   $A412
LA516   =   $A516
LA6F3   =   $A6F3
LA862   =   $A862
LA8AE   =   $A8AE
LA9FF   =   $A9FF
LAA03   =   $AA03
LAA09   =   $AA09
LAB3E   =   $AB3E
LAC63   =   $AC63
LAEA2   =   $AEA2
LAEDE   =   $AEDE
LC039   =   $C039
LC049   =   $C049
LC062   =   $C062
LC083   =   $C083
LC13A   =   $C13A
LC1B1   =   $C1B1
LC227   =   $C227
LC22A   =   $C22A
LC2CE   =   $C2CE
LC32E   =   $C32E
LC34D   =   $C34D
LC352   =   $C352
LC51A   =   $C51A
LC51C   =   $C51C
LF057   =   $F057
LF0CF   =   $F0CF

       ORG $8000
       BRK            
       BRK            
       BRK            
       ORA    #$0A    
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $010E   
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
L8040: .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       BRK            
       BRK            
       BRK            
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $090E   
       ORA    ($02,X) 
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($02,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       ORA    $05     
       ORA    $06     
       ASL    $06     
L8080: ASL    $06     
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       ORA    $05     
       ASL    $06     
       ASL    $06     
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       ORA    $06     
       ASL    $06     
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       ASL    $06     
       ORA    $06     
       BRK            
       .byte $0F ;.SLO
       PHP            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $090E   
       ASL            
       ORA    ($02,X) 
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
L80C0: .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ORA    $06     
       .byte $04 ;.NOP
       ORA    $06     
       .byte $04 ;.NOP
       ORA    $06     
       .byte $04 ;.NOP
       ORA    $06     
       .byte $04 ;.NOP
       ORA    $06     
       ORA    $06     
       ORA    $06     
       ORA    $06     
       ASL    $06     
       BRK            
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
L8115: .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $07 ;.SLO
       .byte $57 ;.SRE
       .byte $0B ;.ANC
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $07 ;.SLO
       .byte $57 ;.SRE
       .byte $0B ;.ANC
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $07 ;.SLO
       .byte $57 ;.SRE
       .byte $0B ;.ANC
L8140: BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       .byte $0F ;.SLO
       .byte $67 ;.RRA
       .byte $0B ;.ANC
       AND    $D7     
       .byte $A7 ;.LAX
       ADC    $D5     
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       .byte $97 ;.SAX
       .byte $57 ;.SRE
       LDA    $95     
       .byte $27 ;.RLA
       BPL    L81B4   
       .byte $0B ;.ANC
       BRK            
       AND    #$01    
       ROL    LD765   
       ADC    #$D9    
       BRK            
       .byte $2B ;.ANC
       ORA    ($2E,X) 
       ADC    #$D9    
       .byte $6B ;.ARR
       CMP    L99A9,X 
       LDA    $579D   
       ORA    $59     
       ORA    #$AB    
       .byte $9B ;.SHS
       LDX    $599E   
       .byte $07 ;.SLO
       .byte $5B ;.SRE
       .byte $0B ;.ANC
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       BRK            
       .byte $27 ;.RLA
       BRK            
       AND    LD563   
       .byte $67 ;.RRA
       .byte $D7 ;.DCP
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       LDY    $549B   
       .byte $4F ;.SRE
       .byte $57 ;.SRE
       .byte $4F ;.SRE
       BRK            
       ROL    $2E01   
       ROR    $6EDE   
       DEC    $0E01,X 
       .byte $03 ;.SLO
       ASL    $0E0E   
       ASL    LAE0E   
       .byte $9E ;.SHX
       LDX    $5E9E   
       ASL    $0E5E   
       ASL    $0E0E   
       ASL    $0E0E   
       ASL    $020E   
       .byte $0B ;.ANC
       ORA    $0E     
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       ASL    $030E   
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $0B ;.ANC
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       ASL    $0B0E   
       .byte $0B ;.ANC
       ASL    $070E   
       .byte $07 ;.SLO
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       .byte $07 ;.SLO
       .byte $07 ;.SLO
       .byte $0B ;.ANC
       .byte $0B ;.ANC
       SEC            
       .byte $64 ;.NOP
       ROR    $66     
       ROR    P1C2    
       .byte $1C ;.NOP
       BRK            
       SEC            
       .byte $1C ;.NOP
       CLC            
       CLC            
       SEC            
       CLC            
       PHP            
       BRK            
       .byte $7C ;.NOP
       .byte $22 ;.JAM
       BPL    L8220   
       ASL    $46     
       .byte $3C ;.NOP
       BRK            
       SEC            
       .byte $64 ;.NOP
       ASL    $1C     
       ASL    P1C2    
       .byte $1C ;.NOP
       BRK            
L8220: .byte $0C ;.NOP
       .byte $0C ;.NOP
       .byte $7F ;.RRA
       .byte $64 ;.NOP
       ROL    AUDC1   
       ASL    $3800   
       .byte $64 ;.NOP
       ASL    $06     
       .byte $3C ;.NOP
       BMI    L824D   
       BRK            
       SEC            
       .byte $64 ;.NOP
       ROR    $66     
       .byte $3C ;.NOP
       BPL    L8245   
       BRK            
       BPL    L8252   
       CLC            
       PHP            
       .byte $04 ;.NOP
       LSR    P7C2    
       BRK            
       .byte $3C ;.NOP
       ROR    P1C2    
       .byte $1C ;.NOP
       .byte $32 ;.JAM
L8245: .byte $32 ;.JAM
       .byte $1C ;.NOP
       BRK            
       BPL    L8252   
       .byte $04 ;.NOP
       ROL    $2666,X 
       .byte $1C ;.NOP
       BRK            
       BRK            
       LSR    DPPH    
       CLC            
       .byte $34 ;.NOP
       .byte $62 ;.JAM
       BRK            
       BRK            
       .byte $7C ;.NOP
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       .byte $7C ;.NOP
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       .byte $7C ;.NOP
       BRK            
       .byte $3C ;.NOP
       .byte $42 ;.JAM
       RTI            

       RTI            

       RTI            

       .byte $42 ;.JAM
       .byte $3C ;.NOP
       BRK            
       SEI            
       .byte $44 ;.NOP
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       .byte $42 ;.JAM
       .byte $44 ;.NOP
       SEI            
       BRK            
       ROR    $4040,X 
       .byte $7C ;.NOP
       RTI            

       RTI            

       ROR    $4000,X 
       RTI            

       RTI            

       INC    $4140,X 
       LDX.wy $0000,Y 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $63 ;.RRA
       STY    $14,X   
       .byte $14 ;.NOP
       .byte $13 ;.SLO
       BPL    L82C7   
       BRK            
       BRK            
       INC    L8A8A   
       STX    LE080   
       BRK            
       AND    $A5     
       LDA    $B5     
       AND    #$20    
       JSR    L8E00   
       .byte $82 ;.NOP
       INC    LEAAA   
       BRK            
       BRK            
       BRK            
       .byte $22 ;.JAM
       .byte $22 ;.JAM
       .byte $22 ;.JAM
       .byte $A3 ;.LAX
       .byte $42 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       BRK            
       .byte $07 ;.SLO
       STA    ($97),Y 
       STA    $D7,X   
       BRK            
       BPL    L82B8   
L82B8: ORA    $1C24,X 
       STA    $59     
       RTI            

       .byte $80 ;.NOP
       BRK            
       BRK            
       .byte $53 ;.SRE
       .byte $52 ;.JAM
       .byte $52 ;.JAM
       .byte $77 ;.RRA
       .byte $42 ;.JAM
       RTI            

L82C7: BRK            
       CLC            
       STA    $CD     
       AND    #$24    
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $1B ;.SLO
       .byte $12 ;.JAM
       .byte $12 ;.JAM
       ASL            
       ASL            
       .byte $1B ;.SLO
       BRK            
       CMP    #$29    
       AND    #$2D    
       DEX            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $BB ;.LAS
       LDA    #$A9    
       .byte $AB ;.LXA
       TAX            
       .byte $BB ;.LAS
       BRK            
       RTI            

       RTI            

       CPY    #$C0    
       LDY    #$E0    
       RTI            

       CPX    #$40    
       RTI            

       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $0C ;.NOP
       .byte $0C ;.NOP
       ASL            
       ASL    $0E04   
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       LDY    #$40    
       JSR    LA020   
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       JSR    LA0A0   
       ASL            
       .byte $04 ;.NOP
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       ASL            
       PHP            
       PHP            
       .byte $02 ;.JAM
       ASL            
       ASL            
       LDY    #$40    
       RTI            

       RTI            

       CPX    #$C0    
L8316: CPY    #$40    
       RTI            

       RTS            

       ASL            
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ASL    $0C0C   
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ASL    $A0     
       RTI            

       .byte $80 ;.NOP
       JSR    $2020   
       LDY    #$40    
       LDY    #$20    
       ASL            
       .byte $04 ;.NOP
       PHP            
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       ASL            
       .byte $04 ;.NOP
       ASL            
       .byte $02 ;.JAM
       RTI            

       RTI            

       CPX    #$C0    
       JSR    $40C0   
       RTI            

       RTI            

       RTI            

       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ASL    $020C   
       .byte $0C ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L8365   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L836F   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L8379   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L8383   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L838D   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA    $0F0E   
       BPL    L8397   
       .byte $12 ;.JAM
       .byte $13 ;.SLO
       ASL            
       .byte $0B ;.ANC
       .byte $0C ;.NOP
       ORA.w  $0000   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       ORA    $05     
       ORA    $05     
       ORA    $05     
       ORA    $05     
       ORA    $05     
       ASL    $06     
       ASL    $06     
       PHP            
       JSR    $0828   
       JSR.w  $0000   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       ASL    $120D   
       ORA    $0B3C,Y 
       BIT    P1C3    
       SEC            
       .byte $13 ;.SLO
       PHP            
       ASL            
       JSR.w  $0022   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       ORA    $04     
       ORA    ($14,X) 
L83F8: ORA    $11     
       ORA    ($05,X) 
       ORA    ($00),Y 
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $0F ;.SLO
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $0F ;.SLO
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $0F ;.SLO
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DC ;.NOP
       .byte $DA ;.NOP
       .byte $DA ;.NOP
       .byte $DA ;.NOP
       .byte $DA ;.NOP
       .byte $DA ;.NOP
       .byte $DA ;.NOP
       CLD            
       CLD            
       CLD            
       CLD            
       DEC    $D6,X   
       .byte $D4 ;.NOP
       BIT    $E1     
       BVC    L8523   
       LDA    #$00    
       STA    $D8     
       LDA    #$70    
       STA    $D9     
       JMP    $152F   
L8523: LDA    SWCHA   
       AND    #$02    
       BEQ    L852F   
       LDY    #$00    
       JMP    LFFB0   
L852F: LDX    #$01    
       JMP    LFFAA   
       PLA            
       STA    $F0     
       PLA            
       STA    $F2     
       PHA            
       LDA    $F0     
       PHA            
       LDA    $F0     
       ASL            
       ASL            
       ASL            
       STA    $EF     
       LSR    $F0     
       LDA    $F2     
       ASL            
       ASL            
       ASL            
       STA    $F1     
       LSR    $F2     
       LDA    #$48    
       STA    $F3     
       LDA    #$08    
       STA    $F4     
       LDA    #$00    
       STA    $F5     
L855C: LDA    #$02    
       STA    $02     
       STA    $00     
       STA    $02     
       STA    $02     
       LDA    #$00    
       STA    $00     
       STA    INPTCTRL
       STA    INPT1   
       STA    INPT0   
       STA    $1B     
       STA    $1C     
       STA    INPT2   
       STA    AUDV0   
       STA    AUDV1   
       STA    $04     
       LDA    #$0F    
       STA    $06     
       STA    $10     
       LDX    #$7F    
L8584: STA    $02     
       DEX            
       BNE    L8584   
       LDX    #$05    
L858B: LDA    $EF,X   
       AND    #$7F    
       ORA    #$07    
       TAY            
L8592: STA    $02     
       DEY            
       LDA    $1200,Y 
       STA    $1B     
       TYA            
       AND    #$07    
       BNE    L8592   
       STA    $02     
       STA    $1B     
       CPX    #$04    
       BNE    L85AF   
       STA    $02     
       STA    $02     
       STA    $02     
       STA    $02     
L85AF: DEX            
       BPL    L858B   
       LDX    #$82    
L85B4: STA    $02     
       DEX            
       BNE    L85B4   
       LDA    INPT4   
       AND    #$80    
       CMP    $F5     
       STA    $F5     
       BCS    L855C   
       JMP    $15D4   
       STY    $EC     
       STX    $EB     
       LDA    $0284   
       CMP    #$7D    
       BCS    L85D4   
       JMP    $1534   
L85D4: STA    $02     
       LDA    $0284   
       CMP    #$7D    
       BCS    L85D4   
       DEC    $ED     
       BEQ    L85E4   
       JMP    $1644   
L85E4: LDA    #$02    
       STA    $02     
       STA    INPTCTRL
       STA    $00     
       LDA    #$00    
       STA    $1C     
       STA    $04     
       STA    $05     
       STA    $02     
       LDA    #$AA    
       STA    $0296   
       LDA    #$00    
       STA    $02     
       STA    $00     
       LDA    INPT4   
       ASL            
       LDA    SWCHA   
       ROR            
       STA    $EF     
       LDA    SWCHB   
       EOR    $EF     
       AND    #$03    
       EOR    $EF     
       EOR    #$FF    
       TAX            
       STA    $EF     
       EOR    $DF     
       STX    $DF     
       AND    $DF     
       ORA    $E0     
       STA    $E0     
       TXA            
       AND    #$03    
       BNE    L8629   
       STA    $D7     
L8629: INC    $D7     
       INC    $D7     
       BPL    L8634   
       STX    $D7     
       JMP    LFF86   
L8634: BIT    $E1     
       BVC    L8641   
       LDA    #$93    
       BIT    $E0     
       BEQ    L8641   
       JMP    LFF86   
L8641: JMP    $1514   
       LDX    $CD     
       BEQ    L864A   
       DEC    $CD     
L864A: LDA    $E2     
       AND    #$20    
       BEQ    L8655   
       LDA    $1E55,X 
       STA    $BC     
L8655: LDA    $BC     
       CLC            
       ADC    #$02    
       STA    $BE     
       TSX            
       STX    $EA     
       LDA    #$10    
       STA    $EE     
       LDA    #$00    
       STA    $02     
       STA    INPTCTRL
       JMP    $1DD2   
       LDA    #$DD    
       STA    INPT1   
       STA    INPT0   
       LDA    #$01    
       STA    INPT2   
       LDA    #$03    
       STA    $0F     
       LDA    #$CC    
       STA    $0E     
       BIT    $E2     
       BMI    L8685   
       JMP    $168B   
L8685: JMP    LFF98   
       JMP    $19B0   
       STA    $02     
       LDA    $C0     
       ASL            
       ASL            
       ASL            
       ADC    #$42    
L8694: SBC    #$0F    
       BCS    L8694   
       EOR    #$07    
       STA    $10     
       ASL            
       ASL            
       ASL            
       ASL            
       STA    BACKGRND
       STA    $02     
       LDX    #$05    
L86A6: DEX            
       BPL    L86A6   
       NOP            
       LDA    #$04    
       STA    $11     
       STA    $05     
       LDA    #$30    
       STA    P0C1    
       STA    $02     
       STA    P2C2    
       LDA    #$00    
       STA    INPT1   
       LDA    #$D2    
       STA    INPT0   
       BIT    $E1     
       BVC    L86C8   
       LDA    #$05    
       STA    INPT2   
L86C8: STA    $02     
       STA    $02     
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       STA    $02     
       LDA    $93     
       ORA    $A7     
       ORA    $BB     
       STA    $EF     
       LSR            
       ORA    $EF     
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $EF     
       LDA    ($BE),Y 
       STA    $F0     
       LDY    $DB     
       LDA    $1000,Y 
       TAY            
       LDA    $1E46,Y 
       AND    #$55    
       TAY            
       LDA    $1108,Y 
       STA    $F1     
       LDA    $110A,Y 
       STA    $F2     
       CLC            
       STA    $02     
       LDA    $C7     
       AND    #$3F    
       EOR    #$3F    
       TAY            
       LDA    $134C,Y 
       STA    $F3     
       LDA    $138C,Y 
       STA    $F4     
       LDA    #$00    
       STA    $1C     
       LDY    $EF     
       NOP            
       STY    $06     
       LDA    $E3     
       STA    $1B     
       STA    $1C     
       LDA    $F1     
       STA    $07     
       STA    $02     
       LDA    #$0F    
       STA    $07     
       .byte $04 ;.NOP
       BRK            
       LDX    $F3     
       LDA    $12E8,X 
       LDX    $F4     
       ORA    $12E8,X 
       STA    $1C     
       NOP            
       LDY    $EF     
       INY            
       STY    $06     
       LDA    $E4     
       STA    $1B     
       STA    $1C     
       LDY    $F1     
       INY            
       STY    $07     
       STA    $02     
       LDA    #$0F    
       STA    $07     
       .byte $04 ;.NOP
       BRK            
       LDX    $F3     
       LDA    $12FC,X 
       LDX    $F4     
       ORA    $12FC,X 
       STA    $1C     
       NOP            
       LDY    $F0     
       NOP            
       STY    $06     
       LDA    $E5     
       STA    $1B     
       STA    $1C     
       LDA    $F2     
       STA    $07     
       LDA    $DB     
       ADC    #$55    
       ADC    #$00    
       STA    $DB     
       STA    $02     
       LDA    #$0F    
       STA    $07     
       .byte $04 ;.NOP
       BRK            
       LDX    $F3     
       LDA    $1310,X 
       LDX    $F4     
       ORA    $1310,X 
       STA    $1C     
       NOP            
       LDY    $F0     
       INY            
       STY    $06     
       LDA    $E6     
       STA    $1B     
       STA    $1C     
       LDY    $F2     
       INY            
       STY    $07     
       STA    $02     
       LDA    #$0F    
       STA    $07     
       .byte $04 ;.NOP
       BRK            
       LDX    $F3     
       LDA    $1324,X 
       LDX    $F4     
       ORA    $1324,X 
       STA    $1C     
       NOP            
       LDY    $F0     
       INY            
       STY    $06     
       LDA    $E6     
       STA    $1B     
       STA    $1C     
       LDY    $F2     
       INY            
       STY    $07     
       LDA    $1513   
       STA    $02     
       STA    INPT0   
       LDA    #$0F    
       STA    $07     
       LDX    $F3     
       LDA    $1324,X 
       LDX    $F4     
       ORA    $1324,X 
       STA    $1C     
       NOP            
       LDA    $F0     
       NOP            
       STA    $06     
       LDA    $E5     
       STA    $1B     
       STA    $1C     
       LDA    $F2     
       STA    $07     
       STA    $02     
       LDA    #$0F    
       STA    $07     
       .byte $04 ;.NOP
       BRK            
       LDX    $F3     
       LDA    $1338,X 
       LDX    $F4     
       ORA    $1338,X 
       STA    $1C     
       NOP            
       LDY    $EF     
       INY            
       STY    $06     
       LDA    $E4     
       STA    $1B     
       STA    $1C     
       LDY    $F1     
       INY            
       STY    $07     
       STA    $02     
       LDA    #$05    
       STA    INPT2   
       LDA    $E3     
       STA    $1B     
       STA    $1C     
       LDY    $EF     
       STY    $06     
       LDY    $F1     
       STY    $07     
       LDX    #$01    
       STA    $02     
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       STA    $02     
       LDA    $91,X   
       ORA    $A5,X   
       ORA    $B9,X   
       STA    $EF     
       LSR            
       ORA    $EF     
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $EF     
       LDA    ($BE),Y 
       STA    $F0     
       LDY    $DB     
       LDA    $1000,Y 
       TAY            
       LDA    $1E46,Y 
       AND    #$55    
       TAY            
       LDA    $1108,Y 
       STA    $F1     
       LDA    $110A,Y 
       STA    $F2     
       STA    $02     
       LDA    $E3     
       STA    $1B     
       STA    $1C     
       LDA    $EF     
       STA    $06     
       LDA    $F1     
       STA    $07     
       LDA    $B8     
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F9     
       LDA    ($BE),Y 
       STA    $FA     
       LDA    $B8     
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $F7     
       LDA    ($BE),Y 
       STA    $F8     
       STA    $02     
       LDA    $E4     
       STA    $1B     
       STA    $1C     
       LDY    $EF     
       INY            
       STY    $06     
       LDY    $F1     
       INY            
       STY    $07     
       LDA    $A4     
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F5     
       LDA    ($BE),Y 
       STA    $F6     
       LDA    $A4     
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $F3     
       LDA    ($BE),Y 
       STA    $F4     
       STA    $02     
       LDA    $E5     
       STA    $1B     
       STA    $1C     
       LDA    $F0     
       STA    $06     
       LDA    $F2     
       STA    $07     
       LDA    $DB     
       ADC    #$55    
       ADC    #$00    
       STA    $DB     
       STA    $02     
       LDA    $E6     
       STA    $1B     
       STA    $1C     
       LDY    $F0     
       INY            
       STY    $06     
       LDY    $F2     
       INY            
       STY    $07     
       STA    $02     
       LDA    $E6     
       STA    $1B     
       STA    $1C     
       LDY    $F0     
       INY            
       STY    $06     
       LDY    $F2     
       INY            
       STY    $07     
       STA    $02     
       LDA    $E5     
       STA    $1B     
       STA    $1C     
       LDA    $F0     
       STA    $06     
       LDA    $F2     
       STA    $07     
       LDA    $1511,X 
       STA    INPT0   
       STA    $02     
       LDA    $E4     
       STA    $1B     
       STA    $1C     
       LDY    $EF     
       INY            
       STY    $06     
       LDY    $F1     
       INY            
       STY    $07     
       STA    $02     
       LDA    $E3     
       STA    $1B     
       STA    $1C     
       LDY    $EF     
       STY    $06     
       LDY    $F1     
       STY    $07     
       DEX            
       BMI    L8929   
       JMP    $1824   
L8929: LDA    $90     
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F1     
       LDA    ($BE),Y 
       STA    $F2     
       LDA    $90     
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $EF     
       LDA    ($BE),Y 
       STA    $F0     
       STA    $02     
       LDA    #$03    
       STA    $04     
       STA    $05     
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       LDA    #$06    
       STA    $06     
       STA    $07     
       PLA            
       PLA            
       .byte $04 ;.NOP
       BRK            
       LDX    #$FF    
       STA    $10     
       STA    $11     
       LDA    #$18    
       STA    BACKGRND
       LDA    #$28    
       STA    P0C1    
       LDA    #$F0    
       STA    WSYNC   
       STX    $1B     
       STX    $1C     
       STA    $02     
       STA    P2C2    
       JMP    $1A04   
L8978: LDX    #$0B    
L897A: LDA    #$04    
       STA    $EF,X   
       DEX            
L897F: BPL    L897A   
       JMP    $1A04   
       LDX    $F9     
       LDY    $E3     
       STA    $02     
       PLA            
       PLA            
       LDA    $F3     
       TXS            
       LDX    $F7     
       STY    $1B     
       STY    $1C     
       LDY    $EF     
       STY    $06     
       LDY    $F1     
       NOP            
       STY    $07     
       LDY    $F5     
       NOP            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       LDX    $EE     
       BIT    $E2     
       BVS    L8978   
       LDA    $80,X   
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $EF     
       LDA    ($BE),Y 
       STA    $F0     
L89C3: LDA    $80,X   
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F1     
       LDA    ($BE),Y 
       STA    $F2     
       LDA    $94,X   
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $F3     
       LDA    ($BE),Y 
       STA    $F4     
       LDA    $94,X   
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F5     
       LDA    ($BE),Y 
       STA    $F6     
       LDA    $A8,X   
       AND    #$55    
       TAY            
       LDA    ($BC),Y 
       STA    $F7     
       LDA    ($BE),Y 
       STA    $F8     
       LDA    $A8,X   
       .byte $4B ;.ASR
       TAX            
       TAY            
       LDA    ($BC),Y 
       STA    $F9     
       LDA    ($BE),Y 
       STA    $FA     
       STA    $02     
       LDA    $F3     
       LDY    $E3     
       NOP            
       NOP            
       NOP            
       LDX    $F9     
       TXS            
       LDX    $F7     
       STY    $1B     
       STY    $1C     
       LDY    $EF     
       STY    $06     
       LDY    $F1     
       STY    $07     
       LDY    $F5     
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    $F3     
       ADC    #$01    
       LDY    $E4     
       STA    $02     
       LDX    $F9     
       INX            
       TXS            
       LDX    $F7     
       NOP            
       STY    $1B     
       INX            
       STY    $1C     
       LDY    $EF     
       INY            
       STY    $06     
       LDY    $F1     
       INY            
       STY    $07     
       LDY    $F5     
       INY            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    $F4     
       NOP            
       LDY    $E5     
       STA    $02     
       LDX    $FA     
       NOP            
       TXS            
       LDX    $F8     
       NOP            
       STY    $1B     
       NOP            
       STY    $1C     
       LDY    $F0     
       NOP            
       STY    $06     
       LDY    $F2     
       NOP            
       STY    $07     
       LDY    $F6     
       NOP            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    $F4     
       ADC    #$01    
       LDY    $E6     
       STA    $02     
       LDX    $FA     
       INX            
       TXS            
       LDX    $F8     
L8A8A: NOP            
       STY    $1B     
       INX            
       STY    $1C     
       LDY    $F0     
       INY            
       STY    $06     
       LDY    $F2     
       INY            
       STY    $07     
       LDY    $F6     
       INY            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDY    $EE     
       LDX    $1500,Y 
       LDA    $F4     
       ADC    #$01    
       LDY    $E6     
       STA    $02     
       LDX    $FA     
       INX            
       TXS            
       LDX    $F8     
       NOP            
       STY    $1B     
       INX            
       STY    $1C     
       LDY    $F0     
       INY            
       STY    $06     
       LDY    $F2     
       INY            
       STY    $07     
       LDY    $F6     
       INY            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDY    $EE     
       LDX    $1500,Y 
       LDA    $F4     
       LDY    $E5     
       STX    INPT0   
       STA    $02     
       LDX    $FA     
       NOP            
       TXS            
       LDX    $F8     
       NOP            
       STY    $1B     
       NOP            
       STY    $1C     
       LDY    $F0     
       NOP            
       STY    $06     
       LDY    $F2     
       NOP            
       STY    $07     
       LDY    $F6     
       NOP            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    $F3     
       ADC    #$01    
       LDY    $E4     
       STA    $02     
       LDX    $F9     
       INX            
       TXS            
       LDX    $F7     
       NOP            
       STY    $1B     
       INX            
       STY    $1C     
       LDY    $EF     
       INY            
       STY    $06     
       LDY    $F1     
       INY            
       STY    $07     
       LDY    $F5     
       INY            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       DEC    $EE     
       BMI    L8B40   
       JMP    $1984   
       STA    $02     
       LDX    #$0A    
L8B39: DEX            
       BNE    L8B39   
       NOP            
       JMP    $1B72   
L8B40: LDA    $F3     
       LDY    $E3     
       STA    $02     
       LDX    $F9     
       NOP            
       TXS            
       LDX    $F7     
       NOP            
       STY    $1B     
       NOP            
       STY    $1C     
       LDY    $EF     
       NOP            
       STY    $06     
       LDY    $F1     
       NOP            
       STY    $07     
       LDY    $F5     
       NOP            
       STA    $06     
       STY    $07     
       STX    $06     
       TSX            
       STX    $07     
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       LDA    $CB     
       BNE    L8BDE   
       LDA    $C7     
       BNE    L8BAB   
       LDA    $D6     
       LSR            
       LSR            
       EOR    #$3F    
       SEC            
       SBC    #$14    
       BCS    L8B85   
       LDA    #$00    
       BEQ    L8B8B   
L8B85: CMP    #$08    
       BCC    L8B8B   
       LDA    #$07    
L8B8B: ADC    #$88    
       STA    $EF     
       ADC    #$10    
       STA    $F1     
       ADC    #$10    
       STA    $F3     
       ADC    #$10    
       STA    $F5     
       ADC    #$10    
       STA    $F7     
       ADC    #$10    
       STA    $F9     
       LDX    #$05    
L8BA5: DEX            
       BNE    L8BA5   
       JMP    $1C29   
L8BAB: LDA    $D1     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F9     
       LDA    $D2     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F5     
       LDA    $D3     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F1     
       LDA    $D1     
       LSR            
       AND    #$78    
       STA    $F7     
       LDA    $D2     
       LSR            
       AND    #$78    
       STA    $F3     
       LDA    $D3     
       LSR            
       AND    #$78    
       STA    $EF     
       JMP    $1C29   
L8BDE: LDA    $CB     
       AND    #$F0    
       CMP    #$01    
       ROR            
       EOR    #$80    
       STA    $EF     
       LDA    $CB     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F1     
       LDA    #$50    
       STA    $F3     
       LDA    $CA     
       BNE    L8C11   
       LDA    $C9     
       LSR            
       AND    #$78    
       STA    $F5     
       LDA    $C9     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F7     
       LDA    #$80    
       STA    $F9     
       JMP    $1C29   
L8C11: ASL            
       ASL            
       ASL            
       STA    $F5     
       LDA    $C9     
       LSR            
       AND    #$78    
       STA    $F7     
       LDA    $C9     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F9     
       JMP    $1C29   
       LDA    #$00    
       STA    $1B     
       STA    $0E     
       STA    $0F     
       LDA    #$BE    
       STA    INPT1   
       LDA    #$D5    
       STA    $06     
       STA    $07     
       STA    P1C1    
       STA    P1C2    
       LDA    #$12    
       STA    $F0     
       STA    $F2     
       STA    $F4     
       STA    $F6     
       STA    $F8     
       STA    $FA     
       LDY    #$06    
       STY    $EE     
L8C51: LDY    $EE     
       LDA    ($EF),Y 
       STA    $1B     
       STA    $02     
       LDA    ($F1),Y 
       STA    $1C     
       LDA    ($F3),Y 
       STA    $1B     
       LDA    ($F5),Y 
       TAX            
       LDA    ($F9),Y 
       STA    $ED     
       LDA    ($F7),Y 
       TAY            
       LDA    $ED     
       STX    $1C     
       STY    $1B     
       STA    $1C     
       STA    $1B     
       DEC    $EE     
       BPL    L8C51   
       LDA    #$00    
       STA    $1B     
       STA    $1C     
       STA    $1B     
       LDA    #$AA    
       STA    $0296   
       LDA    $E2     
L8C88: AND    #$10    
       BEQ    L8CF6   
L8C8C: LDA    $DC     
       ORA    $DD     
       BEQ    L8CF6   
       LDA    $DC     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F7     
       LDA    $DD     
       AND    #$0F    
       ASL            
       ASL            
       ASL            
       STA    $F3     
       LDA    $DC     
       LSR            
       AND    #$78    
       STA    $F5     
       LDA    $DD     
       LSR            
       AND    #$78    
       STA    $F1     
       LDA    #$80    
       STA    $EF     
       STA    $F9     
       LDY    #$06    
       STY    $EE     
       LDA    #$00    
       STA    INPT0   
       STA    INPT1   
       LDA    #$BA    
       STA    $06     
       STA    $07     
L8CC8: LDY    $EE     
       LDA    ($EF),Y 
       STA    $1B     
       STA    $02     
       LDA    ($F1),Y 
       STA    $1C     
       LDA    ($F3),Y 
       STA    $1B     
       LDA    ($F5),Y 
       TAX            
       LDA    ($F9),Y 
       STA    $ED     
       LDA    ($F7),Y 
       TAY            
       LDA    $ED     
       STX    $1C     
       STY    $1B     
       STA    $1C     
       STA    $1B     
       DEC    $EE     
       BPL    L8CC8   
       LDA    #$00    
       STA    $1B     
       STA    $1C     
L8CF6: STA    P1C1    
       STA    P1C2    
       STA    $02     
       LDA    #$02    
       STA    INPTCTRL
       LDA    $D5     
       LSR            
       ROL    $D4     
       BCC    L8D09   
       EOR    #$BD    
L8D09: STA    $D5     
       BIT    $E1     
       BVC    L8D15   
       LDA    #$00    
       STA    $E7     
       STA    $E8     
L8D15: LDX    $E8     
       INC    $E8     
       LDA    $1E28,X 
       BNE    L8D20   
       STA    $E8     
L8D20: STA    AUDV1   
       LDY    #$0C    
       LDA    $E9     
       STA    AUDF1   
       BPL    L8D2C   
       LDY    #$04    
L8D2C: STY    AUDC1   
       LDX    $E7     
       LDA    $1E07,X 
       BEQ    L8D37   
       INC    $E7     
L8D37: STA    AUDV0   
       INC    $D6     
       LDA    #$01    
       STA    $ED     
       LDX    $EA     
       TXS            
       LDX    $EB     
       LDY    $EC     
       JMP    LFFD2   
       CLC            
L8D4A: LDA    $DA     
       TAX            
       ADC    #$55    
       ADC    #$00    
       STA    $DA     
       LDA    $1000,X 
       TAX            
       LDA    ($C3),Y 
       EOR    $1E46,X 
       AND    $C2     
       EOR    $1E46,X 
       STA    ($C3),Y 
       DEY            
       BPL    L8D4A   
       JMP    LFFD2   
       LDX    #$12    
       LDA    #$0F    
L8D6D: STA    $80,X   
       STA    $94,X   
       STA    $A8,X   
       DEX            
       BPL    L8D6D   
       LDA    $CF     
       LSR            
       ORA    #$07    
       TAY            
       INY            
       LDX    #$08    
L8D7F: LDA    $1207,Y 
       DEY            
       LSR            
       LSR            
       ROL    $A8,X   
       LSR            
       ROL    $A8,X   
       LSR            
       ROL    $94,X   
       LSR            
       ROL    $94,X   
       LSR            
       ROL    $80,X   
       LSR            
       ROL    $80,X   
       DEX            
       BPL    L8D7F   
       JMP    LFFD2   
       ORA    $00     
       .byte $03 ;.SLO
       ORA    $03     
       AND    ($01),Y 
       .byte $03 ;.SLO
       .byte $3B ;.RLA
       .byte $77 ;.RRA
       .byte $77 ;.RRA
       .byte $3B ;.RLA
       .byte $04 ;.NOP
       ORA    $02     
       .byte $04 ;.NOP
       LDA    $1D9C,X 
       STA    $C0     
       LDA    $1DA0,X 
       STA    $DA     
       LDA    $1DA8,X 
       EOR    $D0     
       AND    #$0F    
       EOR    $D0     
       STA    $D0     
       LDY    $1DA4,X 
       LDX    #$3B    
L8DC6: LDA    $13CC,Y 
       STA    $80,X   
       DEY            
       DEX            
       BPL    L8DC6   
       JMP    LFFD2   
       LDA    #$DD    
       STA    INPT0   
       LDA    #$00    
       STA    INPT1   
       STA    $0E     
       STA    INPT5   
       LDA    #$01    
       STA    INPT2   
       LDA    #$80    
L8DE4: STA    $0F     
       STA    $02     
       SEC            
       ROR            
       BCC    L8DE4   
       LDA    #$01    
L8DEE: STA    $0E     
       STA    $02     
       SEC            
       ROL            
       BCC    L8DEE   
       LDA    #$84    
L8DF8: STA    INPT5   
       STA    $02     
       SEC            
       ROR            
       BCC    L8DF8   
L8E00: LDA    #$00    
       STA    INPT5   
       JMP    $166C   
       BRK            
       .byte $0F ;.SLO
       .byte $0C ;.NOP
       ORA    #$06    
       .byte $0C ;.NOP
       ASL            
       .byte $07 ;.SLO
       ORA    INPT2   
       PHP            
       ASL    $04     
       PHP            
       ASL    $05     
       .byte $03 ;.SLO
       ASL    $05     
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       .byte $04 ;.NOP
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       ORA    ($02,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($00,X) 
       ASL            
       PHP            
       ASL    $04     
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       ASL    $05     
       .byte $04 ;.NOP
       .byte $03 ;.SLO
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       .byte $03 ;.SLO
       .byte $04 ;.NOP
       .byte $03 ;.SLO
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       ORA    ($01,X) 
       .byte $02 ;.JAM
       .byte $02 ;.JAM
       ORA    ($01,X) 
       ORA    ($01,X) 
       BRK            
       BRK            
       .byte $03 ;.SLO
       .byte $0C ;.NOP
       .byte $0F ;.SLO
       BMI    L8E7F   
       .byte $3C ;.NOP
       .byte $3F ;.RLA
       CPY    #$C3    
       CPY    LF0CF   
       .byte $F3 ;.ISB
       .byte $FC ;.NOP
       .byte $FF ;.ISB
       TAY            
       TAY            
       LDY    #$A0    
       DEY            
       DEY            
       DEY            
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       PLP            
       PLP            
       PLP            
       PLP            
       PLP            
       JSR    $2020   
       JSR.w  $0020   
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L8E7F: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $315C   
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $3184   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $15C6   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1D49   
       .byte $0C ;.NOP
       SED            
       .byte $1F ;.SLO
       JMP    $5552   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1688   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1B35   
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $37C3   
       .byte $0C ;.NOP
       .byte $FB ;.ISB
       .byte $1F ;.SLO
       LDA    ($D8),Y 
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $379C   
       .byte $0C ;.NOP
       .byte $FB ;.ISB
       .byte $1F ;.SLO
       LDA    ($D8),Y 
       .byte $0C ;.NOP
       .byte $F7 ;.ISB
       .byte $1F ;.SLO
       JMP    $379C   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1D69   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1DAC   
       .byte $0C ;.NOP
       INC    $1F,X   
       RTS            

       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       JMP    LFB00   
       .byte $FF ;.ISB
       .byte $80 ;.NOP
       .byte $FF ;.ISB
L9000: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L907E: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9100: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L917E: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9200: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L927E: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9316: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9388: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9390: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9398: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93A0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93A8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93B0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93B8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93C0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93C8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93D0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93D8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93E0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93E8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93F2: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L93FC: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9406: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9410: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L941A: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9428: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9432: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9488: BRK            
L9489: BRK            
L948A: BRK            
L948B: BRK            
L948C: BRK            
       BRK            
       BRK            
L948F: BRK            
       BRK            
       BRK            
L9492: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9499: BRK            
       BRK            
L949B: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L94A3: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L94BE: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L94F0: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9552: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
L9595: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
…110722 tokens truncated…  BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LEE82: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $FF ;.ISB
       .byte $5C ;.NOP
       BMI    LF056   
       CLI            
       .byte $1F ;.SLO
       ASL    P4C1,X  
       .byte $93 ;.SHA
       .byte $93 ;.SHA
       .byte $93 ;.SHA
       ASL    P7C1,X  
       .byte $93 ;.SHA
       ASL    $40,X   
       .byte $93 ;.SHA
       ASL    $0887   
       STA    $5CFF   
       BMI    LF06B   
       CLI            
       .byte $1F ;.SLO
       ASL    $40,X   
       .byte $93 ;.SHA
       ASL    $0887   
       STA    $1FFF   
       ASL    $50,X   
       PHP            
       .byte $BF ;.LAX
       LDX    #$FF    
       .byte $1F ;.SLO
       ASL    $60,X   
       PHP            
       LDX    $0894,Y 
       .byte $80 ;.NOP
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ASL    $7A,X   
       TSX            
       .byte $07 ;.SLO
       .byte $89 ;.NOP
       STA    $1FFF,Y 
       ASL    $80,X   
       TSX            
       STA    LFFA6,X 
       .byte $1F ;.SLO
       ASL    $A0,X   
       PHP            
       .byte $BB ;.LAS
       STA    ($0E,X) 
       .byte $C2 ;.NOP
       .byte $07 ;.SLO
       .byte $BB ;.LAS
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ASL    $C0,X   
       PHP            
       .byte $BB ;.LAS
       .byte $07 ;.SLO
       .byte $83 ;.SAX
       LDX    $83     
LF056: BCC    LF057   
       .byte $1F ;.SLO
       ASL    $F4,X   
       ORA    $9A     
       .byte $04 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ASL    $80,X   
       STA    L9D0E   
       STA    $1FFF   
       ASL    $80,X   
LF06B: .byte $BF ;.LAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       STA    $1FFF   
       ASL    $C4,X   
       .byte $BB ;.LAS
       .byte $BF ;.LAX
       STY    $84,X   
       ASL    $DC,X   
       .byte $BF ;.LAX
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       ASL    $AF,X   
       BRK            
       ORA    $6E,X   
       LDA    $83     
       .byte $83 ;.SAX
       STY    $01A7   
       ASL    $57,X   
       LDX    L8080   
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       .byte $80 ;.NOP
       ASL    $83,X   
       ORA    $78,X   
       .byte $92 ;.JAM
       TXA            
       TXA            
       TXA            
       .byte $C2 ;.NOP
       .byte $BB ;.LAS
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $AF,X   
       BRK            
       ORA    $6C,X   
       .byte $93 ;.SHA
       ASL    $0888   
       STA    $1601   
       .byte $93 ;.SHA
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $57,X   
       BRK            
       ORA    $6C,X   
       PHP            
       .byte $BF ;.LAX
       LDX    #$01    
       ASL    $62,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $AF,X   
       BRK            
       ORA    $70,X   
       PHP            
       LDX    $0894,Y 
       .byte $80 ;.NOP
       .byte $02 ;.JAM
       ORA    $6C,X   
       ASL    $62,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       ASL    $6E,X   
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $93,X   
       BRK            
       ORA    $70,X   
       TSX            
       .byte $07 ;.SLO
       .byte $89 ;.NOP
       STA    $1502,Y 
       JMP    (LB916) 
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    LC416   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $75,X   
       BRK            
       ORA    $70,X   
       TSX            
       STA    $02A6,X 
       ORA    $6C,X   
       ASL    $62,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    $5716   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $57,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $62,X   
       BRK            
       ORA    $6C,X   
       PHP            
       .byte $BB ;.LAS
       STA    ($0E,X) 
       .byte $C2 ;.NOP
       .byte $07 ;.SLO
       .byte $BB ;.LAS
       .byte $02 ;.JAM
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $AF,X   
       BRK            
       ORA    $6B,X   
       PHP            
       .byte $BB ;.LAS
       .byte $07 ;.SLO
       .byte $83 ;.SAX
       LDX    $83     
       STA    $1500   
       JMP    (L89C3) 
       .byte $89 ;.NOP
       STY    L9316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
LF1C5: .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $93,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       ASL    $AF,X   
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $C4,X   
       BRK            
       ORA    $6B,X   
       TXS            
       .byte $04 ;.NOP
       .byte $BF ;.LAX
       ORA    $6C,X   
       ORA    ($16,X) 
       .byte $62 ;.JAM
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       ASL    $93,X   
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $A5,X   
       BRK            
       ORA    $6B,X   
       STA    L9D0E   
       STA    $6C15   
       ORA    ($16,X) 
       .byte $AF ;.LAX
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    LC416   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $C4,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       ASL    $AF,X   
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($06),Y 
       ASL    $A5,X   
       BRK            
       ORA    $6A,X   
       .byte $BF ;.LAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       STA    $6C15   
       ORA    ($16,X) 
       .byte $93 ;.SHA
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7C,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       ASL    $C4,X   
       LDX    AUDC0   
       SEI            
       TXA            
       STA    ($16),Y 
       .byte $DC ;.NOP
       ORA    $6C,X   
       ORA    ($07,X) 
       STA    ($07,X) 
       STA    ($16,X) 
       .byte $F7 ;.ISB
       STA    ($83),Y 
       ASL    $C4,X   
       LDX    $83     
       STA    $6C15   
       ASL    $62,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       BRK            
       ASL    $C4,X   
       LDX    AUDC0   
       SEI            
       STA    ($16),Y 
       LDA    $6C15,Y 
       ORA    ($08,X) 
       .byte $BF ;.LAX
       .byte $07 ;.SLO
       .byte $93 ;.SHA
       .byte $83 ;.SAX
       STA    ($A6),Y 
       ORA    $6C,X   
       ASL    $B9,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    LC416   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       BRK            
       ASL    $C4,X   
       LDX    AUDC0   
       .byte $72 ;.JAM
       STA    ($16),Y 
       .byte $93 ;.SHA
       ORA    $6C,X   
       ORA    ($08,X) 
       LDX    L9707,Y 
       .byte $BF ;.LAX
       .byte $80 ;.NOP
       STA    $6C15   
       ASL    $A5,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $83,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       BRK            
       ASL    $A5,X   
       LDX    AUDC0   
       .byte $6F ;.RRA
       STA    ($16),Y 
       CPY    AUDC0   
       ROR            
       BRK            
       TSX            
       .byte $07 ;.SLO
       STA    LBF07,Y 
       .byte $80 ;.NOP
       STA    $6C15   
       ASL    $93,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    LA516   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $7F,X   
       ASL    $C4,X   
       STA    ($83),Y 
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       .byte $83 ;.SAX
       BRK            
       ASL    $F7,X   
       LDX    AUDC0   
       .byte $6F ;.RRA
       STA    ($16),Y 
       .byte $DC ;.NOP
       ORA    $6E,X   
       BRK            
       TSX            
       STA    ($BA,X) 
       .byte $BF ;.LAX
       .byte $80 ;.NOP
       STA    $6C15   
       ASL    $62,X   
       .byte $C3 ;.DCP
       .byte $89 ;.NOP
       .byte $89 ;.NOP
       STY    L8316   
       ORA    $72,X   
       DEC    $91     
       .byte $80 ;.NOP
       .byte $BF ;.LAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ORA    $6E,X   
       ASL    $A5,X   
       .byte $BB ;.LAS
       STA    ($8C,X) 
       ASL    $C4,X   
       STA    ($80),Y 
       .byte $80 ;.NOP
       ASL    $F7,X   
       STX    $86     
       ASL    $DC,X   
       STY    $4115   
       TXS            
       ORA    $6E,X   
       .byte $80 ;.NOP
       ASL    $83,X   
       .byte $A7 ;.LAX
       STA    ($81,X) 
       .byte $8F ;.SAX
       .byte $FF ;.ISB
       .byte $1F ;.SLO
       ASL    P4C1,X  
       ORA    $7F,X   
       .byte $D3 ;.DCP
       ORA    $78,X   
       .byte $D4 ;.NOP
       .byte $FF ;.ISB
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LF818: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LF8D8: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LF9CC: BRK            
LF9CD: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LF9F1: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFB00: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       LDX    #$03    
LFC02: LDA    $7C0D,X 
       STA    $80,X   
       DEX            
       BPL    LFC02   
       JMP.w  $0080   
       .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFC8C: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
LFDDD: BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $315C   
LFF86: .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $3184   
LFF8C: .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $15C6   
LFF92: .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1D49   
LFF98: .byte $0C ;.NOP
       SED            
       .byte $1F ;.SLO
       JMP    $5552   
LFF9E: .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1688   
LFFA4: .byte $0C ;.NOP
       .byte $F4 ;.NOP
LFFA6: .byte $1F ;.SLO
       JMP    $1B35   
LFFAA: .byte $0C ;.NOP
       INC    $1F,X   
LFFAD: JMP    $37C3   
LFFB0: .byte $0C ;.NOP
       .byte $FB ;.ISB
       .byte $1F ;.SLO
       LDA    ($D8),Y 
       .byte $0C ;.NOP
       INC    $1F,X   
       JMP    $379C   
       .byte $0C ;.NOP
       .byte $FB ;.ISB
       .byte $1F ;.SLO
       LDA    ($D8),Y 
       .byte $0C ;.NOP
       .byte $F7 ;.ISB
       .byte $1F ;.SLO
       JMP    $379C   
LFFC6: .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1D69   
LFFCC: .byte $0C ;.NOP
       .byte $F4 ;.NOP
       .byte $1F ;.SLO
       JMP    $1DAC   
LFFD2: .byte $0C ;.NOP
       INC    $1F,X   
       RTS            

       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       BRK            
       JMP.w  $0000   
       .byte $7C ;.NOP
       BRK            
       .byte $7C ;.NOP
