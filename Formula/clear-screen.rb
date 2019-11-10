class CleanScreen < Formula
  desc "Clear your terminal screen"
  homepage "https://github.com/WestleyR/clean-screen"
  url "https://github.com/WestleyR/clean-screen/archive/v1.0.0.tar.gz"
  sha256 "3cab19d9fa8cda7145c302a259b4fcf2b7e43516a3035827e4b2219197e05126"

  # depends_on "cmake" => :build

  def install
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "#{bin}/clear-screen", "--help"
  end
end

