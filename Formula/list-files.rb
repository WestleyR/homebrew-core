class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.0.2.tar.gz"
  sha256 "cdea8a86da5f2c37efa210ed63547aa169151cec277ed8f0604dccf374c972a2"

  bottle do
    cellar :any
    rebuild 1
  end

  head do
    url "https://github.com/WestleyR/list-files.git"
    depends_on "libtool" => :build
    depends_on "gcc" => :build
  end

  def install
    system "make"
    system "mkdir", "-p","#{prefix}/bin"
    system "cp", "-f", "lf", "#{prefix}/bin/lf"
  end
end
