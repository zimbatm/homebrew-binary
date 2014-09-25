require "formula"

class Perforce < Formula
  homepage "http://www.perforce.com/"
  version "2014.1.821990"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r14.1/bin.macosx105x86_64/p4"
    sha256 "f8d5ec7382438f99daedb84c02c4fbee225939cc7a8a336635afb00543524d2e"
  else
    url "http://filehost.perforce.com/perforce/r14.1/bin.macosx105x86/p4"
    sha256 "f2998058c12d2f03e0831a501f744b9104f7b0f4e916c978dd94f96c5569a878"
  end

  def install
    bin.install "p4"
  end
end
