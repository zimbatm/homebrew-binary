require 'formula'

class Terraform < Formula
  homepage 'http://www.terraform.io'
  version '0.1.0'

  url 'https://dl.bintray.com/mitchellh/terraform/0.1.0_darwin_amd64.zip'
  sha256 '309aed0ed61586e2682f58b77781f8e9805745a5edd1aebcddf883c9f624a0b9'

  depends_on :arch => :x86_64

  def install
    bin.install Dir['*']
  end
end
