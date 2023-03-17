class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v1.4.3.tar.gz'
  version '1.4.3'
  sha256 'c42209a2e39f2f954776befc2a9ff441250390df1bcf8368a17150270ccf5c27'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang'

  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
