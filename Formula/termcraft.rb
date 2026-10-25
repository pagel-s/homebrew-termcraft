class Termcraft < Formula
  desc "Terminal pixel-art sandbox survival game"
  homepage "https://github.com/pagel-s/termcraft"
  version "0.2.0-beta.1"
  license "AGPL-3.0-only"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/pagel-s/termcraft/releases/download/v0.2.0-beta.1/termcraft-0.2.0-beta.1-aarch64-apple-darwin.tar.gz"
      sha256 "38affa47a83a043b2ad53844ce9654a1014f8fab565dab5fb449a7c436c224f3"
    end
    on_intel do
      url "https://github.com/pagel-s/termcraft/releases/download/v0.2.0-beta.1/termcraft-0.2.0-beta.1-x86_64-apple-darwin.tar.gz"
      sha256 "985182e09ddc93d2c2a7fde57527d5d71207d0d5b131d7f69e40deb4f33fb94c"
    end
  end

  def install
    bin.install "termcraft"
    doc.install "README.md", "RELEASE_NOTES.md", "LICENSE"
    pkgshare.install "docs", "hosting"
  end

  test do
    assert_equal "termcraft #{version}", shell_output("#{bin}/termcraft --version").strip
  end
end
