class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v0.12.1.tar.gz'
  version '0.12.1'
  sha256 '23ae1671cde9d32ebaeffe677ef5392c2e4c82c9cc5467b8954796898f8fd88d'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build


  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
