class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.5.2_darwin_amd64.zip"
  sha256 "87be515d7dbab760a61a359626a734f738d46ece367f68422b7dec9197d9eeea"
  version "0.5.2"

  depends_on :arch => :x86_64

  def install
    bin.install "consul"
  end

  test do
    fork do
      system "#{bin}/consul", "agent", "-data-dir", "."
    end
    sleep 3
    system "#{bin}/consul", "leave"
  end
end
