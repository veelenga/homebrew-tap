class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v1.2.0.tar.gz'
  version '1.2.0'
  sha256 '7ede8cf0ef6a80d2b36943aee73401dfaed25d3f9ce3cf304046192053f25f20'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang'

  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
