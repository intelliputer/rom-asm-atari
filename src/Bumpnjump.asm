; Disassembly of roms/Bumpnjump.bin
; Disassembled Tue Oct  6 15:21:07 2026
; Using DiStella v3.02-SNAPSHOT
;
; Command Line: ../distella/distella -paf7 roms/Bumpnjump.bin
;

      processor 6502
$00     =  $00
INPTCTRL =  $01
$02     =  $02
$05     =  $05
INPT2   =  $0A
INPT3   =  $0B
INPT5   =  $0D
$14     =  $14
AUDC0   =  $15
AUDC1   =  $16
AUDF0   =  $17
AUDF1   =  $18
AUDV0   =  $19
AUDV1   =  $1A
P1C1    =  $25
P1C2    =  $26
P5C2    =  $36
SWCHA   =  $0280
SWACNT  =  $0281
SWCHB   =  $0282
SWBCNT  =  $0283
LF503   =   $F503
LF564   =   $F564

       ORG $C000
LC000: .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $66,$66,$7E,$66,$66,$66,$7E,$7E,$66,$66,$7C,$66,$66,$7E,$7E,$66
       .byte $60,$60,$60,$66,$7E,$7C,$66,$66,$66,$66,$66,$7C,$7E,$60,$60,$7E
       .byte $60,$60,$7E,$60,$60,$60,$7C,$60,$60,$7E,$7E,$66,$66,$6E,$60,$66
       .byte $7E,$7E,$18,$18,$18,$18,$18,$7E,$7E,$60,$60,$60,$60,$60,$60,$42
       .byte $5A,$5A,$7E,$66,$66,$42,$62,$66,$6E,$7E,$76,$66,$46,$7E,$66,$66
       .byte $66,$66,$66,$7E,$60,$60,$7E,$66,$66,$66,$7E,$66,$66,$7C,$66,$66
       .byte $66,$7E,$7E,$66,$06,$7E,$60,$66,$7E,$18,$18,$18,$18,$18,$18,$7E
       .byte $3C,$66,$66,$66,$66,$66,$66,$66,$66,$5A,$5A,$5A,$5A,$5A,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$24,$7E,$24,$24,$7E,$24,$0E,$00,$5B,$62
       .byte $7E,$7E,$07,$4D,$46,$70,$62,$7E,$5B,$4D,$00,$15,$7E,$85,$62,$54
       .byte $5B,$31,$46,$2A,$62,$70,$3F,$3F,$1C,$5B,$7E,$23,$00,$38,$38,$7E
       .byte $77,$31,$46,$69,$1C,$5B,$24,$12,$18,$1E,$0E,$CE,$2E,$3E,$A0,$06
       .byte $B1,$DB,$AA,$B1,$D1,$85,$02,$85,$2A,$85,$1B,$B1,$D3,$85,$1C,$B1
       .byte $D7,$85,$C4,$B1,$D5,$85,$1B,$84,$C3,$B1,$D9,$A4,$C4,$84,$1C,$85
       .byte $1B,$86,$1C,$86,$1B,$A4,$C3,$88,$10,$D6,$85,$02,$85,$2A,$A9,$00
       .byte $85,$1B,$85,$1C,$85,$1B,$85,$1C,$A9,$60,$85,$D1,$85,$D3,$85,$D5
       .byte $85,$D7,$85,$D9,$85,$DB,$A9,$FD,$85,$D2,$85,$D4,$85,$D6,$85,$D8
       .byte $85,$DA,$85,$DC,$85,$02,$85,$2A,$60,$A2,$00,$85,$02,$85,$2A,$B9
       .byte $8C,$F0,$95,$D1,$C8,$E8,$E8,$E0,$06,$D0,$F4,$85,$02,$85,$2A,$B9
       .byte $8C,$F0,$95,$D1,$C8,$E8,$E8,$E0,$0C,$D0,$F4,$85,$02,$85,$2A,$A9
       .byte $F0,$4C,$08,$F1,$60,$85,$2A,$A2,$FE,$EA,$EA,$85,$02,$85,$2A,$4C
       .byte $08,$F2,$85,$1B,$B0,$1A,$85,$02,$85,$2A,$86,$C2,$A9,$00,$C4,$CE
       .byte $B0,$F0,$B1,$CA,$85,$1B,$A6,$02,$10,$06,$A6,$D1,$A9,$00,$95,$80
       .byte $88,$C4,$CF,$B0,$0E,$B1,$CC,$85,$1C,$A9,$00,$A6,$03,$10,$04,$A6
       .byte $D3,$95,$80,$A6,$C2,$85,$2C,$85,$02,$85,$2A,$A9,$00,$C4,$CE,$B0
       .byte $02,$B1,$CA,$85,$1B,$88,$C4,$CF,$B0,$04,$B1,$CC,$85,$1C,$A9,$00
       .byte $C4,$CE,$B0,$02,$B1,$CA,$84,$C2,$A8,$A5,$E3,$85,$2B,$F0,$2D,$25
       .byte $C9,$85,$02,$85,$2A,$84,$1B,$A8,$A5,$EA,$85,$08,$B1,$C5,$85,$0E
       .byte $B1,$C7,$85,$0F,$A9,$00,$A4,$C2,$88,$C4,$CF,$B0,$02,$B1,$CC,$85
       .byte $1C,$C0,$04,$F0,$4F,$C6,$E3,$A9,$00,$4C,$08,$F2,$A5,$E4,$25,$E9
       .byte $85,$02,$85,$2A,$84,$1B,$A8,$A5,$EB,$85,$08,$B1,$E5,$85,$0E,$B1
       .byte $E7,$85,$0F,$A9,$00,$A4,$C2,$88,$C4,$CF,$B0,$02,$B1,$CC,$85,$1C
       .byte $C0,$04,$F0,$20,$A9,$00,$C6,$E4,$85,$02,$85,$2A,$C4,$CE,$B0,$04
       .byte $B1,$CA,$F0,$1B,$85,$1B,$88,$C4,$CF,$B0,$06,$B1,$CC,$85,$1C,$F0
       .byte $6E,$4C,$56,$F1,$A6,$E1,$D0,$01,$60,$4C,$0A,$F3,$4C,$25,$F3,$85
       .byte $1B,$B5,$B3,$AA,$B5,$87,$85,$CE,$F0,$F2,$86,$D1,$B5,$99,$85,$CA
       .byte $88,$C4,$CF,$90,$07,$F0,$09,$A9,$00,$88,$D0,$09,$B1,$CC,$85,$1C
       .byte $88,$B1,$CC,$85,$C4,$85,$02,$85,$2A,$A9,$00,$85,$1B,$B5,$80,$29
       .byte $0F,$C9,$06,$90,$7A,$A5,$C4,$85,$1C,$B5,$93,$85,$06,$B5,$80,$85
       .byte $20,$29,$0F,$E9,$05,$38,$E9,$01,$D0,$FC,$85,$10,$85,$02,$85,$2A
       .byte $B5,$AB,$85,$04,$A9,$00,$85,$1B,$85,$C4,$85,$2C,$4C,$95,$F1,$B5
       .byte $B3,$AA,$B5,$87,$85,$CF,$F0,$89,$86,$D3,$A9,$00,$C4,$CE,$B0,$02
       .byte $B1,$CA,$88,$85,$02,$85,$2A,$85,$1B,$B5,$80,$29,$0F,$C9,$06,$90
       .byte $43,$B5,$99,$85,$CC,$A5,$1B,$B5,$93,$85,$07,$B5,$80,$85,$21,$29
       .byte $0F,$E9,$05,$E9,$01,$D0,$FC,$85,$11,$85,$02,$85,$2A,$B5,$AB,$85
       .byte $05,$C4,$CE,$B0,$04,$B1,$CA,$85,$1B,$88,$85,$2C,$4C,$9E,$F1,$E9
       .byte $01,$10,$FC,$85,$10,$A5,$C4,$85,$1C,$B5,$93,$85,$06,$B5,$80,$85
       .byte $20,$4C,$7C,$F2,$38,$E9,$01,$D0,$FC,$85,$11,$B5,$99,$85,$CC,$B5
       .byte $93,$85,$07,$B5,$80,$85,$21,$4C,$C9,$F2,$85,$02,$85,$2A,$A9,$00
       .byte $C4,$CE,$B0,$02,$B1,$CA,$85,$1B,$88,$C4,$CF,$B0,$04,$B1,$CC,$85
       .byte $1C,$CA,$D0,$E6,$60,$88,$D0,$03,$4C,$24,$F2,$C4,$CF,$B0,$08,$B1
       .byte $CC,$85,$1C,$D0,$02,$85,$CF,$4C,$56,$F1,$85,$02,$85,$2A,$CA,$D0
       .byte $F9,$60,$85,$02,$85,$2A,$A5,$C3,$EA,$A5,$EA,$85,$08,$EA,$EA,$EA
       .byte $A0,$02,$EA,$88,$D0,$FC,$85,$10,$85,$11,$A9,$01,$85,$25,$85,$26
       .byte $A9,$C0,$85,$20,$A9,$D0,$85,$21,$A9,$00,$85,$02,$85,$2A,$85,$1B
       .byte $85,$1C,$85,$1B,$85,$0B,$85,$0C,$A9,$80,$85,$06,$85,$07,$A0,$05
       .byte $A9,$03,$85,$04,$85,$05,$85,$2B,$85,$02,$85,$2A,$A2,$0C,$20,$3A
       .byte $F3,$A0,$00,$20,$19,$F1,$85,$02,$85,$2A,$20,$BE,$F0,$A5,$F1,$A2
       .byte $D9,$20,$D6,$F4,$85,$02,$85,$2A,$A9,$2C,$85,$06,$85,$07,$A2,$05
       .byte $20,$3A,$F3,$20,$BE,$F0,$A9,$00,$85,$CA,$85,$CB,$85,$CC,$A5,$F1
       .byte $D0,$0B,$A9,$05,$85,$CA,$85,$02,$85,$2A,$4C,$FA,$F3,$F8,$A5,$CB
       .byte $18,$65,$F1,$90,$02,$E6,$CA,$85,$02,$85,$2A,$18,$65,$F1,$90,$02
       .byte $E6,$CA,$18,$65,$F1,$90,$02,$E6,$CA,$18,$65,$F1,$90,$02,$E6,$CA
       .byte $18,$65,$F1,$90,$02,$E6,$CA,$85,$CB,$D8,$85,$02,$85,$2A,$A2,$02
       .byte $20,$3A,$F3,$A0,$06,$20,$19,$F1,$85,$02,$85,$2A,$A9,$80,$85,$06
       .byte $85,$07,$20,$BE,$F0,$85,$02,$85,$2A,$A5,$CA,$A2,$D1,$20,$D6,$F4
       .byte $85,$02,$85,$2A,$A5,$CB,$A2,$D5,$20,$D6,$F4,$85,$02,$85,$2A,$A5
       .byte $CC,$A2,$D9,$20,$D6,$F4,$85,$02,$85,$2A,$A2,$60,$A9,$00,$C5,$D1
       .byte $D0,$0E,$86,$D1,$C5,$D3,$D0,$08,$86,$D3,$C5,$D5,$D0,$02,$86,$D5
       .byte $85,$02,$85,$2A,$A9,$2C,$85,$06,$85,$07,$20,$BE,$F0,$A0,$0C,$20
       .byte $19,$F1,$85,$02,$85,$2A,$A2,$0A,$20,$3A,$F3,$A9,$80,$85,$06,$85
       .byte $07,$20,$BE,$F0,$A5,$F0,$18,$69,$01,$85,$C3,$4A,$4A,$4A,$4A,$AA
       .byte $A5,$C3,$29,$0F,$C9,$0A,$30,$07,$A5,$C3,$18,$69,$06,$85,$C3,$F8
       .byte $A5,$C3,$18,$7D,$F1,$F4,$D8,$A2,$D9,$85,$02,$85,$2A,$20,$D6,$F4
       .byte $85,$02,$85,$2A,$A9,$2C,$85,$06,$85,$07,$A2,$03,$20,$3A,$F3,$20
       .byte $BE,$F0,$A5,$F0,$29,$03,$AA,$BC,$B6,$F0,$BD,$BA,$F0,$85,$06,$85
       .byte $07,$20,$19,$F1,$A2,$05,$20,$3A,$F3,$85,$02,$85,$2A,$20,$BE,$F0
       .byte $A2,$13,$20,$3A,$F3,$60,$85,$02,$85,$2A,$85,$C3,$4A,$4A,$4A,$4A
       .byte $A8,$B9,$69,$F7,$95,$00,$A5,$C3,$29,$0F,$A8,$B9,$69,$F7,$95,$02
       .byte $60,$00,$06,$12,$18,$24,$30,$36,$42,$48,$54,$60,$66,$72,$78,$90
       .byte $90,$00,$00,$85,$02,$A0,$08,$84,$09,$84,$08,$A9,$C0,$85,$20,$A9
       .byte $D0,$85,$21,$EA,$A0,$02,$EA,$88,$D0,$FC,$85,$10,$85,$11,$A9,$01
       .byte $85,$25,$85,$26,$A2,$00,$A9,$00,$85,$02,$85,$2A,$85,$01,$85,$1B
       .byte $85,$1C,$85,$1B,$85,$0B,$85,$0C,$A9,$8A,$A0,$05,$A9,$03,$85,$04
       .byte $85,$05,$85,$2B,$85,$02,$85,$2A,$A9,$00,$85,$09,$85,$08,$B1,$DB
       .byte $AA,$B1,$D1,$85,$02,$85,$2A,$85,$1B,$B1,$D3,$85,$1C,$B1,$D7,$85
       .byte $C4,$B1,$D5,$85,$1B,$84,$C3,$B1,$D9,$A4,$C4,$84,$1C,$85,$1B,$86
       .byte $1C,$86,$1B,$A4,$C3,$88,$10,$D6,$85,$02,$85,$2A,$A9,$00,$85,$25
       .byte $85,$26,$85,$1B,$85,$1C,$A9,$44,$85,$06,$85,$07,$A0,$04,$A2,$00
       .byte $85,$02,$85,$2A,$B9,$4D,$FD,$85,$1B,$85,$1C,$A5,$E2,$6A,$B0,$13
       .byte $38,$ED,$68,$F7,$10,$FB,$EA,$A5,$E2,$86,$1B,$86,$1C,$88,$10,$E0
       .byte $4C,$C5,$F5,$38,$ED,$68,$F7,$10,$FB,$A5,$E2,$EA,$A5,$E2,$86,$1C
       .byte $86,$1B,$88,$10,$CB,$85,$02,$85,$2A,$A9,$00,$85,$1B,$85,$1C,$A5
       .byte $EE,$29,$03,$AA,$BD,$69,$F7,$85,$D1,$A5,$ED,$4A,$4A,$4A,$4A,$AA
       .byte $BD,$69,$F7,$85,$D3,$A5,$ED,$29,$0F,$AA,$BD,$69,$F7,$85,$D5,$85
       .byte $02,$85,$2A,$A9,$08,$85,$09,$85,$08,$A9,$00,$85,$20,$A9,$10,$85
       .byte $21,$A9,$00,$85,$1B,$85,$1C,$EA,$85,$10,$85,$11,$A9,$01,$85,$04
       .byte $A9,$06,$85,$05,$A9,$B6,$85,$06,$85,$07,$A0,$06,$85,$02,$85,$2A
       .byte $A9,$00,$85,$09,$85,$08,$A9,$FD,$85,$D8,$85,$DA,$A2,$60,$A5,$F3
       .byte $10,$02,$A2,$52,$86,$D7,$A2,$60,$A5,$EE,$29,$03,$F0,$08,$A5,$BF
       .byte $29,$18,$F0,$02,$A2,$59,$86,$D9,$A9,$00,$85,$21,$85,$02,$85,$2A
       .byte $B1,$D1,$85,$1B,$B1,$D3,$85,$1C,$B1,$D7,$AA,$AD,$68,$F7,$EA,$B1
       .byte $D5,$85,$1B,$A9,$2C,$85,$07,$86,$1C,$B1,$D9,$85,$1C,$85,$2B,$A9
       .byte $B6,$85,$07,$88,$10,$D6,$85,$02,$85,$2A,$A9,$00,$85,$1B,$85,$1C
       .byte $85,$1B,$85,$C4,$A2,$FE,$B5,$B3,$AA,$B5,$B3,$85,$D7,$A5,$CE,$C9
       .byte $FF,$D0,$02,$A9,$00,$29,$01,$85,$D9,$0A,$85,$D5,$49,$02,$A8,$85
       .byte $02,$85,$2A,$B5,$99,$99,$CA,$00,$96,$D1,$98,$4A,$A8,$B5,$87,$99
       .byte $CE,$00,$B5,$93,$99,$06,$00,$B5,$AB,$99,$04,$00,$B5,$80,$99,$C2
       .byte $00,$A6,$D7,$98,$A4,$D5,$C5,$D9,$D0,$D5,$85,$02,$85,$2A,$A5,$C2
       .byte $29,$0F,$A8,$A5,$C2,$A5,$C2,$85,$20,$88,$D0,$FD,$85,$10,$85,$02
       .byte $85,$2A,$A5,$C3,$29,$0F,$A8,$A5,$C3,$A5,$C3,$85,$21,$88,$D0,$FD
       .byte $85,$11,$84,$20,$85,$02,$85,$2A,$A4,$E3,$C8,$98,$25,$C9,$A8,$B1
       .byte $C5,$85,$0E,$B1,$C7,$85,$0F,$A9,$00,$85,$25,$85,$2C,$A9,$01,$85
       .byte $26,$A9,$A1,$18,$E5,$E1,$A8,$85,$2B,$85,$02,$85,$2A,$A9,$08,$85
       .byte $09,$85,$08,$A5,$F2,$C9,$F0,$F0,$0B,$C9,$00,$30,$04,$C9,$01,$D0
       .byte $03,$4C,$42,$F3,$85,$02,$85,$2A,$A9,$08,$85,$09,$A5,$EA,$85,$08
       .byte $A5,$E1,$C9,$03,$F0,$15,$C4,$CF,$B0,$04,$B1,$CC,$85,$1C,$A5,$E1
       .byte $C9,$02,$F0,$0A,$C9,$01,$F0,$09,$4C,$08,$F2,$4C,$96,$F1,$4C,$87
       .byte $F1,$4C,$56,$F1,$4C,$DC,$F1,$60,$01,$00,$07,$0E,$15,$1C,$23,$2A
       .byte $31,$38,$3F,$F0,$0F,$F0,$0F,$F0,$0F,$60,$FD,$46,$FD,$15,$FD,$00
       .byte $FD,$00,$FD,$60,$FD,$A5,$F8,$10,$11,$C6,$F8,$85,$06,$85,$07,$A2
       .byte $0B,$BD,$79,$F7,$95,$D1,$CA,$10,$F8,$60,$A9,$8A,$85,$06,$85,$07
       .byte $A9,$FD,$85,$D2,$85,$D4,$85,$D6,$85,$D8,$85,$DA,$85,$DC,$A5,$DD
       .byte $A2,$D1,$20,$DA,$F4,$A5,$DE,$A2,$D5,$20,$DA,$F4,$A5,$DF,$A2,$D9
       .byte $4C,$DA,$F4,$43,$6F,$70,$79,$72,$69,$67,$68,$74,$20,$31,$39,$38
       .byte $33,$20,$4D,$61,$74,$74,$65,$6C,$20,$44,$61,$76,$65,$20,$41,$6B
       .byte $65,$72,$73,$20,$4A,$65,$66,$66,$20,$52,$61,$74,$63,$6C,$69,$66
       .byte $66,$20,$50,$61,$74,$20,$44,$75,$6C,$6F,$6E,$67,$20,$00,$00,$00
       .byte $80,$00,$00,$80,$01,$01,$01,$81,$01,$00,$81,$00,$01,$80,$02,$02
       .byte $02,$42,$42,$42,$47,$81,$01,$01,$80,$00,$00,$80,$01,$01,$01,$81
       .byte $01,$00,$81,$00,$01,$80,$02,$02,$01,$4A,$4E,$45,$45,$45,$8A,$0A
       .byte $80,$00,$00,$80,$01,$01,$01,$81,$01,$00,$81,$00,$01,$80,$02,$02
       .byte $02,$42,$42,$42,$47,$81,$01,$01,$80,$00,$00,$80,$01,$01,$01,$81
       .byte $01,$00,$81,$00,$01,$8A,$0A,$0A,$0A,$4A,$4E,$4E,$52,$54,$06,$06
       .byte $80,$00,$00,$00,$82,$02,$00,$01,$81,$04,$04,$04,$84,$04,$04,$84
       .byte $01,$01,$40,$40,$4F,$4F,$81,$01,$80,$00,$00,$80,$01,$01,$01,$81
       .byte $01,$00,$81,$00,$01,$80,$02,$02,$02,$42,$42,$42,$43,$81,$01,$01
       .byte $80,$00,$00,$00,$82,$02,$00,$01,$81,$04,$04,$04,$84,$04,$04,$84
       .byte $01,$01,$40,$40,$4F,$4F,$81,$01,$81,$04,$04,$04,$84,$04,$04,$84
       .byte $02,$42,$42,$42,$43,$81,$01,$01,$80,$00,$00,$00,$82,$02,$06,$06
       .byte $80,$00,$00,$80,$0A,$0A,$0A,$0A,$96,$16,$16,$16,$42,$42,$47,$80
       .byte $00,$00,$01,$01,$00,$00,$01,$01,$80,$40,$40,$53,$52,$45,$52,$0B
       .byte $0B,$0B,$0B,$0B,$80,$00,$00,$00,$0E,$0E,$0E,$0E,$0A,$0A,$0A,$8A
       .byte $96,$16,$16,$56,$4E,$53,$45,$45,$45,$52,$54,$45,$80,$00,$00,$00
       .byte $00,$00,$01,$01,$00,$00,$01,$01,$81,$01,$04,$04,$84,$04,$04,$84
       .byte $80,$01,$01,$01,$81,$00,$00,$40,$40,$53,$52,$45,$52,$81,$06,$06
       .byte $80,$00,$80,$40,$40,$53,$45,$0B,$0B,$0B,$0D,$0D,$0D,$0C,$0C,$0C
       .byte $80,$0C,$0C,$0C,$0C,$80,$00,$00,$80,$8A,$0A,$0A,$0A,$0A,$0A,$0A
       .byte $0A,$0A,$56,$41,$53,$45,$8E,$0E,$0E,$0E,$0E,$81,$01,$01,$01,$01
       .byte $84,$04,$04,$04,$04,$8A,$04,$8A,$04,$8A,$16,$16,$16,$16,$56,$41
       .byte $47,$43,$49,$49,$49,$43,$01,$81,$01,$01,$01,$00,$00,$00,$00,$01
       .byte $02,$02,$42,$42,$47,$43,$48,$43,$43,$49,$49,$43,$43,$40,$06,$06
       .byte $80,$00,$0A,$0A,$0A,$0A,$96,$16,$16,$16,$4E,$4E,$53,$45,$45,$52
       .byte $80,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$8A,$56,$41,$53,$52,$45,$52,$52
       .byte $54,$52,$8A,$0A,$8A,$16,$16,$16,$96,$4E,$4E,$53,$52,$52,$0B,$0B
       .byte $80,$00,$00,$00,$40,$40,$47,$43,$49,$49,$49,$49,$43,$80,$01,$80
       .byte $00,$00,$80,$00,$02,$42,$42,$53,$80,$04,$04,$04,$84,$04,$04,$80
       .byte $02,$02,$42,$42,$47,$43,$48,$43,$43,$49,$49,$43,$43,$40,$06,$06
       .byte $80,$00,$00,$40,$40,$53,$45,$80,$00,$00,$80,$40,$40,$53,$45,$80
       .byte $00,$00,$80,$40,$40,$53,$52,$45,$45,$45,$54,$45,$8A,$0A,$0A,$0A
       .byte $8A,$0A,$0A,$96,$16,$16,$16,$01,$81,$4E,$4E,$43,$80,$00,$40,$40
       .byte $47,$80,$00,$00,$00,$80,$00,$00,$84,$04,$04,$84,$40,$40,$53,$52
       .byte $45,$52,$52,$54,$52,$55,$52,$40,$42,$47,$80,$00,$80,$00,$40,$40
       .byte $53,$80,$0C,$0C,$0C,$80,$42,$42,$53,$80,$00,$00,$00,$00,$06,$06
       .byte $80,$00,$00,$02,$82,$02,$02,$82,$82,$02,$42,$42,$47,$82,$40,$40
       .byte $47,$80,$00,$00,$00,$81,$01,$01,$8A,$0A,$0A,$0A,$80,$00,$00,$00
       .byte $96,$16,$16,$56,$4E,$53,$45,$45,$45,$45,$54,$45,$55,$45,$80,$00
       .byte $00,$80,$00,$80,$00,$42,$42,$47,$80,$0B,$80,$0B,$80,$0B,$80,$00
       .byte $02,$42,$42,$47,$C0,$40,$47,$80,$02,$02,$82,$02,$02,$82,$02,$02
       .byte $82,$02,$00,$82,$00,$02,$02,$02,$42,$40,$53,$45,$45,$80,$06,$06
       .byte $80,$0A,$0A,$0A,$01,$81,$01,$01,$81,$00,$81,$00,$80,$00,$00,$00
       .byte $80,$40,$40,$53,$45,$45,$45,$52,$54,$52,$52,$80,$00,$00,$02,$02
       .byte $42,$42,$47,$48,$48,$43,$43,$09,$09,$49,$49,$49,$43,$51,$43,$80
       .byte $00,$04,$84,$04,$84,$04,$84,$04,$96,$04,$96,$04,$44,$40,$53,$52
       .byte $45,$52,$52,$54,$52,$55,$52,$45,$45,$52,$52,$54,$52,$80,$0C,$0C
       .byte $0C,$0C,$80,$00,$00,$80,$02,$42,$40,$53,$45,$45,$52,$80,$06,$06
       .byte $00,$FC,$40,$FC,$03,$04,$00,$00,$10,$FC,$40,$FC,$03,$00,$00,$00
       .byte $14,$FC,$40,$FC,$03,$04,$00,$00,$4A,$FC,$4A,$FC,$00,$84,$00,$00
       .byte $18,$FC,$40,$FC,$07,$00,$00,$00,$CB,$FC,$6E,$FC,$FF,$84,$00,$00
       .byte $BE,$FC,$40,$FC,$00,$04,$00,$00,$4A,$FC,$45,$FC,$FF,$84,$00,$00
       .byte $4A,$FC,$6E,$FC,$FF,$84,$00,$00,$4A,$FC,$7C,$FC,$03,$84,$00,$00
       .byte $BF,$FC,$34,$FC,$0F,$00,$00,$00,$00,$FC,$30,$FC,$03,$04,$00,$00
       .byte $00,$FC,$30,$FC,$0F,$04,$00,$00,$00,$FC,$30,$FC,$07,$04,$00,$00
       .byte $B6,$FC,$34,$FC,$07,$00,$00,$00,$BF,$FC,$BF,$FC,$0F,$84,$00,$00
       .byte $4A,$FC,$7C,$FC,$FF,$84,$00,$00,$4A,$FC,$58,$FC,$FF,$84,$00,$00
       .byte $CB,$FC,$4A,$FC,$00,$84,$00,$00,$CB,$FC,$45,$FC,$FF,$84,$00,$00
       .byte $CB,$FC,$7C,$FC,$FF,$84,$00,$00,$CB,$FC,$58,$FC,$FF,$84,$00,$00
       .byte $BF,$FC,$20,$FC,$0F,$00,$00,$00,$4C,$74,$F4,$4C,$EA,$F4,$A5,$F2
       .byte $C9,$F0,$D0,$23,$AD,$82,$02,$29,$02,$D0,$19,$A9,$00,$85,$F2,$85
       .byte $DD,$85,$DE,$85,$DF,$85,$EF,$85,$F1,$A9,$04,$85,$E0,$A9,$05,$85
       .byte $E2,$4C,$AF,$F4,$4C,$8E,$FE,$C9,$00,$10,$03,$4C,$D7,$F4,$A5,$AB
       .byte $29,$F0,$C9,$F0,$F0,$6D,$C9,$B0,$F0,$0C,$C9,$80,$F0,$BA,$C9,$50
       .byte $F0,$B9,$A5,$80,$D0,$2B,$A0,$00,$A5,$EC,$0A,$0A,$18,$65,$87,$38
       .byte $E9,$A5,$10,$01,$C8,$B9,$EA,$00,$C9,$84,$D0,$05,$A2,$01,$4C,$23
       .byte $F4,$A2,$00,$20,$97,$FE,$A9,$F0,$85,$AB,$A9,$40,$85,$B9,$4C,$5E
       .byte $F4,$A5,$0C,$10,$04,$A5,$0D,$30,$1C,$AD,$EE,$00,$F0,$17,$A2,$02
       .byte $20,$97,$FE,$A9,$80,$85,$AB,$A9,$78,$85,$B9,$A5,$8D,$38,$E9,$04
       .byte $85,$8D,$4C,$5E,$F4,$A5,$AB,$C9,$20,$D0,$03,$4C,$EA,$F4,$A9,$40
       .byte $85,$93,$60,$A5,$B9,$F0,$48,$C6,$B9,$A9,$00,$8D,$ED,$00,$8D,$EE
       .byte $00,$4C,$8E,$FE,$A5,$B9,$D0,$25,$A5,$8D,$18,$69,$04,$85,$8D,$A9
       .byte $50,$85,$AB,$A9,$03,$85,$B9,$F8,$AD,$ED,$00,$38,$E9,$20,$8D,$ED
       .byte $00,$AD,$EE,$00,$E9,$00,$8D,$EE,$00,$D8,$4C,$62,$F4,$C6,$B9,$A9
       .byte $85,$85,$AB,$A9,$00,$85,$9F,$4C,$62,$F4,$85,$93,$4C,$62,$F4,$C6
       .byte $E2,$A5,$E2,$10,$15,$A9,$F0,$85,$F2,$A9,$03,$85,$87,$A9,$00,$85
       .byte $E2,$85,$EA,$85,$EB,$85,$F3,$4C,$8E,$FE,$4C,$F8,$F4,$A9,$00,$8D
       .byte $EE,$00,$A9,$20,$8D,$ED,$00,$A9,$50,$85,$8D,$A9,$22,$85,$87,$A9
       .byte $00,$85,$AB,$A9,$40,$85,$93,$4C,$8E,$FE,$A5,$B9,$D0,$05,$85,$AB
       .byte $4C,$62,$F4,$C6,$B9,$4C,$62,$F4,$A5,$F0,$29,$07,$AA,$BD,$B5,$F6
       .byte $85,$C3,$BD,$BD,$F6,$85,$C4,$A4,$EF,$F0,$08,$88,$B1,$C3,$30,$03
       .byte $88,$D0,$F9,$84,$EF,$B1,$C3,$29,$7F,$85,$F3,$0A,$0A,$0A,$A8,$A2
       .byte $00,$B9,$00,$F3,$95,$C5,$C8,$E8,$E0,$05,$D0,$F5,$B9,$00,$F3,$A6
       .byte $F0,$D0,$07,$4A,$18,$69,$B2,$4C,$46,$F5,$A5,$F0,$29,$03,$18,$79
       .byte $00,$F3,$AA,$BD,$C5,$F6,$85,$EA,$A9,$2D,$85,$EC,$85,$E3,$85,$E4
       .byte $A0,$05,$A9,$00,$A2,$03,$99,$AB,$00,$96,$87,$99,$9F,$00,$88,$D0
       .byte $F5,$4C,$CD,$F4,$A5,$F2,$30,$4C,$C9,$01,$D0,$03,$4C,$1A,$F6,$A5
       .byte $AB,$C9,$F0,$F0,$3F,$A0,$03,$A5,$EE,$D0,$18,$A0,$01,$A5,$ED,$C9
       .byte $50,$10,$08,$A5,$BF,$29,$01,$D0,$2B,$A5,$ED,$C9,$75,$30,$01,$C8
       .byte $4C,$9E,$F5,$C9,$02,$F0,$06,$A5,$ED,$C9,$32,$30,$01,$C8,$84,$C2
       .byte $A5,$E1,$38,$E5,$C2,$30,$05,$85,$E1,$4C,$B4,$F5,$18,$69,$04,$85
       .byte $E1,$4C,$BF,$F5,$A5,$EC,$85,$E3,$A9,$30,$85,$E4,$4C,$F0,$FE,$E6
       .byte $EC,$A0,$01,$B9,$AB,$00,$29,$7F,$C9,$5F,$90,$09,$B9,$87,$00,$38
       .byte $E9,$04,$99,$87,$00,$C8,$C0,$06,$D0,$E9,$A5,$EC,$C9,$30,$F0,$03
       .byte $4C,$B4,$F5,$A9,$00,$85,$E3,$85,$EC,$A5,$EA,$85,$EB,$E6,$EF,$A5
       .byte $EF,$C9,$60,$D0,$3B,$A9,$00,$85,$EF,$85,$F3,$E6,$F0,$A5,$F0,$C9
       .byte $63,$D0,$04,$A9,$00,$85,$F0,$A9,$FF,$85,$F2,$A9,$00,$85,$F4,$85
       .byte $F6,$A9,$01,$85,$F7,$85,$F5,$4C,$B4,$F5,$A9,$00,$85,$F2,$A2,$02
       .byte $F8,$18,$B5,$DD,$75,$CA,$95,$DD,$CA,$10,$F7,$D8,$A9,$00,$85,$F1
       .byte $A5,$F0,$29,$07,$AA,$BD,$B5,$F6,$85,$D1,$BD,$BD,$F6,$85,$D2,$A4
       .byte $EF,$B1,$D1,$29,$7F,$85,$F3,$0A,$0A,$0A,$18,$69,$00,$85,$D3,$A9
       .byte $00,$69,$F3,$85,$D4,$A0,$04,$B9,$C5,$00,$99,$E5,$00,$B1,$D3,$99
       .byte $C5,$00,$88,$10,$F2,$A0,$05,$B1,$D3,$C9,$84,$D0,$05,$85,$EA,$4C
       .byte $8A,$F6,$A6,$F0,$D0,$07,$4A,$18,$69,$B2,$4C,$88,$F6,$A5,$F0,$29
       .byte $03,$18,$71,$D3,$AA,$BD,$C5,$F6,$85,$EA,$F8,$A9,$08,$18,$65,$DF
       .byte $85,$DF,$A9,$00,$65,$DE,$85,$DE,$A9,$00,$65,$DD,$85,$DD,$C5,$E0
       .byte $30,$0F,$A5,$E0,$18,$69,$04,$85,$E0,$A5,$E2,$C9,$06,$F0,$02,$E6
       .byte $E2,$D8,$4C,$B4,$F5,$00,$60,$C0,$20,$80,$E0,$40,$A0,$F0,$F0,$F0
       .byte $F1,$F1,$F1,$F2,$F2,$0E,$44,$E0,$2A,$E0,$B8,$B8,$34,$A9,$00,$85
       .byte $C4,$A2,$FE,$B5,$B3,$AA,$B5,$B3,$A8,$C9,$FF,$F0,$2B,$B9,$87,$00
       .byte $F0,$26,$B5,$87,$C9,$03,$F0,$20,$38,$F9,$87,$00,$C9,$0C,$B0,$13
       .byte $B5,$8D,$38,$F9,$8D,$00,$85,$C3,$10,$05,$49,$FF,$18,$69,$01,$C9
       .byte $08,$30,$0F,$98,$AA,$4C,$D6,$F6,$A5,$C4,$F0,$05,$A2,$06,$4C,$97
       .byte $FE,$60,$B5,$AB,$30,$ED,$B9,$AB,$00,$30,$E8,$A9,$60,$D5,$AB,$F0
       .byte $13,$D9,$AB,$00,$F0,$1E,$A9,$50,$D5,$AB,$F0,$10,$D9,$AB,$00,$F0
       .byte $1A,$4C,$52,$F7,$A9,$B0,$99,$AB,$00,$4C,$03,$F7,$A9,$C0,$99,$AB
       .byte $00,$4C,$03,$F7,$A9,$B0,$95,$AB,$4C,$03,$F7,$A9,$C0,$95,$AB,$4C
       .byte $03,$F7,$B5,$AB,$E0,$00,$F0,$12,$C9,$20,$F0,$0E,$B9,$AB,$00,$C0
       .byte $00,$F0,$07,$C9,$20,$F0,$03,$4C,$C4,$F7,$A9,$01,$85,$C4,$A9,$20
       .byte $95,$AB,$99,$AB,$00,$84,$C2,$B5,$A5,$29,$07,$A8,$B9,$F4,$F7,$95
       .byte $B9,$A4,$C2,$86,$C2,$B9,$A5,$00,$29,$07,$AA,$BD,$F4,$F7,$99,$B9
       .byte $00,$A6,$C2,$A9,$FA,$99,$9F,$00,$A9,$05,$95,$9F,$A5,$C3,$30,$12
       .byte $B5,$A5,$29,$07,$09,$50,$95,$A5,$B9,$A5,$00,$29,$07,$09,$A0,$4C
       .byte $E9,$F7,$B5,$A5,$29,$07,$09,$A0,$95,$A5,$B9,$A5,$00,$29,$07,$09
       .byte $50,$4C,$E9,$F7,$A5,$C3,$30,$12,$B5,$A5,$29,$07,$09,$28,$95,$A5
       .byte $B9,$A5,$00,$29,$07,$09,$D8,$4C,$E9,$F7,$B5,$A5,$29,$07,$09,$D8
       .byte $95,$A5,$B9,$A5,$00,$29,$07,$09,$28,$99,$A5,$00,$98,$AA,$B5,$B3
       .byte $A8,$4C,$03,$F7,$1E,$19,$0F,$2D,$1E,$1E,$1E,$1E,$00,$00,$00,$00
