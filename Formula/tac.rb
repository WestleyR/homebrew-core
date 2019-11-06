class Tac < Formula
  desc "tac command for macOS (linux too)"
  homepage "https://github.com/WestleyR/tac"
  url "https://github.com/WestleyR/tac/archive/tac-1.0.0.tar.gz"
  sha256 "3432c365f721ec1285e0dfaf6f3fb2eed8fb2470aa364f1fb6a65d0b23228733"

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "echo", "Hello, world", ">", "test-file"
    system "#{bin}/tac", "test-file"
  end
end

