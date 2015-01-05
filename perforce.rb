require "formula"

class Perforce < Formula
  homepage "http://www.perforce.com/"
  version "2014.2.978861"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r14.2/bin.macosx105x86_64/p4"
    sha256 "0d2ad21ecc03493a9b429907fb49209369ca09fd87340c03812dc1d1748dc562"
  else
    url "http://filehost.perforce.com/perforce/r14.2/bin.macosx105x86/p4"
    sha256 "8ae7ced60214bf9593d80ac89891f44224513a0c55ef21860b372151de767dd7"
  end

  def install
    bin.install "p4"
  end
end
