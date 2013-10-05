require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
#                /home7/tvctopin/Library/Contributions/example-formula.rb
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Mpc < Formula
  homepage ''
  url 'http://ftp.gnu.org/gnu/mpc/mpc-1.0.1.tar.gz'
  sha1 '8c7e19ad0dd9b3b5cc652273403423d6cf0c5edf'

  # depends_on 'cmake' => :build
 # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.j1  # if your formula's build system can't parallelize

    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test mpc`.
   # system "false"
 # end
end
