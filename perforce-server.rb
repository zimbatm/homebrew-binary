require "formula"

class PerforceServer < Formula
  homepage "http://www.perforce.com/"
  version "2014.1.933132"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r14.1/bin.darwin90x86_64/p4d"
    sha256 "c7042e7e9872192dfa217a39a35b1e1443cd3ff50e9814e964d7c3a9fdf78e1b"
  else
    url "http://filehost.perforce.com/perforce/r14.1/bin.darwin90x86/p4d"
    sha256 "c504598a19994c49d16b07507e384b327676dd612ae43f4faa16410e83dc091a"
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
