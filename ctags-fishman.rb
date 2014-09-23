require 'formula'

class CtagsFishman < Formula
  homepage 'https://github.com/fishman/ctags'
  head 'https://github.com/fishman/ctags.git'
  depends_on :autoconf
  conflicts_with 'ctags', :because => 'this formula installs the same executable as the regular ctags.'

  def install
    system "autoheader"
    system "autoconf"
    system "./configure",
           "--prefix=#{prefix}",
           "--enable-macro-patterns",
           "--mandir=#{man}",
           "--with-readlib"
    system "make install"
  end

  def caveats
    <<-EOS.undent
      Under some circumstances, emacs and ctags can conflict. By default,
      emacs provides an executable `ctags` that would conflict with the
      executable of the same name that ctags provides. To prevent this,
      Homebrew removes the emacs `ctags` and its manpage before linking.

      However, if you install emacs with the `--keep-ctags` option, then
      the `ctags` emacs provides will not be removed. In that case, you
      won't be able to install ctags successfully. It will build but not
      link.
    EOS
  end
end