LF000: LDA    $F2     
       CMP    #$F0    
       BEQ    LF00A   
       CMP    #$01    
       BNE    LF011   
LF00A: LDX    #$00    
       STX    AUDV0   
       STX    AUDV1   
       RTS            

LF011: DEC    $F5     
       BEQ    LF021   
LF015: LDA    $F2     
       BNE    LF01C   
       JMP    LF263   
LF01C: DEC    $F7     
       BEQ    LF04C   
       RTS            

LF021: LDX    $F4     
LF023: LDA    $F2     
       BEQ    LF035   
       BMI    LF02F   
       LDA    LF219,X 
       JMP    LF046   
LF02F: LDA    LF249,X 
       JMP    LF046   
LF035: LDA    SWCHB   
       AND    #$08    
       BNE    LF043   
       LDA    #$00    
       STA    AUDV0   
       JMP    LF263   
LF043: LDA    LF122,X 
LF046: JSR    LF05F   
       JMP    LF015   
LF04C: LDX    $F6     
       LDA    $F2     
       BMI    LF058   
       LDA    LF231,X 
       JMP    LF05B   
LF058: LDA    LF256,X 
LF05B: JSR    LF0C6   
       RTS            

LF05F: CMP    #$FF    
       BNE    LF08B   
       LDX    #$00    
       LDA    $F2     
       BEQ    LF080   
       STX    AUDV0   
       STX    AUDV1   
       STX    $F2     
       STX    $F4     
       STX    $F6     
       CMP    #$FF    
       BNE    LF079   
       INC    $F2     
