require 'formula'

class Bowery < Formula
  homepage 'http://bowery.io'
  version '2.2.3'

  if Hardware.is_64_bit?
    url 'http://download.bowery.io/downloads/bowery_2.2.3_darwin_amd64.zip'
    sha1 '9e15ee579b1ad78615c2e103fb2efc2e32dd5a2a'
  else
    url 'http://download.bowery.io/downloads/bowery_2.2.3_darwin_386.zip'
    sha1 '948b39c8076c6c978d04e876f1ffcc00d19e584c'
  end

  def install
    bin.install 'bowery'
  end
end
