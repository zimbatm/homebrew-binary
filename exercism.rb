require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.9.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.9.0/exercism-mac-64bit.tgz"
    sha1 '384d0f5776f1635e2c7eeff5477d9aa9db7ce11a'
  else
    url "https://github.com/exercism/cli/releases/download/v1.9.0/exercism-mac-32bit.tgz"
    sha1 '35ce83cdd7c532d2650abafe15f85312c738f50c'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