LF079: LDA    #$3C    
       STA    $F5     
       STA    $F7     
       RTS            

LF080: STX    $F4     
       LDA    #$01    
       STA    $F5     
       PLA            
       PLA            
       JMP    LF023   
LF08B: STA    $C3     
       AND    #$0F    
       TAX            
       LDA    LF114,X 
       TAY            
       AND    #$1F    
       STA    AUDF0   
       TYA            
       BMI    LF09F   
       LDA    #$04    
       BNE    LF0A1   
LF09F: LDA    #$0C    
LF0A1: STA    AUDC0   
       LDA    $C3     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0E    
       BCC    LF0B1   
       LDX    #$00    
       BEQ    LF0BB   
LF0B1: LDY    $F2     
       BEQ    LF0B9   
       LDX    #$09    
       BNE    LF0BB   
LF0B9: LDX    #$04    
LF0BB: STX    AUDV0   
       TAX            
       LDA    LF104,X 
       STA    $F5     
       INC    $F4     
       RTS            

LF0C6: CMP    #$FF    
       BNE    LF0D1   
       LDX    #$00    
       STX    AUDV1   
       STX    AUDV0   
       RTS            

LF0D1: STA    $C3     
       AND    #$0F    
       TAX            
       LDA    LF114,X 
       TAY            
       AND    #$1F    
       STA    AUDF1   
       TYA            
       BMI    LF0E5   
       LDA    #$04    
       BNE    LF0E7   
