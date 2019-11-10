class Cwd < Formula
  desc "Print your current-working directory! Like 'pwd'"
  homepage "https://github.com/WestleyR/cwd"
  url "https://github.com/WestleyR/cwd/archive/v1.0.0.tar.gz"
  sha256 "97f0d41ec34755d9d3f40d9aeffa0b81af288200e7afabdfb278512e291f8b2f"

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/cwd"
  end
end

