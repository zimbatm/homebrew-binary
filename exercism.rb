require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.7.2'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.7.2/exercism-mac-64bit.tgz"
    sha1 '5caa8f95fb50316df671c1c792cbcf7bc91297f2'
  else
    url "https://github.com/exercism/cli/releases/download/v1.7.2/exercism-mac-32bit.tgz"
    sha1 'cbe9697c1133e854832d620d52970fb3d198ba4f'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
