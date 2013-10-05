require 'formula'

class Growlnotify < Formula
  homepage 'http://growl.info'
  url 'http://growl.cachefly.net/GrowlNotify-2.1.zip'
  sha1 '7880af1e9e6b1fff1174afe39eeeb59e25cf2674'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install" 
  end
end
