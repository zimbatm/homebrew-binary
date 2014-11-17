require "formula"

class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.4.1_darwin_amd64.zip"
  sha256 "957fe9ba27bbaf99539cd534db8ac8ec4c9fa1c6b3b4675d0c0eb3a7fbfb646c"
  version "0.4.1"

  depends_on :arch => :x86_64

  def install
    bin.install "consul"
  end

end
