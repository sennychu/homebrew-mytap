require 'formula'

class Gc < Formula
  homepage ''
  url 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/gc-7.2d.tar.gz'
  sha1 'b43573800e27361da78f05a2e98394521cfa04fc'


  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
