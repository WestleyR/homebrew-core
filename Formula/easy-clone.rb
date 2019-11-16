class EasyClone < Formula
  desc "tab completion helper script for git clone"
  homepage "https://github.com/WestleyR/easy-cline"
  head "https://github.com/WestleyR/easy-clone/archive/master.zip"

  def install
      system "./install.sh", "--prefix", "#{prefix}", "--etc-dir", "#{etc}", "--skip-check"
      ohai "
     
      PLEASE MAKE SURE TO ADD THE FOLLOWING LINES TO YOUR .bashrc file!!!

HOMEBREW_PREFIX=$(brew --prefix)

source ${HOMEBREW_PREFIX}/etc/bash_completion.d/hubget-complete.sh
export HUBGET_PREFIX=${HOMEBREW_PREFIX}/etc


"
  end

  test do
    system "#{bin}/hubget --version"
  end
end

