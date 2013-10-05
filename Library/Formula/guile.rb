require 'formula'

class Guile < Formula
  homepage 'http://www.gnu.org/guile'
  url 'http://ftp.gnu.org/gnu/guile/guile-2.0.9.tar.gz'
  sha1 'fc5d770e8b1d364b2f222a8f8c96ccf740b2956f'

  depends_on 'pkg-config' => :build
  depends_on :libtool
  depends_on 'libffi'
  depends_on 'libunistring'
  depends_on 'gc'
  depends_on 'gmp'
  depends_on 'readline'
  
  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--with-libreadline-prefix=#{Formula.factory('readline').opt_prefix}"
    system "make"
    system "make check"
    system "make install"
  end
end
