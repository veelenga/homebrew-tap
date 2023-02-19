class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v1.4.1.tar.gz'
  version '1.4.1'
  sha256 '63961d7c4d6145b185b5ee581e35ac6810a749934f5e2acbf1486f1d4eb76ca3'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang'

  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
