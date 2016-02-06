class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.4.0.tar.gz"
  version "0.4.0"
  sha256 "d2fc3ca306a6144c628b1d301a2ce8e3baa82706b2af4a590c196b2876ae03e5"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
