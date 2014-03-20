require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.6.0'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.6.0_darwin_amd64.zip'
    sha256 '2720b2a6b2d1ef083fa1aee5912d82915a92dc07f925ff0499ba5c21aa7c1da9'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.6.0_darwin_386.zip'
    sha256 'bfd150a1719e297ee9c560a3e7b59161c3ebcbe9cd6f077f14d37f105c09e0e7'
  end

  depends_on :arch => :intel

  def install
    bin.install Dir['*']
  end

  test do
    minimal = testpath/"minimal.json"
    minimal.write <<-EOS.undent
      {
        "builders": [{
          "type": "amazon-ebs",
          "region": "us-east-1",
          "source_ami": "ami-59a4a230",
          "instance_type": "m3.medium",
          "ssh_username": "ubuntu",
          "ami_name": "homebrew packer test - {{timestamp}}"
        }],
        "provisioners": [{
          "type": "shell",
          "inline": [
            "sleep 30",
            "sudo apt-get update"
          ]
        }]
      }
    EOS
    system "#{bin}/packer", "validate", minimal
  end
end
