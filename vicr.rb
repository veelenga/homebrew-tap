class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.4.2.tar.gz"
  version "0.4.2"
  sha256 "35c2be9db8517dc1809a4f1acf1c3fb5da5f83c4ba67e40c957263788549d7d4"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
