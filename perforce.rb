class Perforce < Formula
  homepage "http://www.perforce.com/"
  version "2015.1.1024208"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86_64/p4"
    sha256 "21a87b9e44577a0530359a47e77725e097fb10b22a2eaf0beb8f9ebb099a65b8"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.macosx105x86/p4"
    sha256 "25f38e502ba98cc4b1103b8bdbdc7920a6d04d6262ffc68e2d06c01821576b9d"
  end

  def install
    bin.install "p4"
  end
end
