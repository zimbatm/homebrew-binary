require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '2.0.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v2.0.0/exercism-mac-64bit.tgz"
    sha1 '77a5839094fe77154e75e058b004d006c996464b'
  else
    url "https://github.com/exercism/cli/releases/download/v2.0.0/exercism-mac-32bit.tgz"
    sha1 '9f277b9ba9e5706dd50ba3c8c14e8df2fdf64dec'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism --version`.strip
  end
end
