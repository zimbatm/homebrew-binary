require "formula"

class PerforceProxy < Formula
  homepage "http://www.perforce.com/"
  version "2014.1.895936"

  if MacOS.prefer_64_bit?
    url "http://filehost.perforce.com/perforce/r14.1/bin.darwin90x86_64/p4p"
    sha256 "75650424b9dd71686ab5723494d931a426ccc186defdc0c2ba187b8380782d60"
  else
    url "http://filehost.perforce.com/perforce/r14.1/bin.darwin90x86/p4p"
    sha256 "b3f5b2b248eadbab36197ffb5ab21de6058344c818b970a63a07753fe7466f3e"
  end

  def install
    bin.install "p4p"
    (var+"p4p").mkpath
  end

  def caveats; <<-EOS.undent
    To use the Perforce proxy to access your Perforce server, set your P4PORT
    environment variable to "localhost:1666".

    Before starting the proxy server, you probably need to edit the plist to use
    the correct host and port for your Perforce server (replacing the default
    perforce:1666).
    EOS
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
        <string>#{opt_bin}/p4p</string>
        <string>-p</string>
        <string>1666</string>
        <string>-r</string>
        <string>#{var}/p4p</string>
        <string>-t</string>
        <string>perforce:1666</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
      <key>WorkingDirectory</key>
      <string>#{var}/p4p</string>
    </dict>
    </plist>
    EOS
  end
end
