require 'formula'

class Autoconf < Formula
  homepage 'http://www.gnu.org/software/autoconf'
  url 'http://ftpmirror.gnu.org/autoconf/autoconf-2.69.tar.gz'
  mirror 'http://ftp.gnu.org/gnu/autoconf/autoconf-2.69.tar.gz'
  sha1 '562471cbcb0dd0fa42a76665acf0dbb68479b78a'

  def install
    ENV['PERL'] ='/home7/tvctopin/perl/bin/perl'

    # force autoreconf to look for and use our glibtoolize
    inreplace 'bin/autoreconf.in', 'libtoolize', 'glibtoolize'
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end

  test do
    cp "#{share}/autoconf/autotest/autotest.m4", 'autotest.m4'
    system "#{bin}/autoconf", 'autotest.m4'
  end
end
