require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.4.0'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.4.0_darwin_amd64.zip'
    sha256 '56454eca852aafb8700f640815d31568fe4a9005a0958745d89b53c39e95911f'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.4.0_darwin_386.zip'
    sha256 '19ebabaf4d28cceeca17f64d6874e1bba03039cdc2c4479c03e2ef766e224015'
  end

  def install
    bin.install Dir['*']
  end
end
