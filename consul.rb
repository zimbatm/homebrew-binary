class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.5.0_darwin_amd64.zip"
  sha256 "24d9758c873e9124e0ce266f118078f87ba8d8363ab16c2e59a3cd197b77e964"
  version "0.5.0"

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
