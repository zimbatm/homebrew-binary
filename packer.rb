require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.7.5'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.5_darwin_amd64.zip'
    sha256 'c0e149c4515fe548c1daeafabec3b4a091f2aa0c6936723382b3f6fe5a617880'
  else
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.5_darwin_386.zip'
    sha256 '72d57fe6a6ec2660dda2aed73198a4c4d9152037831d6aa44c64a28307c299c7'
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
