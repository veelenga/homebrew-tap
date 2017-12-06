class Ameba < Formula
  desc "Code style linter for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "9b3eac9e404b0e543e490ffbb8ac5a6b5b1fef640856113c5ad8f08b804845a3"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
