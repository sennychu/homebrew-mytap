require 'formula'

class Curl < Formula
  homepage 'http://curl.haxx.se/'
  url 'http://curl.haxx.se/download/curl-7.32.0.tar.gz'
  sha256 'c979fe2200fdef4219c75087b08b34aa580606a3bf7fc512b2e6b1f79e6a4e7c'

  option 'with-ssh', 'Build with scp and sftp support'
  option 'with-libmetalink', 'Build with Metalink support'
  option 'with-ares', 'Build with C-Ares async DNS support'
  option 'with-ssl', 'Build with Homebrew OpenSSL instead of the system version'
  option 'with-gnutls', 'Build with GnuTLS'
  option 'with-polarssl', 'Build with PolarSSL'
  option 'with-darwinssl', 'Build with Secure Transport for SSL support'

  depends_on 'pkg-config' => :build
  depends_on 'curl-ca-bundle' => :recommended
  depends_on 'libssh2' if build.with? 'ssh'
  depends_on 'libmetalink' if build.with? 'libmetalink'
  depends_on 'c-ares' if build.with? 'ares'
  depends_on 'openssl' if build.with? 'ssl'
  depends_on 'gnutls' if build.with? 'gnutls'
  depends_on 'polarssl' if build.with? 'polarssl'

  def install
    args = %W[
      --disable-debug
      --disable-dependency-tracking
      --prefix=#{prefix}
    ]

    args << "--with-ca-bundle=#{Formula.factory("curl-ca-bundle").opt_prefix}/share/ca-bundle.crt" if build.with? 'curl-ca-bundle'
    args << "--with-libssh2" if build.with? 'ssh'
    args << "--with-libmetalink" if build.with? 'libmetalink'
    args << "--enable-ares=#{Formula.factory("c-ares").opt_prefix}" if build.with? 'ares'
    args << "--with-ssl=#{Formula.factory("openssl").opt_prefix}" if build.with? 'ssl'
    args << "--with-darwinssl" if build.with? 'darwinssl'
    args << "--without-ssl" if build.with? 'gnutls' or build.with? 'polarssl'
    args << "--with-gnutls" if build.with? 'gnutls'
    args << "--with-polarssl" if build.with? 'polarssl'

    system "./configure", *args
    system "make install"
  end
end