LF0E5: LDA    #$0C    
LF0E7: STA    AUDC1   
       LDA    $C3     
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0E    
       BCC    LF0F7   
       LDX    #$00    
       BEQ    LF0F9   
LF0F7: LDX    #$09    
LF0F9: STX    AUDV1   
       TAX            
       LDA    LF104,X 
       STA    $F7     
       INC    $F6     
       RTS            

LF104: .byte $05,$07,$08,$0D,$0F,$16,$1C,$1E,$3A,$06,$0E,$18,$38,$62,$01,$02
LF114: .byte $0D,$0F,$11,$12,$1B,$1F,$86,$87,$88,$8B,$8C,$8D,$8F,$9B
LF122: .byte $34,$F0,$44,$39,$F0,$49,$35,$F0,$45,$78,$34,$F0,$44,$39,$F0,$49
       .byte $35,$F0,$45,$7C,$34,$F0,$44,$39,$F0,$49,$35,$F0,$45,$44,$48,$37
       .byte $F0,$47,$42,$47,$44,$47,$62,$F0,$42,$76,$48,$43,$77,$44,$46,$78
       .byte $45,$47,$74,$39,$F0,$49,$44,$37,$F0,$47,$45,$48,$36,$F0,$46,$47
       .byte $43,$41,$40,$82,$F0,$52,$23,$78,$53,$26,$64,$F0,$54,$28,$77,$1C
       .byte $2B,$1A,$29,$15,$24,$18,$27,$58,$27,$76,$1B,$2A,$19,$25,$14,$28
       .byte $17,$26,$34,$F0,$44,$38,$F0,$48,$37,$F0,$47,$79,$48,$45,$44,$48
       .byte $44,$45,$79,$34,$F0,$04,$F0,$24,$39,$F0,$09,$F0,$29,$48,$44,$75
       .byte $34,$F0,$04,$F0,$24,$39,$F0,$09,$F0,$29,$44,$45,$79,$34,$F0,$04
       .byte $F0,$24,$39,$F0,$09,$F0,$29,$14,$28,$17,$26,$73,$34,$F0,$04,$F0
       .byte $24,$39,$F0,$09,$F0,$29,$48,$44,$75,$34,$F0,$04,$F0,$24,$39,$F0
       .byte $09,$F0,$29,$1A,$2B,$1A,$29,$75,$34,$F0,$04,$F0,$24,$39,$F0,$09
       .byte $F0,$29,$15,$24,$18,$27,$76,$33,$F0,$03,$F0,$23,$37,$F0,$07,$F0
       .byte $27,$12,$23,$16,$23,$62,$F0,$42,$43,$48,$47,$43,$46,$44,$48,$46
       .byte $47,$45,$44,$47,$44,$79,$72,$46,$48,$33,$F0,$43,$47,$44,$76,$48
       .byte $45,$37,$F0,$47,$44,$49,$FF
