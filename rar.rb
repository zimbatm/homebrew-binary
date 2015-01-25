require 'formula'

class Rar < Formula
  homepage 'http://www.rarlab.com'
  url 'http://www.rarlab.com/rar/rarosx-5.2.0.tar.gz'
  sha1 '299942f885207bc2005a2dd35c881b13a64343ec'

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
