class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.5.0.tar.gz"
  version "0.5.0"
  sha256 "3f6f1269842ac6eea79b5c62aa386669c757b46305ee856fadd1a40e71f2cfb1"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
