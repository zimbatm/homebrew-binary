require 'formula'

class Packer < Formula
  homepage 'http://www.packer.io'
  version '0.7.1'

  if Hardware.is_64_bit?
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.1_darwin_amd64.zip'
    sha256 '10b266d9020b72ff09a38cd7b6b42a3ec4bd78b1b13a83e9a5c433d504378322'
  else
    url 'https://dl.bintray.com/mitchellh/packer/packer_0.7.1_darwin_386.zip'
    sha256 '198493bed2eb8676b8232418b49f95c1d8f7a197957c24f42aa67d030aa1ee0a'
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
