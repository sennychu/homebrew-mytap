require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /home7/tvctopin/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Libtool < Formula
  homepage ''
  url 'http://pogma.com/libtool/libtool-2.4.3a.tar.gz'
  sha1 '08b9add229e6e5d41dc088f0f20535ccc68947ce'

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                         # "--program-prefix=g",
                          "--enable-ltdl-install"
    system "make install"
  end

  test do
    system "#{bin}/libtool", 'execute', '/home7/tvctopin/bin/gtrue'
  end
end
 