require "formula"

class PerforceServer < Formula
  homepage "http://www.perforce.com/"
  version "2015.1.1028542"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r15.1/bin.darwin90x86_64/p4d"
    sha256 "ab80895af14b491fe42650356fe632efcc186fb144d7dc1e4cd735da5cd7a794"
  else
    url "http://filehost.perforce.com/perforce/r15.1/bin.darwin90x86/p4d"
    sha256 "c646ffd0ffbf5b008d484cfe4bb578927e615c3a0b470d88e8e72920d14093d7"
  end

  def install
    bin.install "p4d"
    (var+"p4root").mkpath
  end

  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/p4d</string>
        <string>-p</string>
        <string>1666</string>
        <string>-r</string>
        <string>#{var}/p4root</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{var}/p4root</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/p4d.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/p4d.log</string>
    </dict>
    </plist>
    EOS
  end
end
