class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.10.0.tar.gz"
  version "0.10.0"
  sha256 "d6daa15b6fc5326b55140120408f0ae7510d918623fc55acf298018150b6ab43"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
