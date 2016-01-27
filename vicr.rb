class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.3.1.tar.gz"
  version "0.3.1"
  sha256 "b7c477c49f7323f71c090c4d5bd9071b94b6ea177c64dac3b071e5fb0b30139d"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
