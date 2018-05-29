class Ameba < Formula
  desc "A static code analysis tool for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.6.0.tar.gz"
  version "0.6.0"
  sha256 "9e2f99155fe580df8593db81ed6ff4578660dfa306bb01201a1b2de6769f12ff"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
