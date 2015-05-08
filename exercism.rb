require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.1.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.1.0/exercism-mac-64bit.tgz"
    sha1 'b5f883b7aed16441da6fd64af385c8162555fb9b'
  else
    url "https://github.com/exercism/cli/releases/download/v2.1.0/exercism-mac-32bit.tgz"
    sha1 'dfceb9dfe15df403b38b4c9af2c179f572a00913'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
