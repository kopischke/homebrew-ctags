# ctags tap for Homebrew

The last *ctags* release on offer, 5.8, [dates from July 2009][1], and further development on the original repo would be surprising, to say the least. This repo makes [the most active, consistently updated fork of *ctags*][2] available as a tap in [Homebrew][3]. To use, do:

    brew tap kopischke/ctags
    brew install universal-ctags --HEAD

## Caveat

As the fishman fork has no version scheme, you **have** to use the `--HEAD` option when installing to get the fork – in Homebrew speak, the formula is “head only”. A plain `brew install universal-ctags` will fail.

[1]: http://ctags.sourceforge.net/
[2]: https://github.com/universal-ctags/ctags
[3]: https://github.com/Homebrew/homebrew
