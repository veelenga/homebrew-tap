class Dress < Formula
  desc "Cli app that makes your stdout fancy"
  homepage "https://github.com/veelenga/dress"
  url "https://github.com/veelenga/dress/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d7c3a193ad257282aefbbd864eb76f532c2e10fb78b5931970f2f1af425aa51e"
  head "https://github.com/veelenga/dress.git"

  depends_on "elixir" => :build

  def install
    system "mix deps.get"
    system "mix escript.build"
    bin.install "dress"
  end
end
