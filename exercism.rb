require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.0.1'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.0.1/exercism-mac-64bit.tgz"
    sha1 '0f4181178ffa74e2f12878cfc50b9d5a4032dfc0'
  else
    url "https://github.com/exercism/cli/releases/download/v2.0.1/exercism-mac-32bit.tgz"
    sha1 '5f27e1d43de7df79480bd374e06028968db13a53'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
