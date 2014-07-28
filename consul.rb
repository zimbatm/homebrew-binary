require "formula"

class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.3.1_darwin_amd64.zip"
  sha1 "8f28c69bd15a99c2105cf2f5f35a564643054296"
  version "0.3.1"

  depends_on :arch => :x86_64

  def install
    bin.install "consul"
  end

end
