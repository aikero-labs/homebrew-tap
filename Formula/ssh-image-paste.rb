class SshImagePaste < Formula
  desc "Paste clipboard images to remote SSH servers from macOS"
  homepage "https://github.com/aikero-labs/ssh-image-paste"
  url "https://github.com/aikero-labs/ssh-image-paste/archive/refs/tags/1.0.1.tar.gz"
  sha256 "c9306434665fa1a191ab9dd43f7edb1f24cce099979be81b00fc2e261d8215ef"

  depends_on "pngpaste"
  depends_on :macos

  def install
    bin.install "ssh-image-paste"
  end

  test do
    assert_match "ssh-image-paste #{version}", shell_output("#{bin}/ssh-image-paste --version")
  end
end
