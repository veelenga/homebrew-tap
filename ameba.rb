class Ameba < Formula
  desc 'A static code analysis tool for Crystal'
  homepage 'https://github.com/veelenga/ameba'
  url 'https://github.com/veelenga/ameba/archive/v1.5.0.tar.gz'
  version '1.5.0'
  sha256 'c8f9b6c7f832a8e939f8f30b83ef960c25f66a0927d6e6461f2d0b20f1880476'
  head 'https://github.com/veelenga/ameba.git'

  depends_on 'crystal-lang'

  def install
    system 'make'
    bin.install 'bin/ameba'
    ohai 'This tap is deprecated. Please use crystal-ameba/ameba tap instead❗️'
    ohai 'Thanks for using Ameba. Happy linting 🐞'
  end
end
