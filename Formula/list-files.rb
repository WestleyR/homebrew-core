class ListFiles < Formula
  desc "list some files"
  homepage ""
  url "https://github.com/WestleyR/list-files/archive/v1.5.3.tar.gz"
  sha256 "3af24b15934dc0c235bf6589958fe2c70b2746bc1d921c68701a9d8cdc395d39"

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
