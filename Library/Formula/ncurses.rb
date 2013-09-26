require 'formula'

class Ncurses < Formula
  homepage 'http://www.gnu.org/s/ncurses/'
  url 'http://ftpmirror.gnu.org/ncurses/ncurses-5.9.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz'
  sha1 '3e042e5f2c7223bffdaac9646a533b8c758b65b5'

 
  option :universal

  def install
    ENV.universal_binary if build.universal?

    system "./configure", "--disable-debug",
                          "--prefix=#{prefix}",
                          "--mandir=#{man}",
                          "--with-shared",
                          "--enable-widec",
                          "--with-manpage-format=normal",
                          "--enable-symlinks"
    system "make"
    system "make install"
    make_libncurses_symlinks
  end

  def make_libncurses_symlinks
    major = version.to_s.split(".")[0]

    cd lib do
      %w{form menu ncurses panel}.each do |name|
        ln_s "lib#{name}w.#{major}.dylib", "lib#{name}.dylib"
        ln_s "lib#{name}w.#{major}.dylib", "lib#{name}.#{major}.dylib"
        ln_s "lib#{name}w.a", "lib#{name}.a"
        ln_s "lib#{name}w_g.a", "lib#{name}_g.a"
      end

      ln_s "libncurses++w.a", "libncurses++.a"
    end

    cd bin do
      ln_s "ncursesw#{major}-config", "ncurses#{major}-config"
    end
  end
end
