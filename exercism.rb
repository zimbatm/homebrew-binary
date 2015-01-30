require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.9.2'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.9.2/exercism-mac-64bit.tgz"
    sha1 '6923622cb4a03db154f7a0c950815c35aa7477e5'
  else
    url "https://github.com/exercism/cli/releases/download/v1.9.2/exercism-mac-32bit.tgz"
    sha1 '371f70be0c08d676ac2a6d6f1602f9e021e10ef8'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
