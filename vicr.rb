class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.4.3.tar.gz"
  version "0.4.3"
  sha256 "349ec40ca9bbe4e669ca1d7bbb468c40de53980f4f3b740efb0fe6f5c7fec811"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