LF219: .byte $34,$E0,$94,$E0,$94,$E0,$34,$34,$34,$E0,$A8,$A4,$A8,$34,$E0,$94
       .byte $E0,$94,$E0,$B4,$E0,$F0,$A4,$FF
LF231: .byte $37,$E0,$97,$E0,$97,$E0,$37,$37,$37,$E0,$A6,$A7,$A6,$37,$E0,$97
       .byte $E0,$97,$E0,$B7,$E0,$F0,$A7,$FF
LF249: .byte $C7,$37,$A6,$A7,$A8,$C7,$A4,$A8,$A6,$A7,$A8,$D7,$FF
LF256: .byte $C4,$34,$A8,$A4,$A5,$C4,$A9,$A5,$A8,$A4,$A5,$D4,$FF
LF263: LDA    $F6     
       BNE    LF27E   
       LDA    #$07    
       STA    $C0     
       LDA    #$0F    
       STA    AUDC1   
       LDA    #$07    
       STA    AUDV1   
       LDX    $EE     
       LDA    LF27B,X 
       STA    AUDF1   
       RTS            

LF27B: .byte $1C,$1A,$18
LF27E: DEC    $F7     
       BNE    LF299   
       INC    $F6     
       LDX    $F6     
       LDA    LF2B0,X 
       CMP    #$FF    
       BNE    LF294   
       LDA    #$00    
       STA    AUDV1   
       STA    $F6     
       RTS            

LF294: LDA    LF376,X 
       STA    $F7     
LF299: LDX    $F6     
       LDA    LF2B0,X 
       STA    AUDF1   
       LDA    LF313,X 
       TAY            
       AND    #$0F    
       STA    AUDV1   
       TYA            
       LSR            
       LSR            
       LSR            
       LSR            
       STA    AUDC1   
       RTS            

LF2B0: .byte $00,$00,$0C,$00,$0A,$00,$09,$00,$07,$00,$06,$00,$05,$00,$04,$00
       .byte $03,$00,$02,$02,$0C,$00,$0A,$00,$09,$00,$0C,$00,$0A,$00,$09,$00
       .byte $0C,$00,$0A,$00,$09,$00,$FF,$13,$12,$11,$12,$13,$12,$15,$FF,$11
       .byte $11,$11,$11,$11,$FF,$09,$08,$07,$15,$13,$11,$0F,$04,$FF,$07,$FF
       .byte $17,$16,$17,$18,$18,$19,$1A,$1B,$1C,$1D,$1E,$1F,$1F,$1F,$1F,$FF
       .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
       .byte $12,$12,$FF
LF313: .byte $00,$00,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40
       .byte $4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40,$4F,$40
       .byte $4F,$40,$4F,$40,$4F,$40,$FF,$89,$8A,$8F,$8A,$89,$85,$83,$FF,$85
       .byte $89,$8F,$89,$85,$FF,$C5,$C5,$C5,$45,$45,$45,$45,$C5,$FF,$4D,$FF
       .byte $87,$89,$8A,$8C,$8F,$8D,$8B,$8A,$89,$88,$87,$86,$85,$83,$82,$FF
       .byte $85,$87,$89,$8A,$8C,$8F,$8D,$8B,$8A,$89,$88,$87,$86,$85,$84,$83
       .byte $82,$81,$FF
