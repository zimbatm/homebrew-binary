require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.6.2'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.6.2/exercism-darwin-amd64.tgz"
    sha1 '6934fc9fbda27f69cb80b4e5999f7f2c83220e11'
  else
    url "https://github.com/exercism/cli/releases/download/v1.6.2/exercism-darwin-386.tgz"
    sha1 'e32ce61bcd5aae81164a800f2aa75b8ef62b5ab3'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
