class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.8.0.tar.gz"
  version "0.8.0"
  sha256 "e5e2135a5d9bca3cbcbb31b73eede54d9edd88fa43eac7780ff05cb5ec732341"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
