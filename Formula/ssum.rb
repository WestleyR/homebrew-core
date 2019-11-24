class Ssum < Formula
  desc "simple checksum program"
  homepage ""
  url "https://github.com/WestleyR/ssum/archive/v1.0.0.tar.gz"
  sha256 "82b6a45c705db37cb7681a7c851763aa3abc1d643a9c8c431e32647c16af9843"

  bottle do
    cellar :any
    rebuild 1
  end

  head do
    url "https://github.com/WestleyR/ssum.git"
    depends_on "libtool" => :build
    depends_on "gcc" => :build
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
