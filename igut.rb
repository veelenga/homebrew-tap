class Igut < Formula
  desc "Browse, preview, and copy media from the Insta360 GO Ultra over WiFi"
  homepage "https://github.com/veelenga/insta360-go-ultra-transfer"
  url "https://github.com/veelenga/insta360-go-ultra-transfer/releases/download/v0.1.0-beta/insta360-go-ultra-transfer-0.1.0-beta.tar.gz"
  sha256 "6821bdadad4678570f159d673706e78c6ad6365c6782785fcb28f3ebc1b4a89d"
  license "MIT"

  depends_on "python@3.13"

  def install
    libexec.install "cli.py", "server.py", "go_ultra.py", "transfer.py", "static"
    (bin/"igut").write <<~SH
      #!/bin/bash
      exec "#{Formula["python@3.13"].opt_bin}/python3.13" "#{libexec}/cli.py" "$@"
    SH
  end

  def caveats
    <<~TEXT
      Connect to the camera's WiFi hotspot, then:
        igut server        # web UI at http://127.0.0.1:8765
        igut ls            # list files on the camera
        igut download ...  # copy files to a local folder
    TEXT
  end

  test do
    assert_match "igut", shell_output("#{bin}/igut --help")
  end
end
