require 'formula'

class Guile < Formula
  homepage 'http://www.gnu.org/guile'
  url 'http://ftpmirror.gnu.org/guile/guile-1.8.8.tar.gz'
  sha1 '548d6927aeda332b117f8fc5e4e82c39a05704f9'

  def install
    system "./configure",# "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" 
  end
end
