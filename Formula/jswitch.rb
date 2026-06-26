class Jswitch < Formula
  desc "Fast Java version switcher written in Rust"
  homepage "https://github.com/m1ggle/jswitch"
  version "0.1.0"
  license any_of: ["MIT", "Apache-2.0"]

  url "https://github.com/m1ggle/jswitch/releases/download/v0.1.0/jswitch-x86_64-apple-darwin.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  def install
    bin.install "jswitch"
    generate_completions_from_executable(bin/"jswitch", "completion")
  end

  test do
    assert_match "jswitch", shell_output("#{bin}/jswitch --help")
  end
end
