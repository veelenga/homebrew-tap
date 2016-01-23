class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "d33b89a8243ea0d277c93df5d6176dccec914079788a9b6d2eb71f71158d6595"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end

  test do
  end
end
