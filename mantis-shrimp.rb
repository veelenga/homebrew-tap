class MantisShrimp < Formula
  desc "Menu bar app that watches your posture through the Mac camera"
  homepage "https://github.com/veelenga/mantis-shrimp"
  url "https://github.com/veelenga/mantis-shrimp/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "08102ae724ddfb14a763f5ed0ec5c98586e8dafdf9db7a9f49b6d2b77daa2a1f"
  license "MIT"
  head "https://github.com/veelenga/mantis-shrimp.git", branch: "main"

  depends_on macos: :sonoma

  def install
    ENV["VERSION"] = version.to_s
    ENV["SWIFT_BUILD_FLAGS"] = "--disable-sandbox"
    system "scripts/bundle.sh"
    prefix.install "build/MantisShrimp.app"
  end

  service do
    run [opt_prefix/"MantisShrimp.app/Contents/MacOS/MantisShrimp"]
    keep_alive crashed: true
    process_type :interactive
    log_path var/"log/mantis-shrimp.log"
    error_log_path var/"log/mantis-shrimp.log"
  end

  def caveats
    <<~EOS
      Start the app now and at every login:
        brew services start mantis-shrimp

      Leave the app's own "Launch at login" off; brew services already handles it.
      To find the app in Spotlight, link it into your Applications folder:
        ln -sf #{opt_prefix}/MantisShrimp.app ~/Applications/

      The app is signed ad hoc, so macOS asks for camera access again after each update.
    EOS
  end

  test do
    assert_path_exists prefix/"MantisShrimp.app/Contents/MacOS/MantisShrimp"
  end
end
