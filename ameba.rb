class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.10.1.tar.gz"
  version "0.10.1"
  sha256 "9c066ff9983ac6607b527f6004dd024be025cd1b2573faf78258cf071e22ffe4"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
