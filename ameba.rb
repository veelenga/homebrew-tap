class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.11.0.tar.gz"
  version "0.11.0"
  sha256 "08f2f3a47addb3e51a9e8478ade8bfa4b82a2561a2aa15fd1abe7b2f8713a303"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
