require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.5.1'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.5.1/exercism-darwin-amd64.tgz"
    sha1 '4d19db279ae6752b6032b2a9e96cfc53981eff8f'
  else
    url "https://github.com/exercism/cli/releases/download/v1.5.1/exercism-darwin-386.tgz"
    sha1 'cbe9697c1133e854832d620d52970fb3d198ba4f'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
