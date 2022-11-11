![Cover Image](Images/cover.png "Cover image")

# TempleOS font

These are the converted TempleOS fonts. If you're unsure which file to install,
use the `.ttf`.

Made with [Bits n' Picas](https://github.com/kreativekorp/bitsnpicas) and lots
of work! Some work is needed, the 'r' is slightly misaligned, for example. Only
the `.ttf` has been tested.

All characters are mapped, see chart:

![Chart showing correctly mapped chars. "Unmapped" chars still exist in the font and can be found in the U+E000 Unicode block.](Images/map.png "Character chart.")


# Building

Run `make`.

Because [bitmapfont2otb](https://github.com/ctrlcctrlv/bitmapfont2otb) does a better job than the Bits n' Picas exporter, Bits n' Picas is only relied on for generation of the `.bdf` as of 11 November 2022.

You need `sfnt2woff` to make the `.woff` and `woff2_compress` to make the `.woff2`.
