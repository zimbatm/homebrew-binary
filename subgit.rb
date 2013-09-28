require 'formula'

class Subgit < Formula
  homepage 'http://subgit.com'
  url 'http://subgit.com/download/subgit-2.0.2.zip'
  sha1 'c6fb75b1f687c6b5b9b09cbc5e6bae6f137f06c6'

  def install
    inreplace "bin/subgit", 'TS_LIB="$BASEDIR"/lib', 'TS_LIB="$BASEDIR"/libexec'
    bin.install 'bin/subgit'
    libexec.install Dir['lib/*']
  end
end
