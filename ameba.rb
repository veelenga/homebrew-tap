class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v0.13.2.tar.gz'
  version '0.13.2'
  sha256 '7ae91a3e1b32cfed595db090ddea065dd177fb3591de9730606f9f32d340c180'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build


  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
