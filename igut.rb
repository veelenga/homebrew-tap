class Igut < Formula
  desc "Browse, preview, and copy media from the Insta360 GO Ultra over WiFi"
  homepage "https://github.com/veelenga/insta360-go-ultra-transfer"
  url "https://github.com/veelenga/insta360-go-ultra-transfer/releases/download/v0.1.0/insta360-go-ultra-transfer-0.1.0.tar.gz"
  sha256 "e05a52cabd8ec408dd6cd53dce08e0a522574aaf0b375148fb5c9312a5715ccb"
  license "MIT"

  depends_on "python@3.13"

  def install
    libexec.install "server.py", "go_ultra.py", "static"
    (bin/"igut").write <<~SH
      #!/bin/bash
      exec "#{Formula["python@3.13"].opt_bin}/python3.13" "#{libexec}/server.py" "$@"
    SH
  end

  def caveats
    <<~TEXT
      Connect to the camera's WiFi hotspot, run:
        igut
      then open http://127.0.0.1:8765
    TEXT
  end

  test do
    assert_path_exists libexec/"server.py"
  end
end
