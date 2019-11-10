class Clint < Formula
  desc "Convert tabs to spaces and spaces to tabs!"
  homepage "https://github.com/WestleyR/clint"
  url "https://github.com/WestleyR/clint/archive/v1.0.1.tar.gz"
  sha256 "2e1e45bd14e2b81493b04d20c9f31eeeff35ceddce1cfa01fb603ac7dd2e6fc6"

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/clint",  "--version"
  end
end

