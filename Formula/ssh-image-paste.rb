class SshImagePaste < Formula
  desc "Paste clipboard images to remote SSH servers from macOS"
  homepage "https://github.com/aikero-labs/ssh-image-paste"
  url "https://github.com/aikero-labs/ssh-image-paste/archive/refs/tags/1.0.0.tar.gz"
  sha256 "9d2cd06e0a05d1e27791287377f86d05aade943da2c0f1d04e769aa7a401f9cf"

  depends_on "pngpaste"
  depends_on :macos

  def install
    bin.install "ssh-image-paste"
  end

  test do
    assert_match "ssh-image-paste #{version}", shell_output("#{bin}/ssh-image-paste --version")
  end
end
