class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.6.2.tar.gz"
  sha256 "56e6ab605cea0205a3bb061ccb15c71b0764b31983c2509b746637ea1bd7dee0"

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
