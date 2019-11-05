class Pac < Formula
  desc "print some files"
  homepage ""
  url "https://github.com/WestleyR/pac/archive/v1.0.0.tar.gz"
  sha256 "1b8e6857c2627396c4dc5a965c909a656bd2b1b9ef1a841ddcad1dc48abbec79"

  bottle do
    cellar :any
    rebuild 1
  end

  head do
    url "https://github.com/WestleyR/pac.git"
    depends_on "libtool" => :build
    depends_on "gcc" => :build
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
