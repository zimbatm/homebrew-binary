require 'formula'

class Rar < Formula
  url 'http://www.rarlab.com/rar/rarosx-5.0.1.tar.gz'
  homepage 'http://www.rarlab.com'
  sha1 '0f93f8abdacbf9e77273a056ada1bcd182118ba3'

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
