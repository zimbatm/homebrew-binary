require 'formula'

class Exercism < Formula
  homepage 'http://cli.exercism.io'
  version '1.7.0'

  if Hardware.is_64_bit?
    url "https://github.com/exercism/cli/releases/download/v1.7.0/exercism-darwin-amd64.tgz"
    sha1 '60fdf5a6a83074e59935561fdf23cbf1adad68ef'
  else
    url "https://github.com/exercism/cli/releases/download/v1.7.0/exercism-darwin-386.tgz"
    sha1 '11d310b9acd0aa85151d4ec2badf26a9128dcf18'
  end

  def install
    bin.install 'exercism'
  end

  test do
    assert_equal "exercism version #{version}", `#{bin}/exercism -v`.strip
  end
end
