class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.2.1.tar.gz"
  sha256 "c418ec414baa3f668374f99cbdfc716ff1be363c0d6e60bd94390e2ac40f2a2d"

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
    system "make", "install", "PREFIX=#{prefix}"
  end
end
