class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "892eadb0fa9cf47fec8514d4306618f54ba7c22291e6db2890f5e46929441460"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
