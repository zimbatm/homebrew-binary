require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.4.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.4.1_darwin_amd64.zip'
    sha256 '1432211d9d3187e0ebc3e83f06a63120210e0c479ce981d269c744d382f0d514'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.4.1_darwin_386.zip'
    sha256 '80e2ef4146c27e763daa7f7e5fcb1f7ffe5a0127d82e8a95868059dc91cf3b77'
  end

  def install
    bin.install Dir['*']
  end
end
