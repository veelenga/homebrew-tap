class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v1.3.1.tar.gz'
  version '1.3.1'
  sha256 '628156246e04928c52c8e81669910612ad9ef5370a3a2af7139c893c148fda2a'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang'

  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
