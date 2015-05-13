require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.1.1'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.1.1/exercism-mac-64bit.tgz"
    sha1 '4685b1628c87d14d64d6310c2fcb0346e4699561'
  else
    url "https://github.com/exercism/cli/releases/download/v2.1.1/exercism-mac-32bit.tgz"
    sha1 'e833ca6b9acf457888cc5a5a7e42433123c14462'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
