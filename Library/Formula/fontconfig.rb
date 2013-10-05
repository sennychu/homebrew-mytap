require 'formula'

class Fontconfig < Formula
  homepage 'http://fontconfig.org/'
  url 'http://fontconfig.org/release/fontconfig-2.10.93.tar.bz2'
  sha1 '78a87be2a59b0c803bfd69cdafc85cbc31381d3a'

  # depends_on :freetype
  depends_on 'pkg-config' => :build

  def install
    system "./configure", "--disable-dependency-tracking",
                          "--with-add-fonts=/root/share/X11/fonts,/root/fonts",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
