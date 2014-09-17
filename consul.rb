require "formula"

class Consul < Formula
  homepage "http://www.consul.io"
  url "https://dl.bintray.com/mitchellh/consul/0.4.0_darwin_amd64.zip"
  sha256 "87a1b0f37e773d92c939ca7dd6a50985acc4fb4aaec31384756ef896aef4035b"
  version "0.4.0"

  depends_on :arch => :x86_64

  def install
    bin.install "consul"
  end

end
