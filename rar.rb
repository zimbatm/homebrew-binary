require 'formula'

class Rar < Formula
  homepage 'http://www.rarlab.com'
  url 'http://www.rarlab.com/rar/rarosx-5.1.0.tar.gz'
  sha1 '819ce9205816c8a3c1365ea75ea49ed515271b18'

  resource 'man' do
    url 'http://manpages.ubuntu.com/manpages.gz/trusty/man1/rar.1.gz'
    sha1 'f3feaef47d7dfa5a3a8372153c743921ed3eda51'
  end

  def install
    bin.install 'rar', 'unrar'
    lib.install 'default.sfx'
    etc.install 'rarfiles.lst'
    doc.install 'acknow.txt', 'license.txt', 'order.htm', 'rar.txt', 'readme.txt', 'whatsnew.txt'
    man1.install resource('man')
  end
end
