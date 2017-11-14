class Ameba < Formula
  desc "Code style linter for Crystal"
  homepage "https://github.com/veelenga/ameba"
  url "https://github.com/veelenga/ameba/archive/v0.2.0.tar.gz"
  version "0.2.0"
  sha256 "152c7ea139f0b24a857d02208fcdfd288db8cf79034852ab03283613ce4ae260"
  head "https://github.com/veelenga/ameba.git"

  depends_on "crystal-lang" => :build

  def install
    system "make"
    bin.install "bin/ameba"
  end
end
