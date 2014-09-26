require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.7.3'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.7.3/exercism-mac-64bit.tgz"
    sha1 'b297d77ff236bb211e147ab6d8891b71bb93f556'
  else
    url "https://github.com/exercism/cli/releases/download/v1.7.3/exercism-mac-32bit.tgz"
    sha1 '9500fc5019002516814ee70da36f40741048154c'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
