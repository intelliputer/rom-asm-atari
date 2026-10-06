# Atari ROM Assembly Sources

This repository pairs an Atari ROM collection with DASM-compatible source files.
It currently contains 770 ROM images and one corresponding source file for each
image.

## Layout

- `roms/` — original cartridge images, retained as the reference binaries.
- `src/` — generated assembly sources. The filename matches its ROM, with the
  final extension changed to `.asm`.

## Source generation

Sources were generated with the neighbouring [distella](../distella) Atari
2600/7800 disassembler and are intended for use with the neighbouring
[DASM](../dasm) assembler.

- 591 standard-size images (2 KiB, 4 KiB, and supported 7800 sizes) are
  disassembled into labelled 6502 source, including Atari hardware equates.
- 179 images use nonstandard sizes or bank switching that distella cannot
  safely model as a single address space. Their source uses DASM `INCBIN` to
  preserve the exact image and is marked with a comment explaining that manual
  bank annotations are still needed for a semantic disassembly.

This avoids presenting a potentially incorrect flat disassembly of a
bankswitched cartridge as authoritative source.

## Assemble an image

Run DASM from the repository root. For example:

```sh
make -C ../dasm
mkdir -p build
../dasm/bin/dasm 'src/3D Tic-Tac-Toe (2).asm' -f3 -o'build/3d-tic-tac-toe.bin'
```

`-f3` emits a raw binary. A standard distella source should reproduce its
original ROM; `INCBIN` sources are byte-preserving by construction.

## Regenerating a standard disassembly

For a 2 KiB or 4 KiB Atari 2600 image:

```sh
../distella/distella -paf 'roms/Game.bin' > 'src/Game.asm'
```

Use `-paf7` for supported Atari 7800-sized images. distella's automatic
code/data decisions are a useful starting point, not a substitute for
per-game review—especially for indirect jumps and bankswitched cartridges.
