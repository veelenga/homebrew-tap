class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.9.0.tar.gz"
  version "0.9.0"
  sha256 "71b153ace698eab101beec83952d77128cdb37482a23b3d8a6602d8593aec195"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
