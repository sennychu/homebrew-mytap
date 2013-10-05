require 'formula'

class Cairo < Formula
  homepage 'http://cairographics.org/'
  url 'http://cairographics.org/releases/cairo-1.12.14.tar.xz'
  mirror 'https://downloads.sourceforge.net/project/machomebrew/mirror/cairo-1.12.14.tar.xz'
  sha256 '96d0d1e3f9b74d2ca3469ff187c5e5f25649b1ad35cf06f4f3a83847dff4ac13'

  depends_on 'pkg-config' => :build
  depends_on 'xz'=> :build
  # harfbuzz requires cairo-ft to build
#  depends_on 'freetype' 
  depends_on :libpng
  depends_on 'pixman'
  depends_on 'glib' => :recommended

  def install
    args = %W[
      --disable-dependency-tracking
      --prefix=#{prefix}
      --enable-xlib=no
      --enable-xlib-xrender=no
    ]

    if build.with? 'glib'
      args << '--enable-gobject=yes'
    else
      args << '--enable-gobject=no'
    end

    system "./configure", *args
    system "make install"
  end
end
