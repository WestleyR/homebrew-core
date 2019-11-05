class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.0.1.tar.gz"
  sha256 "f3d38a4eb265ebb2323a64eb82cbb98a4ea67613d0f6df69a1d9d2a6f76f683f"

  #url "https://github.com/WestleyR/list-files/archive/v1.0.0.tar.gz"
  #sha256 "ee183ef9c5aedf5374053855637ff27f9c66cabded18cf87c88a06bbaf01e28c"

  bottle do
    cellar :any
    rebuild 1
#    sha256 "null" => :catalina
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
