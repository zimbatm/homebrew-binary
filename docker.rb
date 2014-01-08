require 'formula'

class Docker < Formula
  homepage 'http://www.docker.io/'
  url 'https://get.docker.io/builds/Darwin/x86_64/docker-0.7.3.tgz'
  sha1 '7c3f07213010c414fe60b88d58d89181b7a7eed1'

  depends_on :arch => :x86_64

  def install
    bin.install 'local/bin/docker'
  end

  test do
    system "#{bin}/docker"
  end
end
