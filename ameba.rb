class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.7.0.tar.gz"
  version "0.7.0"
  sha256 "035d4d684021ce7cef6d1345152168eacd69f2a97c16ff0417c1cd2992a08634"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