LF376: .byte $00,$00,$04,$01,$04,$01,$04,$01,$04,$01,$04,$01,$04,$01,$04,$01
       .byte $04,$01,$04,$0A,$04,$01,$04,$01,$04,$0A,$04,$01,$04,$01,$04,$0A
       .byte $04,$01,$04,$01,$04,$01,$FF,$03,$03,$08,$03,$03,$03,$03,$FF,$02
       .byte $02,$02,$02,$02,$FF,$03,$03,$03,$03,$03,$03,$03,$03,$FF,$11,$FF
       .byte $01,$01,$01,$01,$0A,$05,$05,$05
LF3BE: ORA    $05     
       ORA    $05     
       ORA    $05     
       ORA    $FF     
       ORA    ($01,X) 
       ORA    ($01,X) 
       ORA    ($0A,X) 
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
       .byte $04 ;.NOP
       .byte $04 ;.NOP
       .byte $FF ;.ISB
LF3D9: LDA    $F3     
       AND    #$7F    
       STA    $F3     
       AND    #$40    
       BEQ    LF3FA   
       LDA    $BF     
       AND    #$10    
       BNE    LF3FA   
       LDA    $C0     
       CMP    #$03    
       BEQ    LF3F4   
       LDX    #$03    
       JSR    LFE97   
LF3F4: LDA    $F3     
       ORA    #$80    
       STA    $F3     
LF3FA: LDX    #$00    
       LDA    $EA     
       CMP    #$84    
       BEQ    LF408   
       LDA    $EB     
       CMP    #$84    
       BNE    LF40A   
LF408: LDX    #$FF    
LF40A: STX    $D3     
       LDA    $B3     
       BNE    LF411   
       RTS            

LF411: LDX    #$FE    
       LDY    #$00    
LF415: LDA    $B3,X   
       STA.wy $00D7,Y 
       INY            
       TAX            
       CPY    #$06    
       BNE    LF415   
       LDA    $F0     
       BEQ    LF427   
       JSR    LF66E   
LF427: LDY    #$00    
LF429: STY    $C2     
       LDA.wy $00D7,Y 
       TAX            
       LDA    $A5,X   
       AND    #$07    
       STA    $C4     
       CPX    #$00    
       BNE    LF43C   
       JMP    LF511   
LF43C: LDA    $F2     
       BPL    LF443   
       JMP    LF588   
LF443: LDA    $AB,X   
       BEQ    LF451   
       CMP    #$10    
       BEQ    LF482   
       JMP    LF5E6   
LF44E: JMP    LF636   
LF451: LDA    $87,X   
       CMP    #$03    
       BNE    LF45A   
       JMP    LF522   
LF45A: LDA    $B9,X   
       BNE    LF480   
       LDA    $EE     
       BNE    LF469   
       LDA    #$10    
       STA    $A5,X   
       JMP    LF480   
LF469: LDA    $C4     
       CMP    #$01    
       BNE    LF480   
       LDY    #$05    
       LDA    $87,X   
       SEC            
       SBC    $87     
       BCC    LF47A   
       LDY    #$FB    
LF47A: STY    $9F,X   
       LDA    #$FF    
       STA    $B9,X   
LF480: DEC    $B9,X   
LF482: LDA    $80,X   
       BNE    LF49D   
       LDY    #$28    
       LDA    $8D,X   
       CMP    #$54    
       BCS    LF495   
       CMP    #$47    
       BCS    LF499   
       JMP    LF49B   
LF495: CMP    #$60    
       BCC    LF49B   
LF499: LDY    #$D8    
LF49B: STY    $A5,X   
LF49D: LDA    $D3     
       BPL    LF4B1   
       LDA    $C2     
       AND    #$01    
       BEQ    LF4AA   
       JMP    LF588   
LF4AA: LDA    #$70    
       STA    $AB,X   
       JMP    LF511   
LF4B1: LDA    $AB,X   
       CMP    #$10    
       BEQ    LF44E   
       LDA    $EF     
       CMP    #$5E    
       BCC    LF4C0   
       JMP    LF588   
LF4C0: LDY    $C2     
       CPY    #$02    
       BMI    LF4E6   
       LDA.wy $00D5,Y 
       TAY            
       LDA.wy $0087,Y 
       SEC            
       SBC    $87,X   
       CMP    #$18    
       BCS    LF4E6   
       LDA.wy $009F,Y 
       CMP    #$EC    
       BEQ    LF4DD   
       LDA    #$FA    
LF4DD: STA    $9F,X   
       LDA    #$19    
       STA    $B9,X   
       JMP    LF511   
LF4E6: LDY    $C2     
       CPY    #$04    
       BPL    LF511   
       LDA.wy $00D9,Y 
       TAY            
       LDA    $87,X   
       SEC            
       SBC.wy $0087,Y 
       CMP    #$18    
       BCS    LF511   
       LDA    $EE     
       BNE    LF502   
       LDA    #$10    
       BNE    LF50B   
LF502: LDA.wy $009F,Y 
       CMP    #$10    
       BEQ    LF50B   
       LDA    #$05    
LF50B: STA    $9F,X   
       LDA    #$19    
       STA    $B9,X   
LF511: LDA    $A5,X   
       ORA    $C4     
       STA    $A5,X   
       LDY    $C2     
       INY            
       CPY    #$06    
       BEQ    LF521   
       JMP    LF429   
LF521: RTS            

LF522: TXA            
       CLC            
       ADC    $BF     
       AND    #$1F    
       BNE    LF57B   
       LDY    $D7     
       LDA.wy $0087,Y 
       CMP    #$96    
       BCS    LF57B   
       LDA    $EA     
       CMP    #$84    
       BEQ    LF57B   
       LDA    #$06    
       CPX    #$05    
       BEQ    LF548   
       LDA    $8D,X   
       EOR    $C1     
       AND    #$03    
       CLC            
       ADC    #$01    
LF548: STA    $C4     
       TAY            
       LDA    LF6A3,Y 
       STA    $93,X   
       LDA    $EE     
       BNE    LF561   
       CPX    #$05    
       BEQ    LF57B   
       LDA    #$04    
       STA    $87,X   
       LDA    #$10    
       JMP    LF56B   
LF561: LDA    #$AD    
       STA    $87,X   
       LDA    #$50    
       STA    $8D,X   
       LDA    #$F0    
LF56B: STA    $9F,X   
       LDA    #$FF    
       STA    $B9,X   
       LDY    #$D8    
       LDA    $BF     
       BMI    LF579   
       LDY    #$28    
LF579: STY    $A5,X   
LF57B: JMP    LF511   
LF57E: LDA    #$00    
       STA    $A5,X   
       STA    $9F,X   
       LDA    $B9,X   
       BNE    LF599   
LF588: LDA    #$03    
       STA    $87,X   
       LDA    #$00    
       STA    $A5,X   
       STA    $9F,X   
LF592: LDA    #$00    
       STA    $AB,X   
       JMP    LF511   
LF599: DEC    $B9,X   
LF59B: LDA    #$00    
       STA    $A5,X   
       STA    $9F,X   
       LDA    $87,X   
       BMI    LF588   
       CMP    #$03    
       BMI    LF588   
       JMP    LF511   
LF5AC: CPX    #$05    
       BEQ    LF5B4   
       LDA    $80,X   
       BNE    LF605   
LF5B4: LDA    #$FF    
       STA    $F8     
       LDA    #$03    
       SED            
       CLC            
       ADC    $DE     
       STA    $DE     
       LDA    #$00    
       ADC    $DD     
       STA    $DD     
       LDA    $F1     
       CMP    #$99    
       BEQ    LF5D1   
       CLC            
       ADC    #$01    
       STA    $F1     
LF5D1: CLD            
LF5D2: STX    $C3     
       LDX    #$05    
       JSR    LFE97   
       LDX    $C3     
       LDA    #$F0    
       STA    $AB,X   
       LDA    #$40    
       STA    $B9,X   
       JMP    LF511   
LF5E6: CMP    #$F0    
       BEQ    LF57E   
       CMP    #$70    
       BEQ    LF59B   
       CMP    #$20    
       BEQ    LF5AC   
       CMP    #$B0    
       BEQ    LF5D2   
       CMP    #$C0    
       BEQ    LF5B4   
       CMP    #$60    
       BEQ    LF633   
       CMP    #$90    
       BEQ    LF61D   
       JMP    LF511   
LF605: LDA    $B9,X   
       BEQ    LF60E   
       DEC    $B9,X   
       JMP    LF511   
LF60E: LDY    #$28    
       LDA.wy $00A5,Y 
       BMI    LF617   
       LDY    #$D8    
LF617: TYA            
       STA    $A5,X   
       JMP    LF592   
LF61D: LDA    $B9,X   
       BEQ    LF62C   
       DEC    $B9,X   
       LDA    #$00    
       STA    $A5,X   
       STA    $9F,X   
       JMP    LF511   
LF62C: LDA    #$00    
       STA    $AB,X   
       JMP    LF511   
LF633: JMP    LF59B   
LF636: LDA    $BE     
       BEQ    LF63F   
       DEC    $BE     
       JMP    LF511   
