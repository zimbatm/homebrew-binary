require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.5.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.5.1_darwin_amd64.zip'
    sha256 '56bec31f0d3540d566ef86979b25367660d7e72c010c9d87ef91c5c2138e9eae'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.5.1_darwin_386.zip'
    sha256 'a0d8db4944d0024af05e256357cad014662eddefef67b1b2fe8a5060659a5be2'
  end

  def install
    bin.install Dir['*']
  end
end
