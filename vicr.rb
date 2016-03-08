class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.4.1.tar.gz"
  version "0.4.1"
  sha256 "49a8f0ce7ba89b9dcb2336894b4d003376f8a65fc38fc5137613e6a715e17904"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
