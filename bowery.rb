require 'formula'

class Bowery < Formula
  homepage 'http://bowery.io'
  version '2.3.3'

  if Hardware.is_64_bit?
    url 'http://dl.bintray.com/bowery/bowery/2.3.3_darwin_amd64.zip'
    sha1 'fd4c4e77d496bdd9a99b69c9f122bdfab9d9b688'
  else
    url 'http://dl.bintray.com/bowery/bowery/2.3.3_darwin_386.zip'
    sha1 'b7993a1900f917f63032176f9fe5d2bbd9a0acc3'
  end

  def install
    bin.install 'bowery'
  end
end
