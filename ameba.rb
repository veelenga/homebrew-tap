class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v0.14.3.tar.gz'
  version '0.14.3'
  sha256 '4fbb7758f26471204e88b62bf86ac796a9982bb3d9baca1506b6517bf84ddf41'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang' => :build


  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
    ohai 'Please support: https://www.patreon.com/veelenga'
  end
end
