class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.1.0.tar.gz"
  sha256 "6c3b1d50ab74319d209819dca6c098776e6b5640b655d4adbe0dc9bb9b196edf"

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
    system "make", "install"
  end
end
