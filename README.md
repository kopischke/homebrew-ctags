# WARNING

**This tap is deprecated. The content of the _universal-ctags_ Formula has been merged into the [official ctags tap](https://github.com/universal-ctags/homebrew-universal-ctags) – please use that  instead.**

# ctags tap for Homebrew

The last *ctags* release on offer, 5.8, [dates from July 2009][1], and further development on the original repo would be surprising, to say the least. This repo makes [the most active, consistently updated fork of *ctags*][2] available as a tap in [Homebrew][3]. To use, do:

    brew install kopischke/ctags/universal-ctags --HEAD

## Caveat

As Universal ctags has no version scheme (yet), you **have** to use the `--HEAD` option when installing to get the fork – in Homebrew speak, the formula is “head only”. A plain `brew install universal-ctags` will fail.

[1]: http://ctags.sourceforge.net/
[2]: https://github.com/universal-ctags/ctags
[3]: https://github.com/Homebrew/homebrew
