require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.7.0'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.0_darwin_amd64.zip'
    sha256 '9866e16075a6dced7afb22cf151dd85062cc5a538cb5d5a3a3bfbe4e3f5ed2e6'
  else
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.0_darwin_386.zip'
    sha256 'c80292822fc8d4bfd8ef61f1f1226efeff8bb1f6e903c0c66bc2472f3cf4ff07'
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
