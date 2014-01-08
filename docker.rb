require 'formula'

class Docker < Formula
  homepage 'http://www.docker.io/'

  if MacOS.prefer_64_bit?
    url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.7.3.tgz'
    sha1 '7c3f07213010c414fe60b88d58d89181b7a7eed1'
  else
    url 'https://get.docker.io/builds/Darwin/i386/docker-0.7.3.tgz'
    sha1 '1f0449f70c3d11f2cd326ca380af31e35928dca2'
  end

  depends_on :arch => :intel

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end
