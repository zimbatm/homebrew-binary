require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.2.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.2.0/exercism-mac-64bit.tgz"
    sha1 'c3062acb6edc82845b384bf411e55d762a57b01d'
  else
    url "https://github.com/exercism/cli/releases/download/v2.2.0/exercism-mac-32bit.tgz"
    sha1 '2371fdec3b1911f9650099b554a6e7b3302b3126'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
