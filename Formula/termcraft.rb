class Termcraft < Formula
  desc "Terminal pixel-art sandbox survival game"
  homepage "https://github.com/pagel-s/termcraft"
  version "0.2.0"
  license "AGPL-3.0-only"
  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/pagel-s/termcraft/releases/download/v0.2.0/termcraft-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "13cfaee23baa82130d3c910f7a4b05a05608c1caf23c4863b76e9ee3811067c4"
    end
    on_intel do
      url "https://github.com/pagel-s/termcraft/releases/download/v0.2.0/termcraft-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "141720b40d604aac02e8fd897e812d1e00663e5669e8be8480f3e4f12b158a87"
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
