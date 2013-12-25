require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.5.0'

  if Hardware.is_64_bit?
    url 'https://github.com/exercism/cli/releases/download/v1.5.0/exercism-darwin-amd64.tgz'
    sha1 '9c1dc0104c0493799e8482eb4fbdad22ad53728a'
  else
    url 'https://github.com/exercism/cli/releases/download/v1.5.0/exercism-darwin-386.tgz'
    sha1 '13f2a135f1f3e41587066bf12150b68f4f924886'
  end

  def install
    bin.install "exercism"
  end

  test do
    assert_equal 'exercism version 1.5.0', `#{bin}/exercism -v`.strip
  end
end
