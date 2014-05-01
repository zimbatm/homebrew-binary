require "formula"

class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.2.0_darwin_amd64.zip"
  sha1 "fc39e649d246ea5e3c39269301fdf72ed1d2fd6b"
  version "0.2.0"

  depends_on :arch => :x86_64

  def install
    bin.install "consul"
  end

end
