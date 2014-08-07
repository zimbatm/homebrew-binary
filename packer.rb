require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.6.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/0.6.1_darwin_amd64.zip'
    sha256 '1ab1cf76be8ab1b953f0e634c96f8a09a9d17eb3d180b120b9d19afff2a94cb4'
  else
    url 'https://dl.bintray.com/mitchellh/packer/0.6.1_darwin_386.zip'
    sha256 'f941d12e5db1dc49665a9b62299df9f97b9dcb4b5dbabbbdf77211e46935aea5'
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
