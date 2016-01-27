class Vicr < Formula
  desc "Vim-like Interactive CRystal"
  homepage "https://github.com/veelenga/vicr"
  url "https://github.com/veelenga/vicr/archive/v0.3.0.tar.gz"
  version "0.3.0"
  sha256 "1407fddd6ef5ebd17ca45d451fb627dde19e5b756a3063787df4283a5cdbd8b2"
  head "https://github.com/veelenga/vicr.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "out/vicr"
  end
end
