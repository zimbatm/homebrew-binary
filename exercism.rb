require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.0.2'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.0.2/exercism-mac-64bit.tgz"
    sha1 '43d86a28cfd61fd78a3a6da4cec7f4554845854b'
  else
    url "https://github.com/exercism/cli/releases/download/v2.0.2/exercism-mac-32bit.tgz"
    sha1 '875c252ce9fe4b807146d19af275b164284c7552'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
