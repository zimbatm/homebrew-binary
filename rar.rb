require 'formula'

class Rar < Formula
  homepage 'http://www.rarlab.com'
  url 'http://www.rarlab.com/rar/rarosx-5.1.1.tar.gz'
  sha1 'f5d85e6cd14722f18bf504e9a560043bb548f267'

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
