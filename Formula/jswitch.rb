class Jswitch < Formula
  desc "Fast Java version switcher written in Rust"
  homepage "https://github.com/m1ggle/jswitch"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/m1ggle/jswitch/releases/download/v0.1.0/jswitch-aarch64-apple-darwin.tar.gz"
      sha256 "97e72926dd4c59e18959bb82b8d97c1bbeb44b8459cfae5b76b624fc790c0b02"
    else
      url "https://github.com/m1ggle/jswitch/releases/download/v0.1.0/jswitch-x86_64-apple-darwin.tar.gz"
      sha256 "97e72926dd4c59e18959bb82b8d97c1bbeb44b8459cfae5b76b624fc790c0b02"
    end
  end

  def install
    bin.install "jswitch"
    generate_completions_from_executable(bin/"jswitch", "completion")
  end

  test do
    assert_match "jswitch", shell_output("#{bin}/jswitch --help")
  end
end
