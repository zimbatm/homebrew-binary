require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.6.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.6.0/exercism-darwin-amd64.tgz"
    sha1 'eeebb6e6e40fdd16e5654abd5516c0edf435d1a9'
  else
    url "https://github.com/exercism/cli/releases/download/v1.6.0/exercism-darwin-386.tgz"
    sha1 '376da10cb601df70d9a4ae4e11c486c1b7df699b'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
