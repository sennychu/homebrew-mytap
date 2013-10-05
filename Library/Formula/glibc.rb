require 'formula'

class Glibc < Formula
  homepage 'http://www.gnu.org/glibc'
  url 'ftpmirror.gnu.org/gnu/glibc/glibc-2.18.tar.gz'
  sha1 '84dd76b6b6427d2bdcd6f73b5c56e71e4223606c'

  depends_on 'cmake' => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "cmake", ".", *std_cmake_args
   #  system "make", "install" 
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test glibc`.
    system "false"
  end
end
