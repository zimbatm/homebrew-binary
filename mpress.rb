require 'formula'

class Mpress < Formula
  homepage 'http://www.matcode.com/mpress.htm'
  url 'http://www.matcode.com/mac-mpress.tar.gz'
  sha1 '1ce0b7f97b081b67abdef6ab1ecb11b1b9296a9e'
  version '1.21'

  depends_on :arch => :intel

  def install
    bin.install "mmpress" => "mpress"
  end
end