LF63F: LDA    #$F4    
       STA    $98     
       LDY    $DC     
       LDA    #$60    
       STA.wy $00AB,Y 
       LDA    $8C     
       SEC            
       SBC    #$12    
       STA.wy $0087,Y 
       LDA    $92     
       STA.wy $008D,Y 
       LDA    #$07    
       STA.wy $00A5,Y 
       LDA    #$00    
       STA.wy $0093,Y 
       STA    $B0     
       LDA    #$81    
       STA    $8C     
       LDA    #$FC    
       STA    $A4     
       JMP    LF511   
LF66E: LDA    $B0     
       CMP    #$10    
       BEQ    LF6A2   
       LDA    $8C     
       CMP    #$82    
       BNE    LF6A2   
       LDY    $DC     
       LDA.wy $0087,Y 
       CMP    #$03    
       BNE    LF6A2   
       LDA    #$90    
       STA.wy $00AB,Y 
       LDA    #$23    
       STA.wy $00B9,Y 
       LDA    #$10    
       STA    $B0     
       LDA    #$00    
       STA    $98     
       LDA    #$1E    
LF697: STA    $BE     
       LDA    #$00    
       STA    $A4     
       LDX    #$04    
       JMP    LFE97   
LF6A2: RTS            

LF6A3: .byte $00,$0E,$FC,$B2,$9A,$80,$F4,$00,$21,$11,$01,$F1,$E1,$D1,$C1,$B1
       .byte $A1,$91,$72,$62,$52,$42,$32,$22,$12,$02,$F2,$E2,$D2,$C2,$B2,$A2
       .byte $92,$73,$63,$53,$43,$33,$23,$13,$03,$F3
LF6CD: .byte $E3 ;.ISB
       .byte $D3 ;.DCP
       .byte $C3 ;.DCP
       .byte $B3 ;.LAX
       .byte $A3 ;.LAX
       .byte $93 ;.SHA
       .byte $74 ;.NOP
       .byte $64 ;.NOP
       .byte $54 ;.NOP
       .byte $44 ;.NOP
       .byte $34 ;.NOP
       BIT    $14     
       .byte $04 ;.NOP
       .byte $F4 ;.NOP
       CPX    $D4     
       CPY    $B4     
       LDY    $94     
       ADC    $65,X   
       EOR    $45,X   
       AND    P1C1,X  
       ORA    $05,X   
       SBC    $E5,X   
       CMP    $C5,X   
       LDA    $A5,X   
       STA    $76,X   
       ROR    $56     
       LSR    P5C2    
       ROL    AUDC1   
       ASL    $F6     
       INC    $D6     
       DEC    $B6     
       LDX    $96     
       .byte $77 ;.RRA
       .byte $67 ;.RRA
       .byte $57 ;.SRE
       .byte $47 ;.SRE
       .byte $37 ;.RLA
       .byte $27 ;.RLA
       .byte $17 ;.SLO
       .byte $07 ;.SLO
       .byte $F7 ;.ISB
       .byte $E7 ;.ISB
       .byte $D7 ;.DCP
       .byte $C7 ;.DCP
       .byte $B7 ;.LAX
       .byte $A7 ;.LAX
       .byte $97 ;.SAX
       SEI            
       PLA            
       CLI            
       PHA            
       SEC            
       PLP            
       CLC            
       PHP            
       SED            
       INX            
       CLD            
       INY            
       CLV            
       TAY            
       TYA            
       ADC    $5969,Y 
       EOR    #$39    
       AND    #$19    
       ORA    #$F9    
       TXS            
       TXS            
       TXS            
       TXS            
       TXS            
       TXS            
       TXS            
       TXS            
LF72F: LDY    #$00    
LF731: LDA.wy $00AB,Y 
       AND    #$70    
       CMP    #$5F    
       BCS    LF743   
       LDA.wy $0087,Y 
       SEC            
       SBC    $E1     
       STA.wy $0087,Y 
LF743: INY            
       CPY    #$06    
       BEQ    LF74B   
       JMP    LF731   
LF74B: LDA    #$FA    
       STA    $CB     
       STA    $CD     
       LDY    #$05    
LF753: LDA.wy $00AB,Y 
       CMP    #$F0    
       BNE    LF777   
       LDA.wy $00B9,Y 
       LSR            
       LSR            
       LSR            
       TAX            
       LDA    LFEB5,X 
       STA.wy $0093,Y 
       LDX    #$00    
       LDA.wy $00B9,Y 
       CMP    #$1E    
       BPL    LF771   
       INX            
LF771: LDA    LF7BA,X 
       JMP    LF789   
LF777: LDA.wy $00A5,Y 
       AND    #$07    
       ASL            
       TAX            
       LDA    $BF     
       AND    LF7B4,Y 
       BNE    LF786   
LF785: INX            
LF786: LDA    LF7BC,X 
LF789: SEC            
       SBC.wy $0087,Y 
       STA.wy $0099,Y 
       DEY            
       BPL    LF753   
       LDA.w  $00AB   
       CMP    #$85    
       BNE    LF7B3   
       LDA.w  $00B9   
       CMP    #$5A    
       BPL    LF7B3   
       CMP    #$1E    
       BMI    LF7B3   
       LDA    $87     
       CLC            
       ADC    #$06    
       STA    $87     
       LDA    #$AC    
       SEC            
       SBC    $87     
       STA    $99     
LF7B3: RTS            

LF7B4: .byte $04,$08,$08,$08,$08,$08
LF7BA: .byte $C0,$D4
LF7BC: .byte $E8,$FC,$38,$4C,$60,$74,$10,$24,$10,$24,$10,$24,$88,$88,$D4,$D4
LF7CC: LDY    #$05    
       STY    $B1     
       LDX    #$FF    
       STX    $B3,Y   
       LDX    #$FE    
       DEY            
LF7D7: LDA    $B3,X   
       STX    $C2     
       TAX            
       LDA.wy $0087,Y 
       CMP    $87,X   
       BCC    LF7D7   
       STX    $B3,Y   
       LDX    $C2     
       STY    $B3,X   
       LDX    #$FE    
       DEY            
       BPL    LF7D7   
       LDY    #$00    
       LDX    #$FE    
LF7F2: INY            
       LDA    $B3,X   
       TAX            
       BNE    LF7F2   
       STY    $CE     
       RTS            

LF7FB: .byte $00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$10,$12,$BA,$EE,$AA,$3A,$A8
       .byte $BA,$FE,$BA,$B8,$10,$00,$00,$00,$00,$00,$00,$00,$00,$10,$90,$BA
       .byte $EE,$AA,$B8,$2A,$BA,$FE,$BA,$3A,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$41,$43,$67,$3D,$E6,$DA,$A6,$3C,$7E,$5A,$7E,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$82,$C2,$E6,$BC,$67,$5B,$65,$3C,$7E,$5A,$7E
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$DB,$3C,$FF,$24,$E7,$34,$FF
       .byte $24,$E7,$7E,$42,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$18,$FF,$3C
       .byte $E7,$24,$F7,$3C,$E7,$24,$7E,$42,$7E,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$7E,$C3,$C3,$C3,$C3,$C3,$7E,$18,$BD,$FF,$A5,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$92,$92,$BE,$BE,$FE,$FE,$A6
       .byte $A6,$A6,$A6,$24,$24,$3C,$3C,$65,$65,$7D,$7D,$7F,$7F,$7D,$7D,$59
       .byte $59,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$22,$48,$62,$34,$24,$10
       .byte $2C,$48,$34,$02,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$12,$BB,$1B
       .byte $FD,$BB,$22,$4D,$BB,$77,$81,$5A,$88,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$51,$7D,$7F,$65,$65,$24,$3C,$A6,$BE,$FE,$BE,$9A,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$92,$BE,$FE,$A6,$A6,$24,$3C,$65,$7D,$7F,$7D
       .byte $59,$00,$00,$00,$00,$00,$00,$00,$00,$10,$12,$BA,$EE,$AA,$3A,$A8
       .byte $BA,$FE,$BA,$B8,$10,$00,$00,$00,$00,$00,$00,$00,$00,$10,$90,$BA
       .byte $EE,$AA,$B8,$2A,$BA,$FE,$BA,$3A,$10,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$41,$43,$67,$3D,$E6,$DA,$A6,$3C,$7E,$5A,$7E,$3C,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$82,$C2,$E6,$BC,$67,$5B,$65,$3C,$7E,$5A,$7E
       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$DB,$3C,$FF,$24,$E7,$34,$FF
       .byte $24,$E7,$7E,$42,$7E,$00,$00,$00,$00,$00,$00,$00,$00,$18,$FF,$3C
       .byte $E7,$24,$F7,$3C,$E7,$24,$7E,$42,$7E,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$7E,$C3,$C3,$C3,$C3,$C3,$7E,$18,$BD,$FF,$A5,$18,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$92,$92,$BE,$BE,$FE,$FE,$A6
       .byte $A6,$A6,$A6,$24,$24,$3C,$3C,$65,$65,$7D,$7D,$7F,$7F,$7D,$7D,$59
       .byte $59,$00,$00,$00,$00,$00,$00,$00,$00,$0C,$22,$48,$62,$34,$24,$10
       .byte $2C,$48,$34,$02,$2A,$00,$00,$00,$00,$00,$00,$00,$00,$12,$BB,$1B
       .byte $FD,$BB,$22,$4D,$BB,$77,$81,$5A,$88,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$51,$7D,$7F,$65,$65,$24,$3C,$A6,$BE,$FE,$BE,$9A,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$92,$BE,$FE,$A6,$A6,$24,$3C,$65,$7D,$7F,$7D
       .byte $59,$00,$00,$00,$00,$90,$F0,$90,$B0,$90,$F0,$90,$B0,$90,$F0,$90
       .byte $B0,$90,$F0,$90,$B0,$F0,$F8,$FC,$F8,$F1,$FF,$F1,$FB,$F8,$FC,$FE
       .byte $FF,$FF,$FF,$FF,$FE,$00,$00,$00,$00,$00,$03,$03,$03,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$C0,$40,$C0,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$01,$01,$00,$00,$00,$00,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$1F,$1F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
       .byte $0F,$0F,$0F,$0F,$0F,$1F,$1F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$C0,$80,$80,$80,$C0
       .byte $E0,$E0,$E0,$E0,$F0,$F8,$FC,$FE,$FF,$FF,$FF,$FF,$FF,$FE,$FC,$F8
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
       .byte $F0,$F0,$00,$00,$00,$7E,$66,$66,$66,$66,$7E,$00,$7E,$18,$18,$18
       .byte $18,$78,$00,$7E,$60,$7E,$06,$66,$7E,$00,$7E,$06,$06,$7C,$06,$7E
       .byte $00,$06,$06,$7E,$66,$66,$66,$00,$7E,$66,$06,$7E,$60,$7E,$00,$7E
       .byte $66,$66,$7E,$60,$7E,$00,$20,$30,$18,$0C,$06,$7E,$00,$7E,$66,$66
       .byte $3C,$66,$7E,$00,$7E,$06,$7E,$66,$66,$7E,$00,$18,$18,$7E,$7E,$18
       .byte $18,$00,$3C,$66,$24,$66,$18,$1C,$36,$7F,$77,$77,$36,$1C,$E9,$AA
       .byte $AC,$AA,$E9,$00,$00,$00,$00,$00,$00,$00,$00,$00

