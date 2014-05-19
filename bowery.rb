require 'formula'

class Bowery < Formula
  homepage 'http://bowery.io'
  url 'http://download.bowery.io/downloads/bowery_2.2.2_darwin_amd64.zip'
  version '2.2.2'
  sha1 '2edf51770a988174385da031d924c1741f3299d3'

  depends_on :arch => :x86_64

  def install
    bin.install 'bowery'
  end
end
