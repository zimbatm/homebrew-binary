require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.8.2'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.8.2/exercism-mac-64bit.tgz"
    sha1 '2ef887286ab5b7be92cb754ae9adbd28c34e6335'
  else
    url "https://github.com/exercism/cli/releases/download/v1.8.2/exercism-mac-32bit.tgz"
    sha1 '8cd43e4838587969c688a9321acd97ed998bcd92'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
