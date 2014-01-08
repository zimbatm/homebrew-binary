require 'formula'

class Docker < Formula
  homepage 'https://www.docker.io/'

  if MacOS.prefer_64_bit?
    url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.7.4.tgz'
    sha1 '4503c6f762cdc8310e3bb43babbb7f90b45697f7'
  else
    url 'https://get.docker.io/builds/Darwin/i386/docker-0.7.4.tgz'
    sha1 'b21bfc0eafddcadd40218c138ec4a4272adc7e93'
  end

  depends_on :arch => :intel

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end
