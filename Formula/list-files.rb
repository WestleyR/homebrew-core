class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.2.2.tar.gz"
  sha256 "46376709b79d9b93b708e60a1486803a33a162c4ab5fce0c631e20cbcf4c66c8"

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
