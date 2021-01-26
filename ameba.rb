class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v0.13.4.tar.gz'
  version '0.13.4'
  sha256 '9da78230eb5d49370b106f998f30c78de1253a2c04742658153ba33bf6f201d2'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build


  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
