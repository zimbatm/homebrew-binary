require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.8.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.8.0/exercism-mac-64bit.tgz"
    sha1 '233c2392289e1f9e202b907fa1b86328f5242cea'
  else
    url "https://github.com/exercism/cli/releases/download/v1.8.0/exercism-mac-32bit.tgz"
    sha1 '01adcd7711949139e1932a0185d4759ad643416e'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
