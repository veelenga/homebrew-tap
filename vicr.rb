class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.1.0.tar.gz"
  version "0.1.0"
  sha256 "71a31c3434d1c04d2ec0517a2a2ad992ad5ba26c84993dd96f2b3710ce28289f"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end

  test do
  end
end
