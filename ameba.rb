class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v0.13.3.tar.gz'
  version '0.13.3'
  sha256 'e725aa45a701b6f89409a69742ac0c17b9d15af0743b3be013ff1b6b82d685a2'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build


  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
