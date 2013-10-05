require 'formula'

class Mtools < Formula
  homepage 'http://ftp.gnu.org/gnu/mtools/'
  url 'ftp://ftp.gnu.org/gnu/mtools/mtools-4.0.18.tar.gz'
  sha1 'd703db71a409837a37db10a09ef63a35183f7565'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" 
  end
end
