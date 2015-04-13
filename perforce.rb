require "formula"

class Perforce < Formula
  homepage "http://www.perforce.com/"
  version "2015.1.1024208"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86_64/p4"
    sha256 "a8959d8431879ae87dfb7a3f02c5bb2b876ec6e883d695e93880e3e9cbcda0c7"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86/p4"
    sha256 "5b6ae9d2d09adc7ea8f410abda74b2ddb5c758672e2c8f7bd72416bb5ffd6abc"
  end

  def install
    bin.install "p4"
  end
end
