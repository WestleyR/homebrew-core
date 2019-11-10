class Whereis < Formula
  desc "Whereis that works! for macOS (and linux)"
  homepage "https://github.com/WestleyR/whereis"
  url "https://github.com/WestleyR/whereis/archive/v1.0.1.tar.gz"
  sha256 "5454cbe8d9435ba575e9e9d336d175ba2db25d56be198e87da6d871095a2d779"

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/whereis", "sh"
  end
end

