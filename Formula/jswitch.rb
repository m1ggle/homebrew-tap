class Jswitch < Formula
  desc "Fast Java version switcher written in Rust"
  homepage "https://github.com/m1ggle/jswitch"
  version "0.1.1"
  license any_of: ["MIT", "Apache-2.0"]

  url "https://github.com/m1ggle/jswitch/releases/download/v0.1.1/jswitch-x86_64-apple-darwin.tar.gz"
  sha256 "84f3cc524ea36ca051ba6d2659b8c4a197eb5f2d387ebf6395aa25f82fcb33a4"

  def install
    bin.install "jswitch"
    generate_completions_from_executable(bin/"jswitch", "completion")
  end

  test do
    assert_match "jswitch", shell_output("#{bin}/jswitch --help")
  end
end