START:
LFD67: SEI            
       CLD            
       LDX    #$00    
       TXA            
LFD6C: STA    $00,X   
       TXS            
       INX            
       BNE    LFD6C   
       LDA    #$FF    
       STA    $B2     
       LDA    #$01    
       STA    INPT2   
       STA    P1C2    
       LDX    #$05    
LFD7E: LDA    #$52    
       STA    $8D,X   
       STA    $80,X   
       LDA    LFE30,X 
       STA    $C5,X   
       LDA    #$03    
       STA    $87,X   
       DEX            
       BPL    LFD7E   
       LDA    #$00    
       STA    $CA     
       STA    SWACNT  
       STA    SWBCNT  
       LDA    #$B4    
       STA    $EA     
       LDA    #$22    
       STA    $87     
       LDA    #$02    
       STA    $F2     
       LDA    #$04    
       STA    $E2     
       STA    $E0     
       LDA    #$20    
       STA    $ED     
       LDA    #$2D    
       STA    $E3     
       STA    $E4     
       STA    $EC     
       LDA    #$01    
       STA    $F5     
       STA    $F7     
       LDA    #$FF    
       STA    INPT5   
LFDC2: STA    $02     
       LDA    #$02    
       STA    INPTCTRL
       LDA    #$23    
       STA    $0296   
       LDA    SWCHB   
       LSR            
       BCC    LFD67   
       INC    $BF     
       LDA    LFFE5   
       STA    $F9     
       JSR    LFEBD   
       JSR    LFE40   
       JSR    LF3BE   
       LDA    LFFE6   
       STA    $F9     
       JSR    LF000   
       JSR    LF3D9   
LFDEE: LDA    $0284   
       BPL    LFDEE   
       STA    $02     
       LDX    #$03    
       STX    $00     
LFDF9: STA    $02     
       DEX            
       BNE    LFDF9   
       STX    $00     
       LDA    #$2F    
       STA    $0296   
       JSR    LFF3F   
       JSR    LF72F   
       JSR    LF7CC   
       LDA    LFFE5   
       STA    $F9     
       JSR    LF6CD   
       LDA    LFFE4   
       STA    $F9     
       JSR    LF785   
       CLC            
LFE1F: LDA    $0284   
       BPL    LFE1F   
       JSR    LF503   
       JMP    LFDC2   
LFE2A: .byte $4C,$2A,$FE,$4C,$2D,$FE
LFE30: .byte $00,$FC,$40,$FC,$03,$07,$01,$00,$FF,$05,$03,$04,$FF,$06,$02,$FF
LFE40: LDA    $AB     
       CMP    #$20    
       BNE    LFE47   
       RTS            

LFE47: LDA    SWCHA   
       LSR            
       LSR            
       LSR            
       LSR            
       CMP    #$0F    
       BNE    LFE57   
       LDA    SWCHA   
       AND    #$0F    
LFE57: TAY            
       LDA    LFE30,Y 
       JMP    LFE6E   
LFE5E: .byte $38,$38,$00,$C8,$C8,$C8,$00,$38
LFE66: .byte $00,$10,$10,$10,$00,$EC,$EC,$EC
LFE6E: BMI    LFE8E   
       TAY            
       LDA    LFE5E,Y 
       STA    $A5     
       LDA    LFE66,Y 
       STA    $9F     
       CMP    #$10    
       BNE    LFE89   
       LDA    $87     
       CMP    #$54    
       BNE    LFE89   
       LDA    #$01    
       STA    $9F     
LFE89: LDA    #$00    
       STA    INPT3   
       RTS            

LFE8E: LDA    #$00    
       STA    $A5     
       STA    $9F     
       RTS            

LFE95: .byte $A5,$A5
LFE97: LDA    $F2     
       BEQ    LFE9C   
       RTS            

LFE9C: CPX    $C0     
       BPL    LFEAB   
       STX    $C0     
       LDA    LFEAC,X 
       STA    $F6     
       LDA    #$01    
       STA    $F7     
LFEAB: RTS            

LFEAC: .byte $3F,$4F,$01,$3D,$34,$26,$2E,$00,$3F
LFEB5: .byte $04,$64,$8A,$8F,$8C,$4E,$4C,$48
LFEBD: LDY    #$00    
LFEBF: LDA.wy $00AB,Y 
       AND    #$7F    
       CMP    #$5F    
       BCS    LFED1   
       LDA.wy $0087,Y 
       CLC            
       ADC    $E1     
       STA.wy $0087,Y 
LFED1: INY            
       CPY    #$06    
       BNE    LFEBF   
       LDA    $AB     
       CMP    #$85    
       BNE    LFEED   
       LDA    $B9     
       CMP    #$5A    
       BPL    LFEED   
       CMP    #$1E    
       BMI    LFEED   
       LDA    $87     
       SEC            
       SBC    #$06    
       STA    $87     
LFEED: JMP    LF564   
LFEF0: .byte $A5,$F2,$10,$07,$A9,$00,$85,$EE,$85,$ED,$60,$A5,$9F,$F0,$3F,$30
       .byte $24,$A5,$BF,$29,$01,$D0,$37,$A5,$EE,$C9,$02,$30,$06,$A5,$ED,$C9
       .byte $20,$F0,$0F,$F8,$A5,$ED,$18,$69,$02,$85,$ED,$A9,$00,$65,$EE,$85
       .byte $EE,$D8,$4C,$3E,$FF,$A5,$EE,$D0,$06,$A5,$ED,$C9,$21,$90,$0F,$F8
       .byte $A5,$ED,$38,$E9,$02,$85,$ED,$A5,$EE,$E9,$00,$85,$EE,$D8,$60
LFF3F: LDA    $C1     
       CLC            
       ADC    #$17    
       AND    #$1F    
       STA    $C1     
       LDX    #$0B    
LFF4A: CPX    #$06    
       BMI    LFF63   
       LDA    $9F,X   
       BPL    LFF5C   
       SEC            
       ROR            
       SEC            
       ROR            
       SEC            
       ROR            
       ASL            
       JMP    LFF65   
LFF5C: LSR            
       LSR            
       AND    #$FE    
       JMP    LFF65   
LFF63: LDA    $9F,X   
LFF65: BPL    LFF7C   
       CLC            
       EOR    #$FF    
       ADC    #$01    
       CLC            
       ADC    $C1     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
       EOR    #$FF    
       CLC            
       ADC    #$01    
       JMP    LFF84   
LFF7C: CLC            
       ADC    $C1     
       LSR            
       LSR            
       LSR            
       LSR            
       LSR            
LFF84: CLC            
       ADC    $87,X   
       CMP    LFFC5,X 
       BCC    LFF9F   
       CPX    #$06    
       BPL    LFF99   
       CPX    #$00    
       BEQ    LFF99   
       LDA    #$03    
       JMP    LFFA7   
LFF99: LDA    LFFC5,X 
       JMP    LFFA7   
LFF9F: CMP    LFFB9,X 
       BNE    LFFA7   
       CLC            
       ADC    #$01    
LFFA7: STA    $87,X   
       DEX            
       BPL    LFF4A   
       LDX    #$05    
LFFAE: LDY    $8D,X   
       LDA    LF697,Y 
       STA    $80,X   
       DEX            
       BPL    LFFAE   
       RTS            

LFFB9: .byte $20,$02,$02,$02,$02,$02,$15,$15,$15,$15,$15,$15
LFFC5: .byte $54,$AE,$AE,$AE,$AE,$AE,$8F,$8F,$8F,$8F,$8F,$8F,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04,$05,$06,$07
LFFE4: .byte $00
LFFE5: .byte $01
LFFE6: .byte $02,$10,$20,$21,$22,$23,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
       .byte $00,$00,$00,$00,$67,$FD,$67,$FD,$67,$FD
