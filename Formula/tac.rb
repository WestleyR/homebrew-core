class Tac < Formula
  desc "Linux tac for macOS (linux too)"
  homepage "https://github.com/WestleyR/tac"
  url "https://github.com/WestleyR/tac/archive/v1.0.0.tar.gz"
  sha256 "99700f042f969ca10de4e3ff3f172c75283e6c3d4b872e54a2265de780adffec"

  bottle do
    cellar :any
    rebuild 1
    # TODO: add precompiled
  end

  head do
    url "https://github.com/WestleyR/tac.git"
    depends_on "libtool" => :build
    depends_on "gcc" => :build
  end

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end
end
